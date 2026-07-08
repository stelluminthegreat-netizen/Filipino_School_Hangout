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
    
}