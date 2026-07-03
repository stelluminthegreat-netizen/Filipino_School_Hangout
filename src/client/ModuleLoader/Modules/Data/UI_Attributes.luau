return {

   ["OpenPrompt"] = {
        ["OpenUIs"] = {
            [1] = "PromptFrame",
            [2] = "PromptFrame1",
            [3] = "PromptFrame2"
        },
        ["Funcs"] = {
            [1] = "Open"
        },
        ["EventNames"] = {
            ["Opened"] = "Opened"
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
        ["Changes"] = {
            ["OpenChanges"] = {
                ["Position"] = UDim2.fromScale(0.35, 0.5)
            },
            ["CloseChanges"] = {

            }
        },
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 0.5
   },
      
   ["PromptFrame1"] = {
        ["EventNames"] = {
            ["Opened"] = "Opened",
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
        ["Changes"] = {
            ["OpenChanges"] = {
                ["Position"] = UDim2.fromScale(0.5, 0.5)
            },
            ["CloseChanges"] = {

            }
        },
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 1
   },
      
   ["PromptFrame2"] = {
        ["EventNames"] = {
            ["Opened"] = "Opened",
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
            ["TargetPos"] = UDim2.fromScale(0.65, .5)
        },
        ["Changes"] = {
            ["OpenChanges"] = {
                ["Position"] = UDim2.fromScale(0.65, 0.5)
            },
            ["CloseChanges"] = {

            }
        },
        ["Parent"] = "ScreenGui",
        ["AnimDuration"] = 1.5
   },
   

}