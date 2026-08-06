function OnArrowClicked(self)
    self.Events.ArrowClicked = shared.Event.new()
    local event = game.ReplicatedStorage.Remotes.Events.RoleSelectionChanged
    event:FireServer("Student")
    local conn
    conn = self.Events.ArrowClicked:Connect(function(_, direction)
        if not self.Connections[conn] then self.Connections[conn] = conn end
        if direction == 1 then
            self.SelectionIndex +=1
            if self.SelectionIndex > self.Limits.MAX then self.SelectionIndex = self.Limits.MAX return end
            local selectionObj = shared.UI.UIs[self.CurrentSelection .. "Frame"]
            local nextCardName = self.CardNames[selectionObj.Index + 1]
            local nextSelectionObj = shared.UI.UIs[nextCardName .. "Frame"]

            selectionObj.State = "Swiped"
            nextSelectionObj.State = "Selected"

            self.CurrentSelection = nextCardName
            table.clear(self.ToAnimate)
            self.ToAnimate[selectionObj.UI.Name] = selectionObj
            self.ToAnimate[nextSelectionObj.UI.Name] = nextSelectionObj
        elseif direction == -1 then
            self.SelectionIndex -=1
            if self.SelectionIndex < self.Limits.MIN then self.SelectionIndex = self.Limits.MIN return end
            local selectionObj = shared.UI.UIs[self.CurrentSelection .. "Frame"]
            local prevCardName = self.CardNames[selectionObj.Index - 1]
            local prevSelectionObj = shared.UI.UIs[prevCardName .. "Frame"]

            selectionObj.State = "Behind"
            prevSelectionObj.State = "Selected"

            self.CurrentSelection = prevCardName
            table.clear(self.ToAnimate)
            self.ToAnimate[selectionObj.UI.Name] = selectionObj
            self.ToAnimate[prevSelectionObj.UI.Name] = prevSelectionObj
        end
        event:FireServer(self.CurrentSelection)
        Animate(self)
    end)
end

function Animate(self)
    local customtween = require(game.ReplicatedStorage.Shared.Libraries.CustomTween)
    for _, UIObject in self.ToAnimate do
        local frame = UIObject.UI
        local roleImage = frame.RoleCharacterDesign
        local roleName = frame.RoleName
        if UIObject.State == "Selected" then
            customtween.ApplyProperties(frame, {Transparency = 0.4, Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromScale(0.65,0.65)}, 0.5)
            customtween.ApplyProperties(roleImage, {ImageTransparency = 0}, 0.5)
            customtween.ApplyProperties(roleName, {TextTransparency = 0}, 0.5)
        elseif UIObject.State == "Swiped" then
            customtween.ApplyProperties(frame, {Transparency = 1, Position = UDim2.fromScale(1, 0.5), Size = UDim2.fromScale(0.65,0.65)}, 0.5)
            customtween.ApplyProperties(roleImage, {ImageTransparency = 1}, 0.5)
            customtween.ApplyProperties(roleName, {TextTransparency = 1}, 0.5)
        elseif UIObject.State == "Behind" then
            customtween.ApplyProperties(frame, {Transparency = 1, Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromScale(0.6,0.6)}, 0.5)
            customtween.ApplyProperties(roleImage, {ImageTransparency = 1}, 0.5)
            customtween.ApplyProperties(roleName, {TextTransparency = 1}, 0.5)
        end
    end
end

return 
{
    ["EventNames"] = {
        ["Closed"] = "Closed",
        ["Opened"] = "Opened",
        ["Animate"] = "Animate",
    },
    ["Changes"] = {
        ["CloseChanges"] = {
            ["Position"] = UDim2.fromScale(1.5, 0.5)
        },
        ["OpenChanges"] = {
            ["Position"] = UDim2.fromScale(0.85, 0.5)
        }
    },
    ["Debounce"] = {
        ["Closed"] = false,
        ["Opened"] = false
    },
    ["Events"] = {

    },
    ["Connections"] = {

    },
    ["Prios"] = {
        ["OpenPrio"] = 1,
        ["ClosePrio"] = 1
    },
    ["Children"] = {

    },
    ["Parent"] = "ScreenGui",
    ["AnimDuration"] = 0.5,


    -- Related to cards modification
    ["CardNames"] = {
        [1] = "Student",
        [2] = "Teacher",
        [3] = "Principal",
    },
    ["ToAnimate"] = {

    },
    ["Limits"] = {
        ["MAX"] = 3,
        ["MIN"] = 1
    },
    ["Funcs"] = {
        ["OnArrowClicked"] = OnArrowClicked
    },
    ["CurrentSelection"] = "Student",
    ["SelectionIndex"] = 1
}