return {

   ["OpenPrompt"] = {
        ["OpenUIs"] = {
            [1] = "PromptFrame",
            [2] = "PromptFrame1",
            [3] = "PromptFrame2"
        },
        ["CloseUIs"] = {
            [1] = "PromptFrame",
            [2] = "PromptFrame1",
            [3] = "PromptFrame2"
        },
        ["Funcs"] = {
            [1] = "Open",
            [2] = "Close"
        },
        ["EventNames"] = {
            ["Opened"] = "Opened"
        },
        ["Debounce"] = {
            ["Status"] = "Opening"
        },
        ["Events"] = {

        },
        ["Connections"] = {

        },
        ["TargetFolders"] = {

        },
        ["Prios"] = {
            ["OpenPrio"] = 2,
        },
        ["Parent"] = "ScreenGui"
   }, 
   
   ["PromptFrame"] = {
        ["EventNames"] = {
            ["Opened"] = "Opened",
            ["Closed"] = "Closed",
            ["Animate"] = "Animate"
        },
        ["Events"] = {

        },
        ["Connections"] = {

        },
        ["Prios"] = {
            ["OpenPrio"] = 1,
            ["ClosePrio"] = 2
        },
        ["Positions"] = {
            ["OrigPos"] = UDim2.fromScale(0.5, -1),
            ["TargetPos"] = UDim2.fromScale(0.35, .5)
        },
        ["Debounce"] = {
            ["Openend"] = false,
            ["Closed"] = false
        },
        ["Changes"] = {
            ["OpenChanges"] = {
                ["Position"] = UDim2.fromScale(0.35, 0.5)
            },
            ["CloseChanges"] = {
                ["Position"] = UDim2.fromScale(0.35, 1.5)
            }
        },
        ["Children"] = {

        },
        ["Delays"] = {
            ["Open"] = 0,
            ["Close"] = 0
        }, 
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 1,
   },
    ["PlayGameBtn"] = {
        ["CloseUIs"] = {
            [1] = "MainMenuUserProfile",
            [2] = "MainMenuHeader",
            [3] = "MainMenuBackground",
            [4] = "PlayGameFrame",
            [5] = "ServersFrame",
            [6] = "SettingsFrame",
            [7] = "RoleSelectorContainer"
        },
        ["Funcs"] = {
            [1] = "Close"
        },
        ["EventNames"] = {
            ["Closed"] = "Closed",
            ["Opened"] = "Opened",
        },
        ["Debounce"] = {
            ["Status"] = "Closing"
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
    },
    ["MainMenuUserProfile"] = {
        ["EventNames"] = {
            ["Closed"] = "Closed",
            ["Opened"] = "Opened",
            ["Animate"] = "Animate"
        },
        ["Changes"] = {
            ["CloseChanges"] = {
                ["Position"] = UDim2.fromScale(-1, 0.3)
            },
            ["OpenChanges"] = {
                ["Position"] = UDim2.fromScale(0.05, 0.3)
            }
        },

        ["Events"] = {

        },
        ["Connections"] = {

        },
        ["Prios"] = {
            ["OpenPrio"] = 1,
            ["ClosePrio"] = 1
        },
        ["Debounce"] = {
            ["Closed"] = false,
            ["Opened"] = false
        },
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 0.5
    },
    ["MainMenuHeader"] = {
        ["EventNames"] = {
            ["Closed"] = "Closed",
            ["Opened"] = "Opened",
            ["Animate"] = "Animate"
        },
        ["Changes"] = {
            ["CloseChanges"] = {
                ["Position"] = UDim2.fromScale(-1, 0.1)
            },
            ["OpenChanges"] = {
                ["Position"] = UDim2.fromScale(0.056, 0.1)
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
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 0.5
    },
    ["MainMenuBackground"] = {
        ["EventNames"] = {
            ["Closed"] = "Closed",
            ["Opened"] = "Opened",
            ["Animate"] = "Animate"
        },
        ["Changes"] = {
            ["CloseChanges"] = {
                ["Size"] = UDim2.fromScale(2, 2)
            },
            ["OpenChanges"] = {
                ["Size"] = UDim2.fromScale(1, 1)
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
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 0.5
    },
    ["PlayGameFrame"] = {
        ["EventNames"] = {
            ["Closed"] = "Closed",
            ["Opened"] = "Opened",
            ["Animate"] = "Animate"
        },
        ["Changes"] = {
            ["CloseChanges"] = {
                ["Position"] = UDim2.fromScale(-1, 0.45)
            },
            ["OpenChanges"] = {
                ["Position"] = UDim2.fromScale(0.05, 0.45)
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
            ["ClosePrio"] = 2
        },
        ["Children"] = {

        },
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 0.5
    },
    ["ServersFrame"] = {
        ["EventNames"] = {
            ["Closed"] = "Closed",
            ["Opened"] = "Opened",
            ["Animate"] = "Animate"
        },
        ["Changes"] = {
            ["CloseChanges"] = {
                ["Position"] = UDim2.fromScale(-1, 0.6)
            },
            ["OpenChanges"] = {
                ["Position"] = UDim2.fromScale(0.05, 0.6)
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
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 0.5
    },
    ["SettingsFrame"] = {
        ["EventNames"] = {
            ["Closed"] = "Closed",
            ["Opened"] = "Opened",
            ["Animate"] = "Animate"
        },
        ["Changes"] = {
            ["CloseChanges"] = {
                ["Position"] = UDim2.new(-1, 0.75)
            },
            ["OpenChanges"] = {
                ["Position"] = UDim2.fromScale(0.05, 0.75)
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
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 0.5
    },
    ["RoleSelectorContainer"] = {
        ["EventNames"] = {
            ["Closed"] = "Closed",
            ["Opened"] = "Opened",
            ["Animate"] = "Animate"
        },
        ["Changes"] = {
            ["CloseChanges"] = {
                ["Position"] = UDim2.fromScale(1, 0.15)
            },
            ["OpenChanges"] = {
                ["Position"] = UDim2.fromScale(0.596, 0.15)
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
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 0.5
    },
    ["Overlay"] = {
        ["EventNames"] = {
            ["Closed"] = "Closed",
            ["Opened"] = "Opened",
            ["Animate"] = "Animate"
        },
        ["Changes"] = {
            ["CloseChanges"] = {
                ["Transparency"] = 1
            },
            ["OpenChanges"] = {
                ["Transparency"] = 0.6
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
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 0.5
    }
    
}