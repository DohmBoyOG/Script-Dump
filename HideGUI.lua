local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayer = game:GetService("Players")
local gameLobby = game:GetService("Workspace").Lobby
local gameEnd = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MapSelectionFrame.Visible


local esp
local clipping
local beTagged

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/UI/main/PlaystationUI.lua"))()

local UI = GUI:CreateWindow("Hide and Seek Extreme - DohmScripts - GUI v1.0")

local Home = UI:addPage("Home", 2, true, 6)
local Player = UI:addPage("Player", 2, false, 6)
local Settings = UI:addPage("Settings", 2, false, 6)

Home:addLabel("Hide and Seek Extreme GUI v1.0")
Home:addLabel("")
Home:addLabel("Discord: DohmBoyOG#0313")
Home:addLabel("Youtube: https://short.dohmscripts.com/p3s")
Home:addLabel("Github: https://short.dohmscripts.com/1m5")
Home:addLabel("")
Home:addLabel("Special Mentions:")
Home:addLabel("none")

Player:addLabel('Player Options', 'various options that are player related')
Player:addLabel('')
Player:addLabel('Hider', 'various options to be used as the hider')
Player:addButton('Ultimate Hiding Spot', function() portLobby() end) 
Player:addButton('Troll Seeker')
Player:addButton('Grab Coins', function() getCoins() end)
Player:addLabel('')
Player:addLabel('Seeker', 'various options to be used as the seeker')
Player:addLabel('')
Player:addButton('Instant Win', function() instantWin() end)
Player:addButton('Instant Win Farm', function() instantWinFarm() end)

Settings:addLabel('Setting Options', 'various settings to set settings')
Settings:addLabel('')
Settings:addToggle(
    "NO CLIP",
    function(bool)
        clipping = bool
        if clipping == true then
            Noclipping = game:GetService("RunService").Stepped:connect(clipLoop)
        else
            Noclipping:Disconnect()
        end
    end
)
Settings:addToggle(
    "Player ESP",
    function(bool)
        esp = bool
        if bool == false then
            trashBin()
        end
    end
)
Settings:addToggle(
    "No Tag",
    function(bool)
        beTagged = bool
    end
    
)
Settings:addButton('Unlock Gamepasses [Limited]' , function() loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/getGamePassv2.lua"))() end)


function isSeeker(p)
    if p.PlayerData.It.Value then
        return true
    else
        return false
    end
end

function isnil(thing)
    return (thing == nil)
end

local function round(n)
    return math.floor(tonumber(n) + 0.5)
end

function isSameTeam(Player, Player2)
    if isSeeker(Player) == isSeeker(Player2) then
        return true
    else
        return false
    end
end

function UpdatePlayerChams()
    if #game:GetService("Teams"):GetTeams() > 0 then
        for i, v in pairs(otherPlayer:GetPlayers()) do
            if v ~= thisPlayer and v:FindFirstChild('PlayerData') and not isSameTeam(v, thisPlayer) and isInGame(v) then
                pcall(
                    function()
                        if not isnil(v.Character) then
                            for _, k in pairs(v.Character:GetChildren()) do
                                if k:IsA "BasePart" and not k:FindFirstChild "Cham" then
                                    local cham = Instance.new("BoxHandleAdornment", k)
                                    cham.ZIndex = 10
                                    cham.Adornee = k
                                    cham.AlwaysOnTop = true
                                    cham.Size = k.Size
                                    cham.Transparency = .7
                                    cham.Color3 = Color3.new(1, 0, 0)
                                    cham.Name = "Cham"
                                end
                            end
                            if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild "NameEsp" then
                                local bill = Instance.new("BillboardGui", v.Character.Head)
                                bill.Name = "NameEsp"
                                bill.Size = UDim2.new(1, 200, 1, 30)
                                bill.Adornee = v.Character.Head
                                bill.AlwaysOnTop = true
                                local name = Instance.new("TextLabel", bill)
                                name.TextWrapped = true
                                name.Text =
                                    (v.Name ..
                                    " " ..
                                        round(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                v.Character.Head.Position).Magnitude / 3
                                        ) ..
                                            "m")
                                name.Size = UDim2.new(1, 0, 1, 0)
                                name.TextYAlignment = "Top"
                                name.TextColor3 = Color3.new(1, 1, 1)
                                name.BackgroundTransparency = 1
                            else
                                v.Character.Head.NameEsp.TextLabel.Text =
                                    (v.Name ..
                                    " " ..
                                        round(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                v.Character.Head.Position).Magnitude / 3
                                        ) ..
                                            "m")
                            end
                        end
                    end
                )
            end
        end
    end
end

function trashBin()
    local chr = game.Players
    for _, v in pairs(chr:GetChildren()) do
        if not isnil(v.Character) then
            for _, k in pairs(v.Character:GetChildren()) do
                if k:FindFirstChild("Cham") then
                    k.Cham:Destroy()
                end
            end
            if not isnil(v.Character.Head) and not isnil(v.Character.Head:FindFirstChild("NameEsp")) then
                if v.Character.Head:FindFirstChild("NameEsp") then
                    v.Character.Head.NameEsp:Destroy()
                end
            end
        end
    end
end

function isInGame(p)
    if p.PlayerData.InGame.Value then
        return true
    else
        return false
    end
end

function instantWin()
    v = otherPlayer:GetPlayers()
    for i = 1, #v do
        t = v[i]
        if t ~= thisPlayer and t:FindFirstChild('PlayerData') and isInGame(t) then
            thisPlayer.Character.HumanoidRootPart.CFrame = t.Character.HumanoidRootPart.CFrame
            wait(0.3)
        end
    end
end


function instantWinFarm()
    v = otherPlayer:GetPlayers()
    for i = 1, #v - 1 do
        t = v[i]
        if t ~= thisPlayer and t:FindFirstChild('PlayerData') and isInGame(t) then
            thisPlayer.Character.HumanoidRootPart.CFrame = t.Character.HumanoidRootPart.CFrame
            wait(0.3)
        end
        print(t.Name)
    end
    portLobby()
    --farmPlayers()
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

function getCoins()
    for _, v in pairs(game:GetService("Workspace").GameObjects:GetDescendants()) do
        if v:IsA("TouchTransmitter") then
            firetouchinterest(
                v.Parent,
                thisPlayer.Character.HumanoidRootPart,
                1,
                wait() and firetouchinterest(v.Parent, thisPlayer.Character.HumanoidRootPart, 0)
            )
        end
    end
end

function portLobby()
    for _, v in pairs(gameLobby:GetChildren()) do
        if v:IsA("Part") and v.Name == "BasePlate" and v.BrickColor.Name == "Ghost grey" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, 10, 0)
        end
    end
end

function isOver()
    if gameEnd then
        return true
    else
        return false
    end
end

    
function farmPlayers()
    while not isOver() do
        v = otherPlayer:GetPlayers()
        for i = 1, #v do
            t = v[i]
            if t ~= thisPlayer and t.Character and t:FindFirstChild("PlayerData") and not isInGame(t) then
                thisPlayer.Character.HumanoidRootPart.CFrame = t.Character.HumanoidRootPart.CFrame
                wait(0.3)
            end
        end
    end
end

function noTag()
    for _, v in pairs(otherPlayer:GetPlayers()) do
        if isSeeker(v) then
            local test =
                (thisPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
            if test <= 30 then
                thisPlayer.Character.HumanoidRootPart.CFrame =
                    game:GetService("Workspace").Map.SpawnLocations.Shamrock.CFrame * CFrame.new(0,10,0)
            end
        end
    end
end



        
    


while wait() do
    if esp == true then
        UpdatePlayerChams()
    end  
    
    if beTagged == true then
        noTag()
    end
end




--pcall(isSameTeam, {v, thisPlayer}
    




    

