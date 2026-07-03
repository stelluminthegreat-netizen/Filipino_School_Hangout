local class = {}
class.UIs = {}
local UI_Attributes = require(script.Parent.Parent.Data.UI_Attributes)
local UIsPath = game.ReplicatedStorage.UIs
class.__index = class

function class.new(UI: ui, rootUI: string)
	local self = setmetatable(UI_Attributes[UI.Name], class)
	class.UIs[self.UI.Name] = self
	self.RootUI = class.UIs[rootUI]
	return self
end

function class:Init()
	for _, eventName in self.EventNames do
		self.Events[eventName] = shared.Event.new()
		self.Connections[eventName] = self.Events[eventName]:Connect(self[eventName], self)
	end
	for _, funcName in self.Funcs do
		local func = self[funcName]
		if not func then continue end
		func(self)
	end
end

------------------------------ GENERAL METHODS ------------------------------

function class:Open()
	local eventName = "MouseButton1Down"
	self.Events[eventName] = self.UI.MouseButton1Down
	self.Connections[eventName] = self.Events[eventName]:Connect(Open, self)
end


------------------------------ PRIVATE FUNCTIONS ------------------------------
function Open(UI_Obj)
	local Prios = {}
	for _, folderName in UI_Obj.OpenUIs do
		local folder = UIsPath[folderName]
		if not folder then continue end
		UI_Obj.TargetFolders[folderName] = folder
	end

	for _, folder in UI_Obj.TargetFolders do
		for _, childUI in folder do
			local attributes = UI_Attributes[childUI.Name]
			local PrioNum = Prios[attributes.Prios.OpenPrio] 
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
	
end
return class
