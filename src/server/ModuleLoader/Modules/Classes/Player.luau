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
	self:Init()

	return self
end

function class:Init()
	self.Data = DataManager.profiles[self.Player]
	self.ClassName = "Student"
	self.Character = shared.Character.new(self.ClassName, self.Player.Character)
	-- INITIALIZE EVENTS
	for _, name in self.EventNames do
		local event = shared.Event.new()
		self.Events[name] = event
	end

	-- INITIALIZE FUNCS
	for _, name in self.FuncNames do
		if not self[name] then continue end
		self[name](self)
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
	self.Connections.CharacterDestroyed = self.Character.Events.Destroyed:Connect(function() self:CharacterDestroyed() end)
end

return class
