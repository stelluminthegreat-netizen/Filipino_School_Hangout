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
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 0.5,
   },
      
   ["PromptFrame1"] = {
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
            ["TargetPos"] = UDim2.fromScale(0.5, .5)
        },
        ["Debounce"] = {
            ["Openend"] = false,
            ["Closed"] = false
        },
        ["Changes"] = {
            ["OpenChanges"] = {
                ["Position"] = UDim2.fromScale(0.5, 0.5)
            },
            ["CloseChanges"] = {
                ["Position"] = UDim2.fromScale(0.5, 1.5)
            }
        },
        ["Children"] = {

        },
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 0.5
   },
      
   ["PromptFrame2"] = {
        ["EventNames"] = {
            ["Opened"] = "Opened",
            ["Closed"] = "Closed",
            ["Animate"] = "Animate"
        },
        ["Events"] = {

        },
        ["Connections"] = {

        },
        ["Debounce"] = {
            ["Openend"] = false,
            ["Closed"] = false
        },
        ["Prios"] = {
            ["OpenPrio"] = 1,
            ["ClosePrio"] = 2
        },
        ["Positions"] = {
            ["OrigPos"] = UDim2.fromScale(0.5, -1),
            ["TargetPos"] = UDim2.fromScale(0.65, .5)
        },
        ["Changes"] = {
            ["OpenChanges"] = {
                ["Position"] = UDim2.fromScale(0.65, 0.5)
            },
            ["CloseChanges"] = {
                ["Position"] = UDim2.fromScale(0.65, 1.5)
            }
        },
        ["Children"] = {

        },
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 0.5
   },
   ["TestChild1"] = {
        ["EventNames"] = {
            ["Opened"] = "Opened",
            ["Closed"] = "Closed",
        },
        ["Events"] = {

        },
        ["Connections"] = {

        },
        ["Prios"] = {
            ["OpenPrio"] = 2,
            ["ClosePrio"] = 1
        },
        ["Debounce"] = {
            ["Opened"] = false,
            ["Closed"] = false
        },
        ["Parent"] = "PromptFrame",
   }
   

}