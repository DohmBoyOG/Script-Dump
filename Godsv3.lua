local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayer = game:GetService("Players")
local worlds = game:GetService("Workspace").GameWorlds

local flingStart = game:GetService("ReplicatedStorage").Remotes.KickOtherPlayer
local remote = game:GetService("ReplicatedStorage").Remotes.BreakBuilding

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/UI/main/PlaystationUI.lua"))()

local UI = GUI:CreateWindow("God Of Glory - DohmScripts - GUI v2")

local Home = UI:addPage("Home",2,true,6)
local LP = UI:addPage("Player",2,false,6)
local Trolls = UI:addPage("Trolls",2,false,6)      
local World = UI:addPage("World",2,false,6)
local Settings = UI:addPage("Settings",2,false,6)

local cash
local tarPlyer 
local rageMode
local clipping

Home:addLabel("Gods of Glory GUI v2")
Home:addLabel("")
Home:addLabel("Discord: DohmBoyOG#0313")
Home:addLabel("Youtube: https://short.dohmscripts.com/p3s")
Home:addLabel("Github: https://short.dohmscripts.com/1m5")
Home:addLabel("")
Home:addLabel("Special Mentions:")
Home:addLabel("none") 



-- Label
LP:addLabel("Mana","various mana options")
LP:addLabel("")
LP:addTextBox('Mana Amount','90', function(value) cash = value end)
LP:addButton('[Button] Give', function() giveAmount(cash) end)
LP:addButton('[Button] Auto Give', function() autoMana() end)
LP:addLabel("")
LP:addLabel("Relic", 'various relic options')
LP:addButton('[Button] Give Relic', function() giveRelic() end)
LP:addLabel("")
LP:addLabel("Size", 'change how big you are')
LP:addSlider("Player Size",1,27, function(value)
    changeSize(value)
end)

Trolls:addLabel('Trolling','various ways to troll players')
Trolls:addLabel('')
Trolls:addLabel('Flings','various ways to fling players')
Trolls:addLabel('')
Trolls:addTextBox('Player Name', 'DohmBoyOG D:', function(value) tarPlyer = value  end)
Trolls:addButton('[Button] Fling Player', function() spawn(flingPlayer) end)
Trolls:addButton('[Button] Fling All', function() spawn(fling) end)
Trolls:addButton('[Button] Alien Abduction Fling', function() spawn(flingToMoon) end)
Trolls:addToggle('Rage Mode', function(bool) rageMode = bool end)

World:addLabel('World', 'various options that effect the world')
World:addLabel()
World:addLabel('World Destruction', 'Destroys All worlds in the game')
World:addButton('[Button] Nuke World', function() spawn(destructAllWorld) end)

Settings:addLabel('Settings','various options you can change')
Settings:addLabel()
Settings:addButton('[Button] Network Bypass', function() netBypass() end)
Settings:addButton('[Button] Twitter Codes', function() twitterCodes() end)
Settings:addButton('[Button] Guard Godmode', function() spawn(gGod) end)
Settings:addButton('[Button] Flight', function() loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/flyscript.lua"))() end)
Settings:addToggle('NO CLIP', function(bool) clipping = bool if clipping == true then Noclipping = game:GetService('RunService').Stepped:connect(clipLoop) else Noclipping:Disconnect() end end)

function netBypass()
    print('Network Bypass Loaded.')
    local NetworkAccess = coroutine.create(function()
    settings().Physics.AllowSleep = false
    while game:GetService("RunService").RenderStepped:Wait() do
        for _, Players in next, game:GetService("Players"):GetPlayers() do
            if Players ~= game:GetService("Players").LocalPlayer then
                Players.MaximumSimulationRadius = 0 
                sethiddenproperty(Players, "SimulationRadius", 0) 
            end 
        end
        game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
        setsimulationradius(math.huge) 
    end 
end) 
coroutine.resume(NetworkAccess)
end


function twitterCodes()
    codes = require(game:GetService("ReplicatedStorage").Sandbox.Codes).YoutuberCodes
    print('----------- Begin Twitter Codes -----------')
    for code, youtuber in pairs(codes) do
    --game:GetService("ReplicatedStorage").Remotes.CodeItem:InvokeServer({
       -- ["Value"] = code
    --})
    --wait(20)
    print('[Code]: '..code..' [Youtuber:] '..youtuber)
   end
   print('------------- End Twitter Codes -------------')
end



function gGod()
    local gmt = getrawmetatable(game)
    local old = gmt.__namecall
    
    setreadonly(gmt, false)
    
    gmt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" and self.Name == "DealDamage" then
        print('Nothing can Stop us now!')
        return nil
    end
    return old(self, ...)
end)
end

function destructAllWorld()
    for _, v in ipairs(worlds:GetChildren()) do
        if v:IsA("Folder") then
            for _, destructs in ipairs(v:GetDescendants()) do
                if destructs:IsA("Folder") and destructs.Name == "Destructibles" then
                    for _, begin in ipairs(destructs:GetChildren()) do
                        remote:FireServer(
                            {
                                ["TagFullName"] = tostring(begin:GetFullName())
                                
                            }
                            )
                    end
                end
            end
        end
    end
end

function changeSize(size)
    local remote = game:GetService("ReplicatedStorage").Remotes.UpdateSize
    remote:FireServer({["Value"] = tonumber(size) })
end

function giveRelic()
    local remote = game:GetService("ReplicatedStorage").Remotes.Relic
    remote:InvokeServer()
end

function giveAmount(m)
    local remote = game:GetService("ReplicatedStorage").Remotes.GiveMana
    remote:FireServer({
        ["Value"] = tonumber(m)
    })
end

function autoMana()
    local remote = game:GetService("ReplicatedStorage").Remotes.GiveMana
    remote:FireServer({
        ["Value"] = 900000000000
    })
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

function twitterCodes()
    codes = require(game:GetService("ReplicatedStorage").Sandbox.Codes).YoutuberCodes
    print('----------- Begin Twitter Codes -----------')
    for code, youtuber in pairs(codes) do
    --game:GetService("ReplicatedStorage").Remotes.CodeItem:InvokeServer({
       -- ["Value"] = code
    --})
    --wait(20)
    print('[Code]: '..code..' [Youtuber:] '..youtuber)
   end
   print('------------- End Twitter Codes -------------')
end

function fling()
    for _, v in ipairs(otherPlayer:GetPlayers()) do
        if v ~= thisPlayer then
            flingStart:FireServer({
                ["OtherCharacter"] = v.Character,
                ["LV"] = Vector3.new(math.random(5000), math.random(5000), math.random(5000))})
            end
        end
end

function flingPlayer()
    for _, v in ipairs(game.Players:GetPlayers()) do
        if tarPlyer ~= nil and tarPlyer == v.Name then
            flingStart:FireServer({
                ["OtherCharacter"] = v.Character,
                ["LV"] = Vector3.new(math.random(5000), math.random(5000), math.random(5000))
                })
            end
        end
    end


    function flingToMoon()
        print('Abducting All Players On The Server, Watch the fun :D')
        for _, v in ipairs(otherPlayer:GetPlayers()) do
            if v ~= thisPlayer then
                for i = 1 , 1000 do
                    flingStart:FireServer({
                        ["OtherCharacter"] = v.Character,
                        ["LV"] = Vector3.new(0, 900000000, 0)})
                    
                end
                print('Flung '..v.Name)
            end
        end
    end


while wait() do
    if rageMode == true then
        spawn(fling) 
    end
end







