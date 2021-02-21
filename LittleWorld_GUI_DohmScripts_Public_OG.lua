local thisPlayer = game:GetService("Players").LocalPlayer
local foodOBJ = game:GetService("Workspace").FoodObjects
local AntiIdle = game:service "VirtualUser"
local AchieveRemote = game:GetService("ReplicatedStorage").Remotes.Achievements
local lagRemote = game:GetService("ReplicatedStorage").Remotes.Equip
local gameChests = game:GetService("Workspace").Chests:GetChildren()
local otherPlayers = game:GetService("Players")
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local attackVector = Vector3.new(0, 1.5, 0)

local tween_s = game:service "TweenService"
local info = TweenInfo.new(1, Enum.EasingStyle.Quad)
local clipping

local invisT
local HideT
local lagT

game:service("Players").LocalPlayer.Idled:connect(
    function()
        AntiIdle:CaptureController()
        AntiIdle:ClickButton2(Vector2.new())
    end
)

local UI =
    Material.Load(
    {
        Title = "Little World - DohmScripts - Version (1.2)",
        Style = 3,
        SizeX = 400,
        SizeY = 300,
        Theme = "Dark"
    }
)

local AutoCollect =
    UI.New(
    {
        Title = "Auto Collect"
    }
)

AutoCollect.Toggle(
    {
        Text = "Auto Collect Chests",
        Callback = function(bool)
            chestT = bool
            if chestT then
                collectChest()
            end
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Teleports to a chest attacks until chest is depleted and then moves on. Make Sure to Turn off auto equipped next Bug in settings,  level 20 and 21 ants to name a few."
                    }
                )
            end
        }
    }
)

AutoCollect.Toggle(
    {
        Text = "Auto Collect Food",
        Callback = function(bool)
            foodT = bool
            if foodT then
                pcall(getFruit())
            end
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Auto Collects all the food. Make Sure to Turn off auto equipped next Bug in settings, also seems to not want to work with certain bugs equipped, level 20 and 21 ants to name a few."
                    }
                )
            end
        }
    }
)

local Ach =
    UI.New(
    {
        Title = "Achievements"
    }
)

Ach.Button(
    {
        Text = "Claim Dummy Bully",
        Callback = function()
            Claim("Dummy Bully")
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Hit the dummy (find in towns)."
                    }
                )
            end
        }
    }
)

Ach.Button(
    {
        Text = "Berry Devourer",
        Callback = function()
            Claim("Berry Devourer")
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Collect berries around the map."
                    }
                )
            end
        }
    }
)

Ach.Button(
    {
        Text = "Banana Hunter",
        Callback = function()
            Claim("Banana Hunter")
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Collect bananas around the map."
                    }
                )
            end
        }
    }
)

Ach.Button(
    {
        Text = "Chest Predator",
        Callback = function()
            Claim("Chest Predator")
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "EXP gained from hitting chests."
                    }
                )
            end
        }
    }
)

Ach.Button(
    {
        Text = "Claim Murderer",
        Callback = function()
            Claim("Murderer")
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Kill other bugs"
                    }
                )
            end
        }
    }
)

Ach.Button(
    {
        Text = "Claim Dedication",
        Callback = function()
            Claim("Dedication!")
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Stay in-game."
                    }
                )
            end
        }
    }
)

Ach.Button(
    {
        Text = "Claim Champion",
        Callback = function()
            Claim("Champion!")
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Win in events."
                    }
                )
            end
        }
    }
)

Ach.Button(
    {
        Text = "Claim Flag",
        Callback = function()
            Claim("Flag Keeper")
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Own/keep a flag."
                    }
                )
            end
        }
    }
)

local Plr =
    UI.New(
    {
        Title = "Player"
    }
)

Plr.Dropdown(
    {
        Text = "Attack Player [Coming Soon]",
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Coming 2/6/2021"
                    }
                )
            end
        }
    }
)
Plr.Toggle(
    {
        Text = "Attack All",
        Callback = function(bool)
            autoKill = bool
            if autoKill then
                pcall(killAll)
            end
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Attacks all the players, works best with godmode, hide tags, and being invisiable!"
                    }
                )
            end
        }
    }
)
Plr.TextField(
    {
        Text = "Adjust Attack Vector",
        Callback = function(text)
            attackVector = Vector3.new(text:match("(.+), (.+), (.+)"))
            print(attackVector)
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Allows you to change the position of your body for better killin if the Default Value is not Satisfying you the default value is [ 0, 1.5, 0 ], all the bugs in the game have different size hit boxs. Format has to be 0, 0, 0  or for reference x, y, z cords, Example 1.0, 0, 3.0 would translate too 1, 0, 3 you can't just put 1, 0, 3 it has to be like inputted like i described, it can be decimal numbers like 1.2 or 0.25 etc"
                    }
                )
            end
        }
    }
)

local Settings =
    UI.New(
    {
        Title = "Settings"
    }
)


Settings.Toggle(
    {
        Text = "NoCLIP",
        Callback = function(bool)
            clipping = bool
            if clipping == true then
                Noclipping = game:GetService("RunService").Stepped:connect(clipLoop)
            end end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Experimental, maybe lags the server?"
                    }
                )
            end
        }
    }
)


Settings.Button(
    {
        Text = "Godmode",
        Callback = function()
            spawn(gMode)
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Your a GOD now, jesus christ do whatever you want."
                    }
                )
            end
        }
    }
)

Settings.Button(
    {
        Text = "HideTag",
        Callback = function()
            HideT = true
            spawn(hideName)
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Hides your name tag, use the reset character button to get it back!"
                    }
                )
            end
        }
    }
)

Settings.Button(
    {
        Text = "Invisible",
        Callback = function()
            invisT = true
            spawn(invis)
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "I hope your wearing cloths atleast...use reset character button to disable"
                    }
                )
            end
        }
    }
)

Settings.Button(
    {
        Text = "Reset Character",
        Callback = function()
            invisT = false
            HideT = false
            savePlace()
        end,
        Menu = {
            ["Description"] = function(self)
                UI.Banner(
                    {
                        Text = "Use this to turn off Godmode, Reset your Tags, Turn you visiable again, resets your character and teleports you back to location you were at."
                    }
                )
            end
        }
    }
)

function Claim(Ach)
    game:GetService("ReplicatedStorage").Remotes.Achievements:FireServer("Claim Achievement", Ach)
end

function gMode()
    if thisPlayer.Character:FindFirstChild("BodyHitbox") then
        thisPlayer.Character.BodyHitbox:Destroy()
    end
end

function savePlace()
    local beforeDeath = thisPlayer.Character.HumanoidRootPart.CFrame
    wait()
    thisPlayer.Character.Humanoid.Health = 0
    wait(3)
    thisPlayer.Character.HumanoidRootPart.CFrame = beforeDeath
end

function invis()
    while invisT do
        wait()
        if thisPlayer.Character:FindFirstChild("Main") then
            thisPlayer.Character.Main:Destroy()
        end

        if thisPlayer.Character:FindFirstChild("NotHead") then
            thisPlayer.Character.NotHead:Destroy()
        end
    end
end

function hideName()
    while HideT do
        wait()
        if thisPlayer.Character.HumanoidRootPart:FindFirstChild("CustomName") then
            thisPlayer.Character.HumanoidRootPart.CustomName:Destroy()
        end
    end
end

function lagServer()
    while lagT do
        lagRemote:FireServer("Bug", "1")
        game:GetService("RunService").Heartbeat:Wait()
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

function collectChest()
    for _, v in pairs(gameChests) do
        if v:FindFirstChild("ChestHitbox") then
            print("found")
            thisPlayer.Character.HumanoidRootPart.CFrame = v.ChestHitbox.CFrame
            repeat
                game:GetService("ReplicatedStorage").Remotes.Attack:FireServer()
                game:GetService("RunService").Heartbeat:Wait()
            until v.Health == 1 or v == nil or v.Parent == nil or v:FindFirstChild("ChestHitbox") == nil or
                chestT == false
        end
    end
end

function collectFood()
    while wait(0.4) do
        for _, v in pairs(findFoodFolder():GetChildren()) do
            if v and v.Parent then
                if not findFoodFolder():FindFirstChild(v) and foodT then
                    print("CollectFood!")
                    gameTick = tick()
                    repeat
                        thisPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        game:GetService("RunService").RenderStepped:Wait()
                    until v.Parent == nil or s == nil or foodT == false
                    wait(0.4)
                end
            end
        end
    end
end

function getFruit()
    if foodT then
        while wait(1) do
        local TargetDistance = math.huge
        local Target
        for _, v in pairs(foodOBJ:GetChildren()) do
            if v and v.Parent and foodT then
                if not foodOBJ:FindFirstChild(v) then
                    local magnitude = (thisPlayer.Character.HumanoidRootPart.CFrame.p - v.CFrame.p).Magnitude
                    if magnitude < TargetDistance then
                        TargetDistance = magnitude
                        Target = v
                    end
                end
            end
        end
        local cframe = CFrame.new(Target.Position)
        local tween =
            tween_s:Create(thisPlayer.Character["HumanoidRootPart"], info, {CFrame = cframe * CFrame.new(0, 5, 0)})
        if tween.Completed.Wait ~= Enum.PlaybackState.Completed then
            tween:Play()
            tween.Completed:Wait()
        end
    end
end
end

function killAll()
    while autoKill do
        for _, v in pairs(otherPlayers:GetPlayers()) do
            if v ~= thisPlayer and v.Settings.Safe.Value == false then
                repeat
                    if v and v.Character then
                        thisPlayer.Character.HumanoidRootPart.CFrame =
                            v.Character.BodyHitbox.CFrame * CFrame.new(attackVector)
                        game:GetService("ReplicatedStorage").Remotes.Attack:FireServer()
                        game:GetService("RunService").Heartbeat:Wait()
                    end
                until v == nil or v.Character == nil or v.Character.Humanoid.Health == 0 or
                    thisPlayer.Character.Humanoid.Health == 0 or
                    v.Settings.Safe.Value == true or
                    autoKill == false
            end
        end
    end
end

function findFoodFolder()
    if foodT then
        print("FindFood")
        for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:isA("TouchTransmitter") then
                local count = string.len(v.Parent.Name)
                if count == 6 and v.Parent.Name ~= "Hitbox" and v.Parent.Parent:IsA("Folder") then
                    return v.Parent.Parent
                end
            end
        end
    end
end