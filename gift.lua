local thisPlayer = game:GetService('Players').LocalPlayer
local boxs = game:GetService("Workspace").giftSpawns


while wait() do
    for _, v in pairs(boxs:GetDescendants()) do
        if
            v:IsA("ProximityPrompt") and v and v.Parent and v.Parent.Parent.Parent:FindFirstChild("hitbox") and
                not v.Parent.Parent:FindFirstChild("unwrapProgressBar")
         then
            thisPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
            wait(1)
            fireproximityprompt(v, 10)
            v.Parent.Parent:WaitForChild("unwrapProgressBar")
        end
        if v and v.Parent and v.Parent.Parent and not v.Parent.Parent:FindFirstChild("unwrapProgressBar") then
            repeat
                wait()
            until not v.Parent.Parent:FindFirstChild("unwrapProgressBar")
        end
    end
end






    

