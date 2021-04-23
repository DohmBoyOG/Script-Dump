local thisPlayer = game:GetService("Players").LocalPlayer

for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA("TouchTransmitter") and string.match(v.Parent.Name, "MetaverseBadge") then
        firetouchinterest(thisPlayer.Character.HumanoidRootPart, v.Parent, 0)
        wait()
        firetouchinterest(thisPlayer.Character.HumanoidRootPart, v.Parent, 1)
    end
end

