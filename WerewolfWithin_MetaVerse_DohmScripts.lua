
local thisPlayer = game:GetService('Players').LocalPlayer


function getMetaBox()
    local MetaverseBox = game:GetService("Workspace").SpecialDrops.MetaverseBox
    thisPlayer.Character.HumanoidRootPart.CFrame = MetaverseBox.CFrame
end
    
function AutoTask()
    while wait() do
        game:GetService("ReplicatedStorage").Remotes.Complete_Task:FireServer('Sort Parts', 1)
    end
end



if game:GetService("Workspace").SpecialDrops:FindFirstChild('MetaverseBox') then
    getMetaBox()
end

            

if not game:GetService("Workspace").SpecialDrops:FindFirstChild('MetaverseBox') then
    AutoTask()
end

        





