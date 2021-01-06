thisPlayer = game:GetService("Players").LocalPlayer
otherPlayer = game:GetService("Players")

local flingStart = game:GetService("ReplicatedStorage").Remotes.KickOtherPlayer

local rageMode
local targeted
local customXYZ
local flingMulti


 
gui = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/DohmBoyOG/UI/main/FluxUI.lua"))()

local main = gui:Window('Gods of Glory','by DohmBoyOG')
 
local player_options = main:Tab('Player','')
local world_options = main:Tab('World','')
local teleport_options = main:Tab('Teleporting','')
local other_options = main:Tab('Other','')

player_options:Label('Fling Menu')
player_options:Line()
player_options:Button('Fling all','Throws all the players are around the map', function() spawn(fling) end)
player_options:Button('Alien Abduction [Fling]','This kinda looks like an alien abduction! Flings all player high in the air, make sure you only hit the button once and wait!', function() spawn(flingToMoon) end)
player_options:Toggle('Rage Mode','Flings players continuously',false, function(bool) rageMode = bool end)
player_options:Line()
local fling_drop = player_options:Dropdown('Player List', {}, function(value) targeted = value end)
player_options:Button('Fling player','Flings Targeted Player', function() spawn(targetPlayer) end)
player_options:Line()
player_options:Button('Custom Fling all','Throws all the players are around the map with Custom Variables!', function() spawn(flingCustom) end)
player_options:Button('Custom Fling player','Select player from dropdown, then use the text input to choose your custom variables and off they go!', function() spawn(flingCustom) end)
player_options:Toggle('Custom Rage Mode','Flings players continuously, but with custom variables!',false, function(bool) customRageMode = bool end)
player_options:Textbox('Custom Vector3', 'If you would like to fling players a certain direction using XYZ cords, EX 0, 900000000, 0 and hit enter', false, function(value) customXYZ = tonumber(value) end)
player_options:Textbox('Fling Multiplyer','How many times to fling a player each loop, the higher the number the more extreme the fling, no decimals! hit enter', false, function(value) flingMulti = tonumber(value) end)

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

function playerJoined(player)
    fling_drop:Add(player.Name)
    print('Adding '..player.Name..' to list')
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





