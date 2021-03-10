local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayers = game:GetService("Players")

thisPlayer.CharacterAdded:connect(function()
    getgenv().Fly = false
    getgenv().Killall = false
    getgenv().Autolevel = false
    levelState = false
    killState = false
    moveState = false
    flyState = false
    thisPlayer.Character:WaitForChild('Humanoid').WalkSpeed = 16
    thisPlayer.PlayerGui:WaitForChild('Shop')
    loadGui()
end
)

local levelState = false
local killState = false
local moveState = false
local flyState = false



function loadGui()
local hacks = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local AutoLevelButton = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel_3 = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local KillButton = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel_5 = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local MovementButton = Instance.new("TextButton")
local TextLabel_6 = Instance.new("TextLabel")
local ImageLabel_3 = Instance.new("ImageLabel")
local TextLabel_7 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local FlyButton = Instance.new("TextButton")
local TextLabel_8 = Instance.new("TextLabel")
local ImageLabel_4 = Instance.new("ImageLabel")
local TextLabel_9 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local UIGradient = Instance.new("UIGradient")
local TextLabel_10 = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")


hacks.Name = "hacks"
hacks.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Shop
hacks.AnchorPoint = Vector2.new(0, 1)
hacks.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
hacks.Position = UDim2.new(0, 140, 1, -150)
hacks.Size = UDim2.new(0.159999996, 0, 0.200000003, 0)
hacks.SizeConstraint = Enum.SizeConstraint.RelativeXX
hacks.Visible = false

TextLabel.Parent = hacks
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 0.0299999993, 0)
TextLabel.Size = UDim2.new(1, 0, 0.100000001, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Dohm Hacks     "
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 25.000
TextLabel.TextWrapped = true

TextButton.Parent = hacks
TextButton.AnchorPoint = Vector2.new(1, 0)
TextButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
TextButton.Position = UDim2.new(1, -2, 0, 2)
TextButton.Size = UDim2.new(0.140000001, 0, 0.119999997, 0)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

Frame.Parent = hacks
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.5, 0, 0.550000012, 0)
Frame.Size = UDim2.new(0.920000017, 0, 0.800000012, 0)

UIListLayout.Parent = Frame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.0199999996, 0)

AutoLevelButton.Name = "AutoLevelButton"
AutoLevelButton.Parent = Frame
AutoLevelButton.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
AutoLevelButton.Size = UDim2.new(1, 0, 0.239999995, 0)
AutoLevelButton.Font = Enum.Font.SourceSans
AutoLevelButton.Text = ""
AutoLevelButton.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoLevelButton.TextSize = 14.000

TextLabel_2.Parent = AutoLevelButton
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.300000012, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0.600000024, 0, 0.5, 0)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Auto Level"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel.Parent = AutoLevelButton
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Size = UDim2.new(0.270000011, 0, 1, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=21311470"

TextLabel_3.Parent = AutoLevelButton
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.300000012, 0, 0.5, 0)
TextLabel_3.Size = UDim2.new(0.600000024, 0, 0.400000006, 0)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "Free"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 255, 106)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

UICorner.Parent = AutoLevelButton

KillButton.Name = "KillButton"
KillButton.Parent = Frame
KillButton.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
KillButton.Size = UDim2.new(1, 0, 0.239999995, 0)
KillButton.Font = Enum.Font.SourceSans
KillButton.Text = ""
KillButton.TextColor3 = Color3.fromRGB(0, 0, 0)
KillButton.TextSize = 14.000

TextLabel_4.Parent = KillButton
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.300000012, 0, 0, 0)
TextLabel_4.Size = UDim2.new(0.600000024, 0, 0.5, 0)
TextLabel_4.Font = Enum.Font.SourceSansBold
TextLabel_4.Text = "Kill All"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel_2.Parent = KillButton
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.Size = UDim2.new(0.270000011, 0, 1, 0)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=1171019687"

TextLabel_5.Parent = KillButton
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.300000012, 0, 0.5, 0)
TextLabel_5.Size = UDim2.new(0.600000024, 0, 0.400000006, 0)
TextLabel_5.Font = Enum.Font.SourceSansBold
TextLabel_5.Text = "Free"
TextLabel_5.TextColor3 = Color3.fromRGB(0, 255, 106)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

UICorner_2.Parent = KillButton

MovementButton.Name = "MovementButton"
MovementButton.Parent = Frame
MovementButton.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
MovementButton.Size = UDim2.new(1, 0, 0.239999995, 0)
MovementButton.Font = Enum.Font.SourceSans
MovementButton.Text = ""
MovementButton.TextColor3 = Color3.fromRGB(0, 0, 0)
MovementButton.TextSize = 14.000

TextLabel_6.Parent = MovementButton
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(0.300000012, 0, 0, 0)
TextLabel_6.Size = UDim2.new(0.600000024, 0, 0.5, 0)
TextLabel_6.Font = Enum.Font.SourceSansBold
TextLabel_6.Text = "2x Movement"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel_3.Parent = MovementButton
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.Size = UDim2.new(0.270000011, 0, 1, 0)
ImageLabel_3.Image = "http://www.roblox.com/asset/?id=94366992"

TextLabel_7.Parent = MovementButton
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.Position = UDim2.new(0.300000012, 0, 0.5, 0)
TextLabel_7.Size = UDim2.new(0.600000024, 0, 0.400000006, 0)
TextLabel_7.Font = Enum.Font.SourceSansBold
TextLabel_7.Text = "Free"
TextLabel_7.TextColor3 = Color3.fromRGB(0, 255, 106)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true
TextLabel_7.TextXAlignment = Enum.TextXAlignment.Left

UICorner_3.Parent = MovementButton

FlyButton.Name = "FlyButton"
FlyButton.Parent = Frame
FlyButton.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
FlyButton.Size = UDim2.new(1, 0, 0.239999995, 0)
FlyButton.Font = Enum.Font.SourceSans
FlyButton.Text = ""
FlyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlyButton.TextSize = 14.000

TextLabel_8.Parent = FlyButton
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.Position = UDim2.new(0.300000012, 0, 0, 0)
TextLabel_8.Size = UDim2.new(0.600000024, 0, 0.5, 0)
TextLabel_8.Font = Enum.Font.SourceSansBold
TextLabel_8.Text = "Fly"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true
TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel_4.Parent = FlyButton
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BackgroundTransparency = 1.000
ImageLabel_4.Size = UDim2.new(0.270000011, 0, 1, 0)
ImageLabel_4.Image = "http://www.roblox.com/asset/?id=163824143"

TextLabel_9.Parent = FlyButton
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.Position = UDim2.new(0.300000012, 0, 0.5, 0)
TextLabel_9.Size = UDim2.new(0.600000024, 0, 0.400000006, 0)
TextLabel_9.Font = Enum.Font.SourceSansBold
TextLabel_9.Text = "Free"
TextLabel_9.TextColor3 = Color3.fromRGB(0, 255, 106)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true
TextLabel_9.TextXAlignment = Enum.TextXAlignment.Left

UICorner_4.Parent = FlyButton

UICorner_5.Parent = hacks

ImageButton.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Shop.Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(172, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Size = UDim2.new(0, 100, 0, 40)
ImageButton.Image = "http://www.roblox.com/asset/?id=6011594188"
ImageButton.ScaleType = Enum.ScaleType.Crop
ImageButton.SliceCenter = Rect.new(14, 14, 14, 14)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))}
UIGradient.Rotation = 90
UIGradient.Parent = ImageButton

TextLabel_10.Parent = ImageButton
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.Size = UDim2.new(1, 0, 1, 0)
TextLabel_10.Font = Enum.Font.SourceSansBold
TextLabel_10.Text = "Hacks"
TextLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.TextSize = 30.000

UICorner_6.Parent = ImageButton


ImageButton.MouseButton1Click:Connect(
    function()
        if hacks.Visible == false then
            hacks.Visible = true
        else
            hacks.Visible = false
                
        end
    end
)

AutoLevelButton.MouseButton1Click:Connect(
    function()
        if levelState == false then
            notify('Auto Level Turned on')

            levelState = true
            getgenv().Autolevel = true
            levelUp()
        else
            notify('Auto Level Turned off')

            levelState = false
            getgenv().Autolevel = false
 
        end
    end
)


KillButton.MouseButton1Click:Connect(
    function()
        if killState == false then
            notify('Kill All Turned on')

            killState = true
            getgenv().Killall = true
            killAllPlayers()
        else
            notify('Kill All Turned off')

            killState = false
            getgenv().Killall = false
        end
    end
)

MovementButton.MouseButton1Click:Connect(
    function()
        if moveState == false then
            notify('2x Movement Turned on')

            moveState = true
            thisPlayer.Character.Humanoid.WalkSpeed = 60
      
    
        else
            notify('2x Movement Turned off')

            moveState = false
            thisPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end
)

FlyButton.MouseButton1Click:Connect(
    function()
        if flyState == false then
            notify('Fly Turned on')

            flyState = true
            getgenv().Fly = true
            Fly()
      
    
        else
            notify('Fly Turned off')
            

            flyState= false
            getgenv().Fly = false
            
        end
    end
)

TextButton.MouseButton1Click:Connect(
    function()
        hacks.Visible = false 
    end
)


function getCurrentTool()
    if thisPlayer.Character then
        for _, v in pairs(thisPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                return v.Name
            end
        end
    end
end

function levelUp()
    while wait() and getgenv().Autolevel do
        if thisPlayer.Character and thisPlayer.Character.HumanoidRootPart and getCurrentTool() then
            game:GetService("Players").LocalPlayer.Character[getCurrentTool()].ExpRemote:FireServer()
        end
    end
end

function killAllPlayers()
    while wait() and getgenv().Killall do
        for _, v in pairs(otherPlayers:GetPlayers()) do
            if
                v ~= thisPlayer and thisPlayer.Character and v.Character and
                    not v.Character:FindFirstChild("ForceField") and
                    not v.Character:FindFirstChild("SafeTag")
             then
                repeat
                    for i = 1, 100 do
                        if
                            v ~= thisPlayer and thisPlayer.Character and v.Character and v.Character:FindFirstChild('Humanoid') and
                                not v.Character:FindFirstChild("ForceField") and
                                not v.Character:FindFirstChild("SafeTag") and v.Character.Humanoid ~= nil
                         then
                            game:GetService("Players").LocalPlayer.Character[getCurrentTool()].DamageRemote:FireServer(
                                v.Character.Humanoid
                            )
                            game:GetService("RunService").Heartbeat:wait()
                        end
                    end
                    game:GetService("RunService").Heartbeat:wait()

                until not v.Character or v.Character.Humanoid.Health == 0 or
                    v.Character:FindFirstChild("SafeTag") and
                        not thisPlayer.Character:FindFirstChild("HumanoidRootPart")
            end
        end
    end
end

function notify(txt)
game.StarterGui:SetCore("SendNotification", {
Title = "Function Activation Status"; 
Text = txt; 
Icon = "rbxassetid://6499052257"; 
Duration = 5; 
})
end

repeat wait()
   until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("UpperTorso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse


local plr = game.Players.LocalPlayer
local UpperTorso = plr.Character.UpperTorso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
    if getgenv().Fly then
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
        until not getgenv().Fly
        ctrl = {f = 0, b = 0, l = 0, r = 0}
        lastctrl = {f = 0, b = 0, l = 0, r = 0}
        speed = 0
        bg:Destroy()
        bv:Destroy()
        plr.Character.Humanoid.PlatformStand = false
    end
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
end

loadGui()
