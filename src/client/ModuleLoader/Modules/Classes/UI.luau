local class = {}
class.UIs = {}
local UI_Attributes = require(script.Parent.Parent.Data.UI_Attributes)
local UIsPath = game.ReplicatedStorage.UIs
local customTween = require(game.ReplicatedStorage.Shared.Libraries.CustomTween)
local deepCopyTable = require(game.ReplicatedStorage.Shared.Libraries.DeepCopyTable)
class.__index = class

function class.new(UI: ui, rootUI: string)
	local self = setmetatable(deepCopyTable.DeepClone(UI_Attributes[UI.Name]), class)
	self.UI = UI:Clone()
	class.UIs[self.UI.Name] = self
	self.RootUI = class.UIs[rootUI]
	self:Init()
	return self
end

function class:Init()
	if self.EventNames then
		for _, eventName in self.EventNames do
			self.Events[eventName] = shared.Event.new()
			self.Connections[eventName] = self.Events[eventName]:Connect(self[eventName], self)
		end
	end
	if self.Funcs then
		for _, funcName in self.Funcs do
			local func = self[funcName]
			if not func then continue end
			func(self)
		end
	end
	self.UI.Parent = game.Players.LocalPlayer.PlayerGui:FindFirstChild(self.Parent, true)
end

------------------------------ GENERAL METHODS ------------------------------

function class:Open()
	local eventName = "MouseButton1Down"
	self.Events[eventName] = self.UI.MouseButton1Down
	self.Connections[eventName] = self.Events[eventName]:Connect(function()
		Open(self)
	end)
end


------------------------------ PRIVATE FUNCTIONS ------------------------------
function Open(UI_Obj)
	for _, folderName in UI_Obj.OpenUIs do
		local folder = UIsPath[folderName]
		if not folder then continue end
		UI_Obj.TargetFolders[folderName] = folder
	end

	for _, folder in UI_Obj.TargetFolders do
		local Prios = {}
		for _, childUI in folder:GetChildren() do
			if class.UIs[childUI.Name] then continue end
			local attributes = UI_Attributes[childUI.Name]
			local PrioNum = attributes.Prios.OpenPrio
			UI_Obj.Delay = folder:GetAttribute("Delay")
			if not Prios[PrioNum] then Prios[PrioNum] = {} end
			Prios[PrioNum][childUI.Name] = childUI
		end
		for _, prio in Prios do
			for _, ui in prio do
				local newUI = class.new(ui, folder:GetAttribute("RootUI"))
				newUI.Events.Opened:Fire()
			end
		end
	end
end 

------------------------------ EVENT HANDLERS ------------------------------
function  class:Opened()
	task.wait(self.Delay)
	local animEvent = self.Events.Animate
	if animEvent then animEvent:Fire(self.Changes.OpenChanges) end
end

function  class:Animate(changes: table)
	customTween.ApplyProperties(self.UI, changes, self.AnimDuration)
end
return class
