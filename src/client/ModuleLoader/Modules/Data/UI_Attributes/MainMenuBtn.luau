return 
{
    ["Funcs"] = {
        [1] = "Open",
        [2] = "Close",
        [3] = "OnMainMenuClicked"
    },
    ["EventNames"] = {
        [1] = "Opened",
        [2] = "Closed",
        [3] = "Animate"
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
        [1] = "MainMenuBtn",
        [2] = "InGameSettingsBtn",
        [3] = "InGameShopBtn"
    },
    ["Changes"] = {
        ["OpenChanges"] = {
            ["Position"] = UDim2.fromScale(0.04, 0.62)
        },
        ["CloseChanges"] = {
            ["Position"] = UDim2.fromScale(-0.04, 0.62)
        }
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
        ["OpenPrio"] = 1,
        ["ClosePrio"] = 1
    },
    ["TargetFolders"] = {

    },
    ["Parent"] = "ScreenGui",
    ["AnimDuration"] = 0.5
}