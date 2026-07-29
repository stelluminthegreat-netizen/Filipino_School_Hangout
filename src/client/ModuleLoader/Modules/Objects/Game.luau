--[[

██╗███████╗    █████╗     ███████╗██████╗  █████╗ ███╗   ███╗███████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗
██║██╔════╝   ██╔══██╗    ██╔════╝██╔══██╗██╔══██╗████╗ ████║██╔════╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝
██║███████╗   ███████║    █████╗  ██████╔╝███████║██╔████╔██║█████╗  ██║ █╗ ██║██║   ██║██████╔╝█████╔╝
██║╚════██║   ██╔══██║    ██╔══╝  ██╔══██╗██╔══██║██║╚██╔╝██║██╔══╝  ██║███╗██║██║   ██║██╔══██╗██╔═██╗
██║███████║   ██║  ██║    ██║     ██║  ██║██║  ██║██║ ╚═╝ ██║███████╗╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗
╚═╝╚══════╝   ╚═╝  ╚═╝    ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝ ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝

 ██████╗ ██████╗ ███╗   ███╗██████╗  ██████╗ ███╗   ██╗███████╗███╗   ██╗████████╗
██╔════╝██╔═══██╗████╗ ████║██╔══██╗██╔═══██╗████╗  ██║██╔════╝████╗  ██║╚══██╔══╝
██║     ██║   ██║██╔████╔██║██████╔╝██║   ██║██╔██╗ ██║█████╗  ██╔██╗ ██║   ██║
██║     ██║   ██║██║╚██╔╝██║██╔═══╝ ██║   ██║██║╚██╗██║██╔══╝  ██║╚██╗██║   ██║
╚██████╗╚██████╔╝██║ ╚═╝ ██║██║     ╚██████╔╝██║ ╚████║███████╗██║ ╚████║   ██║
 ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═══╝   ╚═╝

DO NOT ADD GAME-SPECIFIC LOGIC, FEATURES, OR DEPENDENCIES.

--]]

local self = {}

function self.initialize()
end

function self.start()
    shared.Player.new(game.Players.LocalPlayer)
	StartMinorTasksHandler()
    StartDataManager()
    InitializeUI()
    InitCam()
    
    task.wait()
    
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", false)
end

function StartMinorTasksHandler()
    local minor_tasks_handler = require(game.ReplicatedStorage.Shared.Libraries.MinorTasksHandler)
    minor_tasks_handler.Start()
end

function StartDataManager()
    local data_manager = require(script.Parent.Parent.Parent.Parent.Data.DataManager)
    data_manager.Start()
end

function InitializeUI()
    local targetUINames = {
        "MainMenuBackground",
        "MainMenuHeader",
        "MainMenuUserProfile",
        "Overlay",
        "PlayGameBtn",
        "PlayGameFrame",
        "RoleSelectorContainer",
        "ServersBtnFrame",
        "SettingsBtnFrame"
    }
    local targetUIs = {}
    for _, name in targetUINames do
        local ui = game.ReplicatedStorage.UI_Folders:FindFirstChild(name)
        if not ui then continue end
        targetUIs[name] = ui
    end
    game.Players.LocalPlayer.CharacterAdded:Wait()
    shared.UI.OpenInitialUIs(targetUIs)
end

function InitCam()
    local cam = game.Workspace.CurrentCamera
    local lookAt = Vector3.new(0, 20, 0)
    local at = Vector3.new(0, 30, 0)

    cam.CameraType = Enum.CameraType.Scriptable
    cam.CFrame = CFrame.lookAt(at, lookAt)
end

return self
