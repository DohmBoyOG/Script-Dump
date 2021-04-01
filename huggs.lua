local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayers = game:GetService("Players"):GetPlayers()


local throw = true

pcall(function() while wait() do
    if throw then
        local humanoid = thisPlayer.Character:FindFirstChildOfClass("Humanoid")
        local tool = thisPlayer.Backpack:FindFirstChild('HUG')
        humanoid:EquipTool(tool)
        local remote = thisPlayer.Character.HUG.RemoteEvent
        for _, v in pairs(otherPlayers) do
            if v ~= thisPlayer and v.Character:FindFirstChild('HumanoidRootPart') then
                thisPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                remote:FireServer(v.Character)
            end
        end
    end
end
end)

