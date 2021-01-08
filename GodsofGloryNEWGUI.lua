local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayer = game:GetService("Players")
local worlds = game:GetService("Workspace").GameWorlds



local flingStart = game:GetService("ReplicatedStorage").Remotes.KickOtherPlayer
local remote = game:GetService("ReplicatedStorage").Remotes.BreakBuilding

local rageMode
local targeted
local customXYZ
local selWorld
local flingMulti
local clipping
local customMana

local worldTeleports = {
	['Peaceful Kingdom'] =  CFrame.new(194.883224, 21.1433105, -720.15564),
	['Ancient Greece'] = CFrame.new(8600.17578, 21.1433105, -585.396606),
	['Kingdom Of Egypt'] = CFrame.new(20500.3047, 40.8433037, -759.361328),
	['Viking Conquests'] = CFrame.new(35417.9727, 21.1433105, -797.196289),
	['Aztec Empire'] = CFrame.new(53541.5742, 21.1433105, -602.596558),
	['Feudal Japan'] = CFrame.new(217.77597, 21.1433105, 13310.2051),
	['Lost Atlantis'] = CFrame.new(8721.17578, 21.1433105, 13434.8027),
	['Indian Raj']  = CFrame.new(20136.9746, 21.1433105, 13405.8027),
	['The Underworld'] = CFrame.new(35554.4688, 22.1438255, 13455.209)
    
}
 
gui = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/DohmBoyOG/UI/main/FluxUI.lua"))()

local main = gui:Window('Gods of Glory','by DohmBoyOG')
 
local player_options = main:Tab('Player','')
local world_options = main:Tab('World','')
local teleport_options = main:Tab('Teleporting','')
local settings_options = main:Tab('Settings','')
local about_options = main:Tab('About','')

player_options:Label('Fling Menu')
player_options:Line()
player_options:Button('[Button] Fling all','Throws all the players are around the map', function() spawn(fling) end)
player_options:Button('[Button] Alien Abduction [Fling]','This kinda looks like an alien abduction! Flings all player high in the air, make sure you only hit the button once and wait!', function() spawn(flingToMoon) end)
player_options:Toggle('Rage Mode','Flings players continuously',false, function(bool) rageMode = bool end)
player_options:Line()
local fling_drop = player_options:Dropdown('Player List', {}, function(value) targeted = value end)
player_options:Button('[Button] Fling player','Flings Targeted Player', function() spawn(targetPlayer) end)
player_options:Line()
player_options:Button('[Button] Custom Fling all','Throws all the players are around the map with Custom Variables!', function() spawn(flingCustom) end)
player_options:Button('[Button] Custom Fling player','Select player from dropdown, then use the text input to choose your custom variables and off they go!', function() spawn(flingCustom) end)
player_options:Toggle('Custom Rage Mode','Flings players continuously, but with custom variables!',false, function(bool) customRageMode = bool end)
player_options:Textbox('Custom Vector3', 'If you would like to fling players a certain direction using XYZ cords, EX 0, 900000000, 0 and hit enter', false, function(value) customXYZ = tonumber(value) end)
player_options:Textbox('Fling Multiplyer','How many times to fling a player each loop, the higher the number the more extreme the fling, no decimals! hit enter', false, function(value) flingMulti = tonumber(value) end)
player_options:Line()
player_options:Label('Mana Menu')
player_options:Textbox('Mana Amount', 'Input the amount of mana you want to give yourself and press enter', false, function(value) customMana = tonumber(value)  end)
player_options:Button('[Button] Submit','Gives you the amount you put into the Textbox, try to go to crazy all at once or it will kick you!', function() giveAmount(customMana) end)
player_options:Button('[Button] Auto Mana', 'Gives you lots of mana with the click of a button!', function() autoMana() end)
player_options:Line()
player_options:Label('Relic Menu')
player_options:Button('[Button] Give Relic','Gives you a Relic DUH, there random!', function() game:GetService("ReplicatedStorage").Remotes.Relic:InvokeServer() end)



settings_options:Label('Settings Menu')
settings_options:Line()
settings_options:Button('[Button] Network Bypass', 'Only Needed to be clicked once per server join, required for certain features to work.', function() netBypass() end)
settings_options:Button('[Button] Enable Flight', 'Its a bird, its a plane, no its SUPERMAN! press E to toggle flight,lasts until you exit game', function() Fly() end)
settings_options:Button('[Button] Enable Guard Godmode', 'Guards Cant Hurt you anymore!', function() spawn(gGod) end)
settings_options:Button('[Button] Twitter Codes', 'Get all the latest twitter codes printed to the console!', function() twitterCodes() end)
settings_options:Toggle('NO CLIP', 'You should know what this does by now.', false, function(bool) clipping = bool if clipping == true then Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop) else Noclipping:Disconnect() end end)
    

world_options:Label('World Destruction Menu')
settings_options:Line()
world_options:Button('[Button] Destroy all','Self Destructs all Destructiables in all Worlds on the server, there are 9', function() spawn(destructAllWorld) end)

teleport_options:Label('World Menu')
teleport_options:Line()
teleport_options:Dropdown('Worlds', {'Peaceful Kingdom', 'Ancient Greece', 'Kingdom Of Egypt', 'Viking Conquests', 'Aztec Empire', 'Fuedal Japan', 'Lost Atlantis', 'Indian Raj', 'The Underworld'}, function(value) selWorld = value end)
teleport_options:Button('[Button] Teleport','Teleports you to selected World', function() wTeleport() end)

about_options:Label('                                       Gods Of Glory GUI \n                                              Version 1.0')
about_options:Line()
about_options:Label('If you have any issues or questions\n please feel free to contact me on discord')
about_options:Label('Press Left-Ctrl to toggle!')
about_options:Line()
about_options:Label('Discord: DohmBoyOG#0313')
about_options:Label('Github: https://short.dohmscripts.com/ucg')
about_options:Label('Youtube: https://short.dohmscripts.com/DohmBoyOGYT')
about_options:Label('Showcase: https://short.dohmscripts.com/God-Show-Case')

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



function fling()
    for _, v in pairs(otherPlayer:GetPlayers()) do
        if v ~= thisPlayer then
            flingStart:FireServer({
                ["OtherCharacter"] = v.Character,
                ["LV"] = Vector3.new(math.random(5000), math.random(5000), math.random(5000))})
                --print('kicking '..v.name)
            end
        end
end

function customRage()
    for _, v in pairs(otherPlayer:GetPlayers()) do
        if v ~= thisPlayer then
            for i = 1 , flingMulti do
                flingStart:FireServer({
                    ["OtherCharacter"] = v.Character,
                    ["LV"] = Vector3.new(customXYZ)})
            end
        end
    end
end

function destructAllWorld()
    for _, v in pairs(worlds:GetChildren()) do
        if v:IsA("Folder") then
            for _, destructs in pairs(v:GetDescendants()) do
                if destructs:IsA("Folder") and destructs.Name == "Destructibles" then
                    for _, begin in pairs(destructs:GetChildren()) do
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

function targetPlayer()
    for _, v in pairs(game.Players:GetPlayers()) do
        if targeted ~= thisPlayer and targeted ~= nil and targeted == v.Name then
            print(v.Character.HumanoidRootPart.CFrame)
            flingStart:FireServer({
                ["OtherCharacter"] = v.Character,
                ["LV"] = Vector3.new(math.random(5000), math.random(5000), math.random(5000))
                })
        end
    end
    print('Throwing around '..targeted..' like there nothing.')
end 

function customTargetFling()
    for _, v in pairs(game.Players:GetPlayers()) do
        if targeted ~= thisPlayer and targeted ~= nil and targeted == v.Name then
            for i = 1 , flingMulti do
                flingStart:FireServer({
                    ["OtherCharacter"] = v.Character,
                    ["LV"] = Vector3.new(customXYZ)
                    
                })
            end
        end
    end
    print('Throwing around '..targeted..' like there nothing.')
end


function flingToMoon()
    print('Abducting All Players On The Server, Watch the fun :D')
    for _, v in pairs(otherPlayer:GetPlayers()) do
        if v ~= thisPlayer then
            for i = 1 , 1000 do
                flingStart:FireServer({
                    ["OtherCharacter"] = v.Character,
                    ["LV"] = Vector3.new(0, 900000000, 0)})
                --print('kicking '..v.name)
            end
        end
    end
end

function flingCustom()
    for _, v in pairs(otherPlayer:GetPlayers()) do
        if v ~= thisPlayer then
            for i = 1 , flingMulti do
                flingStart:FireServer({
                    ["OtherCharacter"] = v.Character,
                    ["LV"] = Vector3.new(customXYZ)})
                --print('kicking '..v.name)
            end
        end
    end
end


function giveAmount(m)
    local remote = game:GetService("ReplicatedStorage").Remotes.GiveMana
    remote:FireServer({
        ["Value"] = m
    })
end

function autoMana()
    local remote = game:GetService("ReplicatedStorage").Remotes.GiveMana
    remote:FireServer({
        ["Value"] = 900000000000
    })
end
    



for _, v in pairs(otherPlayer:GetPlayers()) do
    if v ~= thisPlayer then
        fling_drop:Add(v.Name)
    end
end
print('Init Box Complete')

function playerLeft(player)
    items = game:GetService("CoreGui").FluxLib.MainFrame.ContainerFolder.Container.Dropdown.Title.DropItemHolder:GetChildren()
    for _, v in pairs(items) do
        if v.Name == 'Item' and v.Text == player.Name then
            v:Destroy()
            print('Removing '..player.Name..' from list')
        end
    end
end

function wTeleport()
    print('1')
    for wrld, pos in pairs(worldTeleports) do
        if wrld == selWorld then
            print(pos)
            thisPlayer.Character.HumanoidRootPart.CFrame = pos
        end
    end
end

            

function playerJoined(player)
    fling_drop:Add(player.Name)
    print('Adding '..player.Name..' to list')
end

function NoclipLoop()
		if thisPlayer.Character ~= nil then
			for _, child in pairs(thisPlayer.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
					child.CanCollide = false
				end
			end
		end
end

repeat
    wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and
    game.Players.LocalPlayer.Character:findFirstChild("UpperTorso") and
    game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat
    wait()
until mouse
local plr = game.Players.LocalPlayer
local UpperTorso = plr.Character.UpperTorso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
    local bg = Instance.new("BodyGyro", UpperTorso)
    bg.P = 9e4
    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    bg.cframe = UpperTorso.CFrame
    local bv = Instance.new("BodyVelocity", UpperTorso)
    bv.velocity = Vector3.new(0, 0.1, 0)
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
    repeat
        wait()
        plr.Character.Humanoid.PlatformStand = true
        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
            speed = speed + .5 + (speed / maxspeed)
            if speed > maxspeed then
                speed = maxspeed
            end
        elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
            speed = speed - 1
            if speed < 0 then
                speed = 0
            end
        end
        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
            bv.velocity =
                ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f + ctrl.b)) +
                ((game.Workspace.CurrentCamera.CoordinateFrame *
                    CFrame.new(ctrl.l + ctrl.r, (ctrl.f + ctrl.b) * .2, 0).p) -
                    game.Workspace.CurrentCamera.CoordinateFrame.p)) *
                speed
            lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
        elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
            bv.velocity =
                ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f + lastctrl.b)) +
                ((game.Workspace.CurrentCamera.CoordinateFrame *
                    CFrame.new(lastctrl.l + lastctrl.r, (lastctrl.f + lastctrl.b) * .2, 0).p) -
                    game.Workspace.CurrentCamera.CoordinateFrame.p)) *
                speed
        else
            bv.velocity = Vector3.new(0, 0.1, 0)
        end
        bg.cframe =
            game.Workspace.CurrentCamera.CoordinateFrame *
            CFrame.Angles(-math.rad((ctrl.f + ctrl.b) * 50 * speed / maxspeed), 0, 0)
    until not flying
    ctrl = {f = 0, b = 0, l = 0, r = 0}
    lastctrl = {f = 0, b = 0, l = 0, r = 0}
    speed = 0
    bg:Destroy()
    bv:Destroy()
    plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(
    function(key)
        if key:lower() == "e" then
            if flying then
                flying = false
            else
                flying = true
                Fly()
            end
        elseif key:lower() == "w" then
            ctrl.f = 1
        elseif key:lower() == "s" then
            ctrl.b = -1
        elseif key:lower() == "a" then
            ctrl.l = -1
        elseif key:lower() == "d" then
            ctrl.r = 1
        end
    end
)
mouse.KeyUp:connect(
    function(key)
        if key:lower() == "w" then
            ctrl.f = 0
        elseif key:lower() == "s" then
            ctrl.b = 0
        elseif key:lower() == "a" then
            ctrl.l = 0
        elseif key:lower() == "d" then
            ctrl.r = 0
        end
    end
)

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



game.Players.PlayerRemoving:Connect(playerLeft)
game.Players.PlayerAdded:Connect(playerJoined)


while wait() do
    if rageMode == true then
        spawn(fling)
    end
    
    if customRageMode == true then
        spawn(customRage)
    end
end

    
        
    
        






