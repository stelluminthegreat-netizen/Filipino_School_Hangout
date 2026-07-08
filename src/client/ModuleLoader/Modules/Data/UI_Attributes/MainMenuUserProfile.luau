return 
{
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
}