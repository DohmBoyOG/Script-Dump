local event = game:GetService("ReplicatedStorage").ServerEvents.Damage
local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayers = game:GetService("Players"):GetPlayers()

local loopList = {}
local gameCiv = 'Bright yellow'



key = "L1jbCuuchotZDpGkwDp3ygoPltzF2GQ"
locBullet = game:GetService("Players").LocalPlayer.Character.Musket.Animation.BulletDamage
weird = game:GetService("Players").LocalPlayer


for _, i in pairs(otherPlayers) do 
    if i.TeamColor ~= thisPlayer.TeamColor and i ~= thisPlayer and i.TeamColor ~= gameCiv then
        table.insert(loopList, i)
    end
    
end

for _, v in pairs(loopList) do
    print(#loopList)
    print("[Current Target]: " .. v.name)
    repeat
        wait(3)
        --me.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,8)
        event:FireServer(key, locBullet, v.Character.Head, weird)
        --count = count + 1
        print("[Targets Heath] " .. v.Character.Humanoid.Health)
    until v.Character.Humanoid.Health == 0
    print("Target " .. "[" .. v.name .. "]" .. " Elimated")
end


