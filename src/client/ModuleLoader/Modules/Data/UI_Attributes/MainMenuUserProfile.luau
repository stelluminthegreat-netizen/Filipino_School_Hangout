function Init(self)
    local player = game.Players.LocalPlayer
    local playerObject = shared.Player.Players[player.Name]
    while not playerObject.Data do
        task.wait()
        print(playerObject.Data)
    end
    local cash = playerObject.Data.Cash
    local level = playerObject.Data.Level

    local cashLabel = self.UI.UserInformation.RoleLevelFrame.PlayerCash
    local levelLabel = cashLabel.Parent.PlayerLevel
    local nameLabel = cashLabel.Parent.Parent.PlayerName
    local profilePic = nameLabel.Parent.Parent.ImageLabel

    cashLabel.Text = "$" .. cash
    levelLabel.Text = "Level:" .. level .. " | "
    nameLabel.Text = player.Name

    local Players = game:GetService("Players")

    local userId = player.UserId

    local content, _ = Players:GetUserThumbnailAsync(
        userId,
        Enum.ThumbnailType.HeadShot,
        Enum.ThumbnailSize.Size420x420
    )

    profilePic.Image = content
end

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
    ["Funcs"] = {
        ["Init"] = Init
    },
    ["Parent"] = "ScreenGui",
    ["AnimDuration"] = 0.5
}