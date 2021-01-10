allBlocks = game:GetService("Workspace").SandBlocks:GetChildren()
garbageBin = game:GetService("Workspace").DestroyedLocations
remote = game:GetService("Players").LocalPlayer.Character['Large Shovel'].RemoteClick
thisPlayer = game:GetService("Players").LocalPlayer
local pos = game:GetService("ReplicatedStorage").Islands.Starter.StartPos.Position
local Run = game:GetService("RunService")

local blocks = {}

initBlocks()

function initBlocks()
    for _, block in pairs(allBlocks) do
        if pos.X - 12 <= block.Position.X and block.Position.X <= pos.X + 12 and pos.Z - 12 <= block.Position.Z and block.Position.Z <= pos.Z + 12 then
            table.insert(blocks, block)
        end
    end
    warn('Init Blocks Complete')
end

function onBlockRemoved(block)
    if pos.X - 12 <= block.Position.X and block.Position.X <= pos.X + 12 and pos.Z - 12 <= block.Position.Z and block.Position.Z <= pos.Z + 12 then
        table.remove(blocks, block)
        print('Block Removed '..block.Name)
    end
end

function onBlockAdded(block)
    if pos.X - 12 <= block.Position.X and block.Position.X <= pos.X + 12 and pos.Z - 12 <= block.Position.Z and block.Position.Z <= pos.Z + 12 then
        table.insert(blocks, block)
        print('New Block Added '..block.Name)
    end
end

game:GetService("Workspace").SandBlocks.ChildAdded:Connect(onBlockAdded)

game:GetService("Workspace").SandBlocks.ChildRemoved:Connect(onBlockRemoved)


for _, v in ipairs(allBlocks) do
    if pos.X - 12 <= v.Position.X and v.Position.X <= pos.X + 12 and pos.Z - 12 <= v.Position.Z and v.Position.Z <= pos.Z + 12 then
        if v:FindFirstChild('Reward') then
            local hitCount = v.Health.Value
             thisPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            for i = 0 , hitCount - 1 do
                print(hitCount)
                remote:FireServer(workspace.SandBlocks[v.Name])
                wait(1)
                
            end
        end
    end
end 



