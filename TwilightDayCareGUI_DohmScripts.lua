local BabyStealerGUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local topBar = Instance.new("Frame")
local title = Instance.new("TextLabel")
local thingsFrame = Instance.new("ScrollingFrame")
local parentsFrame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local poption = Instance.new("TextButton")
local babiesFrame = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local boption = Instance.new("TextButton")
local nameFrame = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local buttons = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local stealButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local sendButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local stuckButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local dropButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local closeButton = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")

local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayers = game:GetService("Players")

local parents = {}
local babies = {}
local choosing = {}

local selection

BabyStealerGUI.Name = "BabyStealerGUI"
BabyStealerGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = BabyStealerGUI
Main.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
Main.Position = UDim2.new(0.240624994, 0, 0.130555555, 0)
Main.Size = UDim2.new(0, 384, 0, 266)

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Main

topBar.Name = "topBar"
topBar.Parent = Main
topBar.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
topBar.Position = UDim2.new(0, 0, 0.00375939859, 0)
topBar.Size = UDim2.new(0, 384, 0, 27)

title.Name = "title"
title.Parent = topBar
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.2578125, 0, 0, 0)
title.Size = UDim2.new(0, 200, 0, 27)
title.Font = Enum.Font.SourceSans
title.Text = "Twilight Nightmare - UI by DohmBoyOG"
title.TextColor3 = Color3.fromRGB(14, 253, 14)
title.TextSize = 14.000

thingsFrame.Name = "thingsFrame"
thingsFrame.Parent = Main
thingsFrame.Active = true
thingsFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
thingsFrame.Position = UDim2.new(0.40625, 0, 0.157894731, 0)
thingsFrame.Size = UDim2.new(0, 215, 0, 209)

parentsFrame.Name = "parentsFrame"
parentsFrame.Parent = thingsFrame
parentsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
parentsFrame.BackgroundTransparency = 1.000
parentsFrame.Position = UDim2.new(0.0697674453, 0, 0.0562301725, 0)
parentsFrame.Size = UDim2.new(0, 94, 0, 185)
parentsFrame.ZIndex = 999999999

UIListLayout.Parent = parentsFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

poption.Name = "poption"
poption.Visible = false
poption.Parent = parentsFrame
poption.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
poption.BackgroundTransparency = 1.000
poption.Position = UDim2.new(0.0897435918, 0, 0.0199999996, 0)
poption.Size = UDim2.new(0, 58, 0, 17)
poption.AutoButtonColor = false
poption.Font = Enum.Font.SourceSans
poption.TextColor3 = Color3.fromRGB(14, 253, 14)
poption.TextSize = 14.000
poption.TextXAlignment = Enum.TextXAlignment.Left

babiesFrame.Name = "babiesFrame"
babiesFrame.Parent = thingsFrame
babiesFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
babiesFrame.BackgroundTransparency = 1.000
babiesFrame.Position = UDim2.new(0.539534867, 0, 0.0570183694, 0)
babiesFrame.Size = UDim2.new(0, 64, 0, 270)

UIListLayout_2.Parent = babiesFrame
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

boption.Name = "boption"
boption.Visible = false
boption.Parent = babiesFrame
boption.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
boption.BackgroundTransparency = 1.000
boption.Size = UDim2.new(0, 58, 0, 17)
boption.AutoButtonColor = false
boption.Font = Enum.Font.SourceSans
boption.TextColor3 = Color3.fromRGB(14, 253, 14)
boption.TextSize = 14.000
boption.TextXAlignment = Enum.TextXAlignment.Left

nameFrame.Name = "nameFrame"
nameFrame.Parent = thingsFrame
nameFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
nameFrame.BackgroundTransparency = 1.000
nameFrame.Position = UDim2.new(0.0697674453, 0, 0.00936737657, 0)
nameFrame.Size = UDim2.new(0, 184, 0, 23)

UIListLayout_3.Parent = nameFrame
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 30)

TextLabel.Parent = nameFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.532013059, 0, 0.011748476, 0)
TextLabel.Size = UDim2.new(0, 71, 0, 17)
TextLabel.ZIndex = 10000
TextLabel.Font = Enum.Font.SourceSans
TextLabel.RichText = true
TextLabel.Text = "<b>Parents</b>"
TextLabel.TextColor3 = Color3.fromRGB(14, 253, 14)
TextLabel.TextSize = 14.000

TextLabel_2.Parent = nameFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.532013059, 0, 0.011748476, 0)
TextLabel_2.Size = UDim2.new(0, 71, 0, 17)
TextLabel_2.ZIndex = 10000
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.RichText = true
TextLabel_2.Text = "<b>Babies</b>"
TextLabel_2.TextColor3 = Color3.fromRGB(14, 253, 14)
TextLabel_2.TextSize = 14.000

buttons.Name = "buttons"
buttons.Parent = Main
buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buttons.BackgroundTransparency = 1.000
buttons.Position = UDim2.new(0.018229166, 0, 0.154135332, 0)
buttons.Size = UDim2.new(0, 138, 0, 213)

UIListLayout_4.Parent = buttons
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.Padding = UDim.new(0, 9)

stealButton.Name = "stealButton"
stealButton.Parent = buttons
stealButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
stealButton.BorderSizePixel = 0
stealButton.Position = UDim2.new(0.03125, 0, 0.657894731, 0)
stealButton.Size = UDim2.new(0, 136, 0, 35)
stealButton.Font = Enum.Font.SourceSans
stealButton.Text = "Steal Baby"
stealButton.TextColor3 = Color3.fromRGB(14, 253, 14)
stealButton.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = stealButton

sendButton.Name = "sendButton"
sendButton.Parent = buttons
sendButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
sendButton.BorderSizePixel = 0
sendButton.Position = UDim2.new(0.0338541679, 0, 0.484962404, 0)
sendButton.Size = UDim2.new(0, 136, 0, 35)
sendButton.Font = Enum.Font.SourceSans
sendButton.Text = "Send Babies"
sendButton.TextColor3 = Color3.fromRGB(14, 253, 14)
sendButton.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = sendButton

stuckButton.Name = "stuckButton"
stuckButton.Parent = buttons
stuckButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
stuckButton.BorderSizePixel = 0
stuckButton.Position = UDim2.new(0.0338541679, 0, 0.150375932, 0)
stuckButton.Size = UDim2.new(0, 136, 0, 35)
stuckButton.Font = Enum.Font.SourceSans
stuckButton.Text = "Stuck Players"
stuckButton.TextColor3 = Color3.fromRGB(14, 253, 14)
stuckButton.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 3)
UICorner_4.Parent = stuckButton

dropButton.Name = "dropButton"
dropButton.Parent = buttons
dropButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
dropButton.BorderSizePixel = 0
dropButton.Position = UDim2.new(0.0338541865, 0, 0.319548905, 0)
dropButton.Size = UDim2.new(0, 136, 0, 35)
dropButton.Font = Enum.Font.SourceSans
dropButton.Text = "Drop Babies"
dropButton.TextColor3 = Color3.fromRGB(14, 253, 14)
dropButton.TextSize = 14.000

UICorner_5.CornerRadius = UDim.new(0, 3)
UICorner_5.Parent = dropButton

closeButton.Name = "closeButton"
closeButton.Parent = buttons
closeButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
closeButton.BorderSizePixel = 0
closeButton.Position = UDim2.new(0.0234375, 0, 0.823308289, 0)
closeButton.Size = UDim2.new(0, 136, 0, 35)
closeButton.Font = Enum.Font.SourceSans
closeButton.Text = "Close Button"
closeButton.TextColor3 = Color3.fromRGB(14, 253, 14)
closeButton.TextSize = 14.000

UICorner_6.CornerRadius = UDim.new(0, 3)
UICorner_6.Parent = closeButton

Main.Active = true
Main.Draggable = true

closeButton.MouseButton1Down:Connect(function() BabyStealerGUI:Destroy() end)

stuckButton.MouseButton1Down:Connect(function() make_players_stuck() end)

dropButton.MouseButton1Down:Connect(function() make_players_drop_babys() end)

sendButton.MouseButton1Down:Connect(function() send_babys_to_player() end)

stealButton.MouseButton1Down:Connect(function() send_babys_to_local() end)



function update_tables()
    pcall(
        function()
            for _, v in pairs(otherPlayers:GetPlayers()) do
                if v ~= thisPlayer and v.TeamColor.Name == "Pastel orange" then
                    table.insert(babies, v)
                end
                if v ~= thisPlayer and v.TeamColor.Name == "Baby blue" then
                    table.insert(parents, v)
                end
                if v ~= thisPlayer and v.TeamColor.Name == "White" then
                    table.insert(choosing, v)
                end
            end
        end
    )
end

update_tables()

function get_parent(plr)
    for _, v in pairs(parents) do
        if plr == v.Name then
            return true
        else
            return false
        end
    end
end

function get_baby(plr)
    for _, v in pairs(babies) do
        if plr == v.Name then
            return true
        else
            return false
        end
    end
end

function get_choosing(plr)
    for _, v in pairs(choosing) do
        if plr == v.Name then
            return true or false
        end
    end
end

function send_babys_to_player()
    for _, p in pairs(parents) do
        for _, b in pairs(babies) do
            --game:GetService("ReplicatedStorage").ActionEvents.DropBaby:FireServer(p.Character, b.Character)
            game:GetService("ReplicatedStorage").ActionEvents.PickBaby:FireServer(p.Character, b.Character)
        end
    end
end

function send_babys_to_local()
    for _, p in pairs(parents) do
        for _, b in pairs(babies) do
            --game:GetService("ReplicatedStorage").ActionEvents.DropBaby:FireServer(p.Character, b.Character)
            game:GetService("ReplicatedStorage").ActionEvents.PickBaby:FireServer(thisPlayer.Character, b.Character)
        end
    end
end

function make_players_drop_babys()
    for _, p in pairs(parents) do
        for _, b in pairs(babies) do
            game:GetService("ReplicatedStorage").ActionEvents.DropBaby:FireServer(p.Character, b.Character)
            --game:GetService("ReplicatedStorage").ActionEvents.PickBaby:FireServer(plr.Character, b.Character)
        end
    end
end

function make_players_stuck()
    for _, v in pairs(otherPlayers:GetPlayers()) do
        if v ~= thisPlayer then
            game:GetService("ReplicatedStorage").ActionEvents.DropBaby:FireServer(v.Character, v.Character)
            game:GetService("ReplicatedStorage").ActionEvents.PickBaby:FireServer(v.Character, v.Character)
        end
    end
end

for _, v in pairs(parents) do 
    local cl = poption
    local test = cl:Clone()
    test.Visible = true
    test.Parent = parentsFrame
    test.Text = v.Name
end

for _, v in pairs(babies) do 
    local cl = poption
    local test = cl:Clone()
    test.Visible = true
    test.Parent = babiesFrame
    test.Text = v.Name
end

update_tables()




