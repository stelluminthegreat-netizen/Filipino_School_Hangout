local Templates = script.Parent.Parent.Data.CharacterTemplates
local Table = require(game.ReplicatedStorage.Shared.Libraries.Table)

local class = {}
class.__index = class

function class.new(className: string, character: model)
	local self = setmetatable(Table.DeepClone(require(Templates[className])), class)
	self.Character = character
	shared.Threads:Spawn(function() self:Init() end)
	return self
end

function class:Init()
	-- INITIALIZE EVENTS
	for _, name in self.EventNames do
		if self.Events[name] then continue end
		local event = shared.Event.new()
		self.Events[name] = event
	end

	-- CALL INITIAL FUNCS
	for _, name in self.FuncNames do
		if not self[name] then continue end
		self[name](self)
	end
	self:WaitForPlayer()
	self:Teleport(self.Player.SpawnPoint)
end

function class:IncrementHealth(value: number)
	local humanoid = self.Character.Humanoid
	humanoid.Health += value
end

function class:Teleport(cFrame: CFrame)
	self.Character:SetPrimaryPartCFrame(cFrame)
end

function class:WaitForPlayer()
	while not self.Player do
		task.wait()
	end
end

function class:Kill()
	local humanoid = self.Character.Humanoid
	humanoid.Health -= humanoid.Health
end

function class:DestroyUponDeath()
	local connection
	connection = self.Character.Humanoid.Changed:Connect(function()
		if self.Status.Destroying == true then return end
		if not self.Connections[connection] then self.Connections[connection] = connection end
		local humanoid = self.Character.Humanoid
		if humanoid.Health <=0 then self:Destroy() end
	end)
end

function class:Destroy()
	if self.Status.Destroying == true then return end
	self.Status.Destroying = true
	self.Events.Destroyed:Fire()
	for _, connection in self.Connections do
		connection:Disconnect()
	end
	Table.DeepClean(self)
end

return class
