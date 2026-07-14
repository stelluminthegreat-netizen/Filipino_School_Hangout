local Templates = script.Parent.Parent.Data.CharacterTemplates
local Table = require(game.ReplicatedStorage.Shared.Libraries.Table)

local class = {}
class.__index = class

function class.new(className: string, character: model)
	local self = setmetatable(require(Templates[className]), class)
	self.Character = character
	self:Init()
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
end

function class:IncrementHealth(value: number)
	local humanoid = self.Character.Humanoid
	humanoid.Health += value
end

function class:DestroyUponDeath()
	local connection
	connection = self.Character.Humanoid.Changed:Connect(function()
		self.Connections[connection] = connection
		local humanoid = self.Character.Humanoid
		if self.Status.Destroying == true then return end
		if humanoid.Health <=0 then self.Status.Destroying = true self:Destroy() end
	end)
end

function class:Destroy()
	for _, connection in self.Connections do
		connection:Disconnect()
	end
	Table.DeepClean(self)
end

return class
