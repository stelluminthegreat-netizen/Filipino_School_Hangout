return 
{
    ["Funcs"] = {
        [1] = "Open",
        [2] = "Close",
        [3] = "OnMainMenuClicked",
        [4] = "OnMainMenuMouseHover"
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
    ["Delays"] = {
        ["Open"] = 2,
        ["Close"] = 0,
        ["OpeningUIs"] = 2,
        ["ClosingUIs"] = 0
    },
    ["Parent"] = "MainMenuFrame",
    ["AnimDuration"] = 0.5
}