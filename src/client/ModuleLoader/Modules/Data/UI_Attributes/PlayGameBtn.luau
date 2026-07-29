return 
{
    ["CloseUIs"] = {
        [1] = "MainMenuUserProfile",
        [2] = "MainMenuHeader",
        [3] = "MainMenuBackground",
        [4] = "PlayGameFrame",
        [5] = "ServersBtnFrame",
        [6] = "SettingsBtnFrame",
        [7] = "RoleSelectorContainer",
        [8] = "Overlay"
    },
    ["OpenUIs"] = {
        [1] = "MainMenuFrame",
        -- [2] = "InGameSettingsBtn",
        -- [3] = "InGameShopBtn"
    },
    ["FrameWorkFuncs"] = {
        [1] = "Close",
        [2] = "Open",
        [3] = "OnPlayClicked"
    },
    ["GameFuncs"] = {

    },
    ["Funcs"] = {
        ["OnPlayClicked"] = function(self, necesseties)
            if self.Connections.OnPlayClicked then warn("OnPlayClicked connection exists", self.Connections) return end
            local conn 
            conn = self.UI.MouseButton1Down:Connect(function()
                if not self.Connections.OnPlayClicked then self.Connections["OnPlayClicked"] = conn end

                local player = game.Players.LocalPlayer
                local Player = shared.Player
                local playerObj = Player.Players[player.Name]
                playerObj.Status.InMainMenu = false
                playerObj.Events.Changed:Fire("GameState")

                player.CharacterAdded:Wait()
                local HRP = player.Character:WaitForChild("HumanoidRootPart")
                local cam = workspace.CurrentCamera
                task.wait(0.1)
                local at = HRP.Position + Vector3.new(0, 3, 10)
                local lookAt = HRP.Position
                local tween = necesseties.Camera.TweenedCFrameModification(cam, CFrame.lookAt(at, lookAt), 2)
                tween.Completed:Wait()
                cam.CameraType = Enum.CameraType.Custom
                cam.CameraSubject = HRP

                conn:Disconnect()
	        end)
        end
    },
    ["EventNames"] = {
        ["Closed"] = "Closed",
        ["Opened"] = "Opened",
    },
    ["Debounce"] = {
        ["Closing"] = false,
        ["Opening"] = false
    },
    ["Events"] = {

    },
    ["Connections"] = {

    },
    ["TargetFolders"] = {

    },
    ["Prios"] = {
        ["OpenPrio"] = 2,
        ["ClosePrio"] = 1
    },
    ["Parent"] = "PlayGameFrame",
}