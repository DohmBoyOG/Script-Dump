if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/mt-api%20v2.lua", true))() end

local event = game:GetService("ReplicatedStorage").sumiisbestgirl
local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayers = game:GetService("Players"):GetPlayers()
local weapons = game:GetService("ReplicatedStorage").Modules:GetChildren()

local weapList = {}
local equipped
local gunStats = {}

local clipping

gunlist = {
    "RECON",
    "RETALIATOR",
    "RAMPAGE",
    "ATLAS",
    "CENTURION",
    "LONGSTRIKE",
    "STRYFE",
    "WORKER STRYFE",
    "RAYVEN",
    "ELITE RAYVEN",
    "RIVALZEUS",
    "STAMPEDE",
    "HYPERFIRE",
    "VULCAN",
    "RAPIDSTRIKE",
    "KHAOS",
    "NEMESIS",
    "MAVERICK",
    "STRONGARM",
    "CYCLONESHOCK",
    "JOLT",
    "APOLLO",
    "KRONOS",
    "TITAN",
    "HERA"
}

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/UI/main/PlaystationUI.lua"))()

local UI = GUI:CreateWindow("Nerf FPS - DohmScripts - GUI v2")

local Home = UI:addPage("Home", 2, true, 6)
local Player = UI:addPage("Player", 2, false, 6)
local WepMod = UI:addPage("Weapon", 3, false, 6)
local Settings = UI:addPage("Settings", 2, false, 6)

local a
local b
local c
local d
local e
local f
local g
local h
local i
local j
local k
local l

Home:addLabel("Nerf FPS GUI v1")
Home:addLabel("")
Home:addLabel("Discord: DohmBoyOG#0313")
Home:addLabel("Youtube: https://short.dohmscripts.com/p3s")
Home:addLabel("Github: https://short.dohmscripts.com/1m5")
Home:addLabel("")
Home:addLabel("Special Mentions:")
Home:addLabel("none")

Player:addLabel("Player Menu")
Player:addLabel("")
Player:addLabel("Kill Switch", "various ways to kill players")
Player:addLabel("")
Player:addButton(
    "Kill Team",
    function()
        if pcall(killTeam) then
            print("No Errors, Loop Complete!")
        else
            print("Error Happened, Contact me on Discord if it keeps occuring")
        end
    end
)
Player:addButton(
    "Kill All",
    function()
        if pcall(killALL) then
            print("No Errors, Loop Complete!")
        else
            print("Error Happened, Contact me on Discord if it keeps occuring")
        end
    end
)
Player:addLabel("Cash", "all the monies in the world!  ")
Player:addButton(
    "Infinite Cash",
    function()
        infCash()
    end
)

WepMod:addLabel("Weapon Mods", "I came to kick ass and chew bubble gum..")
WepMod:addLabel("")
WepMod:addTextBox(
    "boltaction",
    "",
    function(value)
        a = tobool(value)
    end
)
WepMod:addTextBox(
    "damage",
    "",
    function(value)
        b = tonumber(value)
    end
)
WepMod:addTextBox(
    "maxclip",
    "",
    function(value)
        c = tonumber(value)
    end
)
WepMod:addTextBox(
    "stored",
    "",
    function(value)
        d = tonumber(value)
    end
)
WepMod:addTextBox(
    "bullet",
    "",
    function(value)
        e = value
    end
)
WepMod:addTextBox(
    "range",
    "",
    function(value)
        f = tonumber(value)
    end
)
WepMod:addTextBox(
    "rate",
    "",
    function(value)
        g = tonumber(value)
    end
)
WepMod:addTextBox(
    "zoom",
    "",
    function(value)
        h = tonumber(value)
    end
)
WepMod:addTextBox(
    "weight",
    "",
    function(value)
        i = tonumber(value)
    end
)
WepMod:addTextBox(
    "firemode",
    "",
    function(value)
        j = tonumber(value)
    end
)
WepMod:addTextBox(
    "spread",
    "",
    function(value)
        k = tonumber(value)
    end
)
WepMod:addTextBox(
    "aimspread",
    "",
    function(value)
        l = tonumber(value)
    end
)
WepMod:addButton(
    "Get Weapon Stats",
    function()
        getGunStats()
    end
)
WepMod:addButton(
    "Set Weapon Stats",
    function()
        modGun()
    end
)


Settings:addLabel('Settings', 'various fun settings!')
Settings:addLabel('')
Settings:addToggle('NO CLIP', function(bool) clipping = bool if clipping == true then Noclipping = game:GetService('RunService').Stepped:connect(clipLoop) else Noclipping:Disconnect() end end)
Settings:addSlider('Movement Speed')


function killTeam()
    for _, v in pairs(otherPlayers) do
        if v.Character and v.TeamColor ~= thisPlayer.TeamColor and v ~= thisPlayer then
            if v.Character.Humanoid.Health > 1 then
                wait(0.3)
                event:FireServer(149306230, v.Character, 100, gunlist[math.random(1, #gunlist)], true)
            end
        end
    end
end

function killALL()
    for _, v in pairs(otherPlayers) do
        if v.Character and v ~= thisPlayer then
            if v.Character.Humanoid.Health > 1 then
                wait(1)
                event:FireServer(149306230, v.Character, 100, gunlist[math.random(1, #gunlist)], true)
            end
        end
    end
end

function modGun()
    for _, guns in pairs(weapons) do
        table.insert(weapList, guns)
    end

    for _, v in pairs(thisPlayer.Character:GetChildren()) do
        if v:IsA("Model") then
            equipped = v.Name
            print(equipped)
        end
    end

    for _, v in pairs(weapList) do
        if v.Name == equipped then
            print(v:GetFullName())
            mods = require(v).stats

            mods.boltaction = a
            mods.damage = b
            mods.maxclip = c
            mods.stored = d
            mods.bullet = e
             -- [dart], [ball], [stefan], [elite], [mega], [rocket], [sword] <-- lol? --
            mods.range = f
            mods.rate = g
            mods.zoom = h -- [Be careful messing with this one. you could end up too zoomed!] --
            mods.weight = i -- [ Don't set weight to zero, higher number is lesser weight!!] --
            mods.firemode = j -- [0] Single Shot , [1] Semi Auto , [2] Full Auto --
            mods.spread = Vector3.new(tonumber(k)) -- [all zeros no spread?] --
            mods.aimspread = Vector3.new(tonumber(l)) -- [all zeros no spread?] --

            warn(mods.damage)
        end
    end
end

function getGunStats()
    for _, guns in pairs(weapons) do
        table.insert(weapList, guns)
    end

    for _, v in pairs(thisPlayer.Character:GetChildren()) do
        if v:IsA("Model") then
            equipped = v.Name
            print(equipped)
        end
    end

    for _, v in pairs(weapList) do
        if v.Name == equipped then
            print(v:GetFullName())
            mods = require(v).stats

            setText("boltaction", mods.boltaction)
            setText("damage", mods.damage)
            setText("maxclip", mods.maxclip)
            setText("stored", mods.stored)
            setText("bullet", mods.bullet)
            setText("range", mods.range)
            setText("rate", mods.rate)
            setText("zoom", mods.zoom)
            setText("weight", mods.weight)
            setText("firemode", mods.firemode)
            setText("spread", mods.spread)
            setText("aimspread", mods.aimspread)

            a = mods.boltaction
            b = tonumber(mods.damage)
            c = tonumber(mods.maxclip)
            d = tonumber(mods.stored)
            e = mods.bullet -- [dart], [ball], [stefan], [elite], [mega], [rocket], [sword] <-- lol? --
            f = tonumber(mods.range)
            g = tonumber(mods.rate)
            h = tonumber(mods.zoom) -- [Be careful messing with this one. you could end up too zoomed!] --
            i = tonumber(mods.weight) -- [ Don't set weight to zero, higher number is lesser weight!!] --
            j = tonumber(mods.firemode) -- [0] Single Shot , [1] Semi Auto , [2] Full Auto --
            Vector3.new(tonumber(mods.spread)) -- [all zeros no spread?] --
            Vector3.new(tonumber(mods.aimspread)) -- [all zeros no spread?] --
        end
    end
end

function infCash()
    local cash = thisPlayer.leaderstats

    for _, v in pairs(cash:GetChildren()) do
        if v:IsA("NumberValue") and v.name == "CashMoney" then
            v.Value = 9e9
        end
    end

    local gmt = getrawmetatable(game)
    local old = gmt.__namecall
    setreadonly(gmt, false)

    gmt.__namecall =
        newcclosure(
        function(self, ...)
            local args = {...}
            local method = getnamecallmethod()
            if method == "FireServer" and self.Name == "SubCash" then
                print("Trying to take cash from me NO!")
                return nil
            end
            return old(self, ...)
        end
    )

    setreadonly(gmt, true)
end

function setText(txt, value)
    local lame = game:GetService("CoreGui"):WaitForChild("fu8rj82n")
    for _, v in ipairs(lame:GetDescendants()) do
        if v:IsA("Frame") and v.Name == "TextBoxHolder" then
            if v.TextBoxTitle.Text == txt then
                v.TextBox.Text = tostring(value)
            end
        end
    end
end

function clipLoop()
    if thisPlayer.Character ~= nil then
        for _, child in pairs(thisPlayer.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true then
                child.CanCollide = false
            end
        end
    end
end


