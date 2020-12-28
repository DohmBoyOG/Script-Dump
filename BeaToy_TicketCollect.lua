-- [Game:] https://www.roblox.com/games/5272267802/Be-a-Toy 
-- [Instructions:] Simply Execute the script to collect on Tickets on the map, Keep Executing for more Tickets!
-- [By:] DohmBoyOG#0313


local plr = game:GetService("Players").LocalPlayer
local codes = game:GetService("Workspace").Map.Codes

for _, v in pairs(codes:GetChildren()) do
    if v:IsA('Part') then
        v.CFrame = plr.Character.HumanoidRootPart.CFrame
    end
end

