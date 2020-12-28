-- [Modifys the currently equipped weapon, to use have the weapon you want to modify
-- equipped, then make your changes and execute, once you die or reset the changes will be applied] --

weapons = game:GetService("ReplicatedStorage").Modules:GetChildren()
gamePlayer = game:GetService("Players").LocalPlayer

local weapList = {}
local equipped

for _, guns in pairs(weapons) do
    table.insert(weapList, guns)
end

for _, v in pairs(gamePlayer.Character:GetChildren()) do
    if v:IsA("Model") then
        equipped = v.Name
        print(equipped)
    end
end

for _, v in pairs(weapList) do
    if v.Name == equipped then
        print(v:GetFullName())
        mods = require(v).stats

        mods.boltaction = false
        mods.damage = 9999 -- [Default is 100]
        mods.maxclip = 9999
        mods.stored = 9999
        mods.bullet = "sword" -- [dart], [ball], [stefan], [elite], [mega], [rocket], [sword] <-- lol? --
        mods.range = 3000
        mods.rate = 0.15
        mods.zoom = 70 -- [Be careful messing with this one. you could end up too zoomed!] --
        mods.weight = 0 -- [ Don't set weight to zero, higher number is lesser weight!!] --
        mods.firemode = 2 -- [0] Single Shot , [1] Semi Auto , [2] Full Auto --
        mods.spread = Vector3.new(0, 0, 0) -- [all zeros no spread?] --
        mods.aimspread = Vector3.new(0, 0, 0) -- [all zeros no spread?] --
        mods.firepitch = 0 -- [Have no idea what this does] --
    end
end








