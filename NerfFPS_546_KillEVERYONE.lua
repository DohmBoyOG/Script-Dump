---Game Link: https://www.roblox.com/games/625364452/Nerf-FPS-V5-46#---

local event = game:GetService("ReplicatedStorage").sumiisbestgirl
local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayers = game:GetService("Players"):GetPlayers()

local loopList = {}

for _, i in ipairs(otherPlayers) do
    if  i ~= thisPlayer then
        table.insert(loopList, i)
    end
end

for _, v in ipairs(loopList) do
    print(#loopList)
    print("[Current Target]: " .. v.name)
    repeat
        wait(1)
        --thisPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,8)
        event:FireServer(149306230, v.Character, 100, "VULCAN", true)
        --count = count + 1
        print("[Targets Heath] " .. v.Character.Humanoid.Health)
    until v.Character.Humanoid.Died
    print("Target " .. "[" .. v.name .. "]" .. " Elimated")
end
