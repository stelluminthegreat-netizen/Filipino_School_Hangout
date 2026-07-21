local self = {}

function self.initialize()
	
end

function self.start()
	StartMinorTasksHandler()
    StartDataManager()
    InitializeUI()
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

return self
