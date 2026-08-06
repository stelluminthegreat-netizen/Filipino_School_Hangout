function ArrowSelectorClicked(self)
    local conn 
    conn = self.UI.MouseButton1Down:Connect(function()
        if not self.Connections[conn] then self.Connections[conn] = conn end
        local direction = self.Direction
        local RoleSelectorContainer = shared.UI.UIs.RoleSelectorContainer
        local event = RoleSelectorContainer.Events.ArrowClicked
        event:Fire(direction)
    end)
end

return {
    ["ArrowSelectorClicked"] = ArrowSelectorClicked
}