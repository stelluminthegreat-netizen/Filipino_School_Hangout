local DataManager
local Table
local TemplatePath

local class = {}
class.__index = class
class.Players = {}

function class.start()
	DataManager = require(game.ServerScriptService.Server.Data.DataManager)
	Table = require(game.ReplicatedStorage.Shared.Libraries.Table)
	TemplatePath = script.Parent.Parent.Data.PlayerTemplate
end

function class.new(plr)
	local self = setmetatable(Table.DeepClone(require(TemplatePath)), class)
	self.Player = plr
	self.Name = plr.Name
	class.Players[self.Name] = self
	shared.Threads:Spawn(function() self:Init() end)

	return self
end

function class:Init()
	self.Data = DataManager.profiles[self.Player]
	self.ClassName = "Student"
	self.Character = shared.Character.new(self.ClassName, self.Player.Character)
	self.Character.Player = self
	-- INITIALIZE EVENTS
	for _, name in self.EventNames do
		local event = shared.Event.new()
		self.Events[name] = event
	end

	-- INITIALIZE FUNCS
	for _, name in self.FuncNames do
		if not self[name] then continue end
		shared.Threads:Spawn(function() self[name](self) end)
	end
end

function class:SwtichClass(name: string)
	self.ClassName = name
end

function class.WaitForPlayer(plr_name)
	local player
	while not player do
		task.wait()
		player = class.Players[plr_name]
	end
end

----------------------------------- EVENT HANDLERS -----------------------------------

function class:CharacterDestroyed()
	if self.Connections.CharacterDestroyed then self.Connections.CharacterDestroyed:Disconnect() end
	self.Character = shared.Character.new(self.ClassName, self.Player.CharacterAdded:Wait())
	self.Character.Player = self
	self.Connections.CharacterDestroyed = self.Character.Events.Destroyed:Connect(function() self:CharacterDestroyed() end)
end

function class:OnGameStateChanged()
	local GameStateChanged = game.ReplicatedStorage.Remotes.Events.GameStateChanged
	local conn
	conn = GameStateChanged.OnServerEvent:Connect(function(plr)
		local conns = self.Connections
		if not conns["GameStateListener"] then conns["GameStateListener"] = conn end
		if plr ~= self.Player then return end

		if self.Status.GameState == "InMainMenu" then
			self.Status.GameState = "InGame"
			self:SetSpawn(CFrame.new(Vector3.new(-5, 15, 0)))
			self.Character:Kill()
		elseif self.Status.GameState == "InGame" then
			self.Status.GameState = "InMainMenu"
			self.Character:Kill()
			self:SetSpawn(CFrame.new(Vector3.new(5, 15, 0)))
		end
		print("Game state:", self.Status.GameState)
	end)
end

----------------------------------- APIs -----------------------------------

function class:SetSpawn(cFrame: CFrame)
	self.SpawnPoint = cFrame
end

return class
