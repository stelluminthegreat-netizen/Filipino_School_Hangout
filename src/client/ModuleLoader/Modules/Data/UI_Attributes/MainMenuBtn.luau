return 
{
    ["FrameWorkFuncs"] = {
        [1] = "Open",
        [2] = "Close",
        [3] = "OnMainMenuClicked",
        [4] = "ShowTextOnMouseHover"
    },
    ["GameFuncs"] = {

    },
    ["Funcs"] = {
        ["OnMainMenuClicked"] = function(self, necesseties)
            if self.Connections.OnMainMenuClicked then return end
            local conn
            conn = self.UI.MouseButton1Down:Connect(function()
            if not self.Connections.OnMainMenuClicked then self.Connections["OnMainMenuClicked"] = conn end
            local player = game.Players.LocalPlayer
            local Player = shared.Player
            local playerObj = Player.Players[player.Name]
            playerObj.Status.InMainMenu = false
            playerObj.Events.Changed:Fire("GameState")

            
            local cam = game.Workspace.CurrentCamera
            cam.CameraType = Enum.CameraType.Scriptable
            local lookAt = Vector3.new(0, 20, 0)
            local at = Vector3.new(0, 30, 0)
            local tween = necesseties.Camera.TweenedCFrameModification(cam, CFrame.lookAt(at, lookAt), 2)
            tween.Completed:Wait()
            tween:Destroy()
	        end)
        end
    },
    ["EventNames"] = {
        [1] = "Opened",
        [2] = "Closed",
        -- [3] = "Animate"
    },
    ["OpenUIs"] = {
        [1] = "MainMenuUserProfile",
        [2] = "MainMenuHeader",
        [3] = "MainMenuBackground",
        [4] = "PlayGameFrame",
        [5] = "ServersBtnFrame",
        [6] = "SettingsBtnFrame",
        [7] = "RoleSelectorContainer",
    },
    ["CloseUIs"] = {
        [1] = "MainMenuFrame",
        -- [2] = "InGameSettingsBtn",
        -- [3] = "InGameShopBtn"
    },
    ["Debounce"] = {
        ["Opened"] = false,
        ["Closed"] = false
    },
    ["Events"] = {

    },
    ["Connections"] = {

    },
    ["Prios"] = {
        ["OpenPrio"] = 2,
        ["ClosePrio"] = 1
    },
    ["TargetFolders"] = {

    },
    ["ShowTextOnHover"] = "MainMenuTextOnHover",
    ["Parent"] = "MainMenuFrame",
    ["AnimDuration"] = 0.5
}