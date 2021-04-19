local DohmExperience = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local GamesHolder = Instance.new("ScrollingFrame")
local nerffps = Instance.new("ImageLabel")
local hover = Instance.new("ImageLabel")
local play = Instance.new("ImageButton")
local details = Instance.new("ImageButton")
local gameName = Instance.new("TextLabel")
local UIGridLayout1 = Instance.new("UIGridLayout")
local UIGridLayout = Instance.new("UIGridLayout")
local knights = Instance.new("ImageLabel")
local hover_2 = Instance.new("ImageLabel")
local gameName_2 = Instance.new("TextLabel")
local details_2 = Instance.new("ImageButton")
local play_2 = Instance.new("ImageButton")
local UIGridLayout1_2 = Instance.new("UIGridLayout")
local ace = Instance.new("ImageLabel")
local hover_3 = Instance.new("ImageLabel")
local gameName_3 = Instance.new("TextLabel")
local details_3 = Instance.new("ImageButton")
local play_3 = Instance.new("ImageButton")
local UIGridLayout1_3 = Instance.new("UIGridLayout")
local zoo = Instance.new("ImageLabel")
local hover_4 = Instance.new("ImageLabel")
local gameName_4 = Instance.new("TextLabel")
local play_4 = Instance.new("ImageButton")
local details_4 = Instance.new("ImageButton")
local UIGridLayout1_4 = Instance.new("UIGridLayout")
local snow = Instance.new("ImageLabel")
local hover_5 = Instance.new("ImageLabel")
local gameName_5 = Instance.new("TextLabel")
local play_5 = Instance.new("ImageButton")
local details_5 = Instance.new("ImageButton")
local UIGridLayout1_5 = Instance.new("UIGridLayout")
local framed = Instance.new("ImageLabel")
local hover_6 = Instance.new("ImageLabel")
local gameName_6 = Instance.new("TextLabel")
local details_6 = Instance.new("ImageButton")
local play_6 = Instance.new("ImageButton")
local UIGridLayout1_6 = Instance.new("UIGridLayout")
local knockout = Instance.new("ImageLabel")
local hover_7 = Instance.new("ImageLabel")
local gameName_7 = Instance.new("TextLabel")
local details_7 = Instance.new("ImageButton")
local play_7 = Instance.new("ImageButton")
local UIGridLayout1_7 = Instance.new("UIGridLayout")
local cyber = Instance.new("ImageLabel")
local hover_8 = Instance.new("ImageLabel")
local gameName_8 = Instance.new("TextLabel")
local details_8 = Instance.new("ImageButton")
local play_8 = Instance.new("ImageButton")
local UIGridLayout1_8 = Instance.new("UIGridLayout")
local killer = Instance.new("ImageLabel")
local hover_9 = Instance.new("ImageLabel")
local gameName_9 = Instance.new("TextLabel")
local details_9 = Instance.new("ImageButton")
local play_9 = Instance.new("ImageButton")
local UIGridLayout1_9 = Instance.new("UIGridLayout")
local gods = Instance.new("ImageLabel")
local hover_10 = Instance.new("ImageLabel")
local gameName_10 = Instance.new("TextLabel")
local details_10 = Instance.new("ImageButton")
local play_10 = Instance.new("ImageButton")
local UIGridLayout1_10 = Instance.new("UIGridLayout")
local userHolder = Instance.new("Folder")
local pfp = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local playername = Instance.new("TextLabel")
local exitButton = Instance.new("ImageButton")
local minButton = Instance.new("ImageButton")
local DetailsPanel = Instance.new("ImageLabel")
local topBar = Instance.new("ImageLabel")
local shade = Instance.new("ImageButton")
local dohmnotif = Instance.new("Frame")
local notifbar = Instance.new("Frame")
local notiftext = Instance.new("TextLabel")
local sidebar = Instance.new("ImageLabel")

local thisPlayer = game:GetService("Players").LocalPlayer
local Players = game:GetService("Players")

local PlaceID
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false

local userId = thisPlayer.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

local tweenService = game:GetService("TweenService")
local tweenInfo =
    TweenInfo.new(
    0.2, --Time
    Enum.EasingStyle.Linear, --EasingStyle
    Enum.EasingDirection.Out, --EasingDirection
    0, --Repeat count
    false, --Reverses if true
    0.1 --Delay time
)

local buttonInfo =
    TweenInfo.new(
    0.2, --Time
    Enum.EasingStyle.Linear, --EasingStyle
    Enum.EasingDirection.Out, --EasingDirection
    0, --Repeat count
    false, --Reverses if true
    0.1 --Delay time
)

DohmExperience.Name = "DohmExperience"
DohmExperience.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = DohmExperience
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Position = UDim2.new(0.239708185, 0, 0.166666672, 0)
Main.Size = UDim2.new(0, 1022, 0, 726)
Main.Image = "http://www.roblox.com/asset/?id=6670708389"

GamesHolder.Name = "GamesHolder"
GamesHolder.Parent = Main
GamesHolder.Active = true
GamesHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GamesHolder.BackgroundTransparency = 1.000
GamesHolder.Position = UDim2.new(0.0371819958, 0, 0.177685946, 0)
GamesHolder.Size = UDim2.new(0, 974, 0, 549)
GamesHolder.CanvasPosition = Vector2.new(0, 450)

nerffps.Name = "nerffps"
nerffps.Parent = GamesHolder
nerffps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
nerffps.BackgroundTransparency = 1.000
nerffps.Position = UDim2.new(-0.0228928197, 0, -0.00364298723, 0)
nerffps.Size = UDim2.new(0, 169, 0, 278)
nerffps.Image = "http://www.roblox.com/asset/?id=6674673827"

hover.Name = "hover"
hover.Parent = nerffps
hover.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hover.BackgroundTransparency = 1.000
hover.Position = UDim2.new(-0.0236686394, 0, -0.00719424477, 0)
hover.Size = UDim2.new(0, 169, 0, 278)
hover.Image = "http://www.roblox.com/asset/?id=6674716685"
hover.ImageTransparency = 1.000
hover.ScaleType = Enum.ScaleType.Fit

play.Name = "play"
play.Parent = hover
play.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
play.BackgroundTransparency = 1.000
play.BorderSizePixel = 0
play.Position = UDim2.new(0.230769232, 0, 0.233812943, 0)
play.Size = UDim2.new(0, 97, 0, 36)
play.ZIndex = 10000
play.Image = "http://www.roblox.com/asset/?id=6670814115"
play.ImageTransparency = 1.000

details.Name = "details"
details.Parent = hover
details.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
details.BackgroundTransparency = 1.000
details.BorderSizePixel = 0
details.Position = UDim2.new(0.34319526, 0, 0.41726619, 0)
details.Size = UDim2.new(0, 59, 0, 27)
details.Image = "http://www.roblox.com/asset/?id=6675015275"
details.ImageTransparency = 1.000

gameName.Name = "gameName"
gameName.Parent = hover
gameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName.BackgroundTransparency = 1.000
gameName.Position = UDim2.new(0.0591715984, 0, 0.845323741, 0)
gameName.Size = UDim2.new(0, 74, 0, 50)
gameName.Font = Enum.Font.Arial
gameName.Text = "Nerf FPS"
gameName.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName.TextSize = 12.000
gameName.TextXAlignment = Enum.TextXAlignment.Left

UIGridLayout1.Name = "UIGridLayout1"
UIGridLayout1.Parent = nerffps
UIGridLayout1.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout1.CellPadding = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
UIGridLayout1.CellSize = UDim2.new(0, 169, 0, 278)
UIGridLayout1.FillDirectionMaxCells = 5

UIGridLayout.Parent = GamesHolder
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
UIGridLayout.CellSize = UDim2.new(0, 169, 0, 278)
UIGridLayout.FillDirectionMaxCells = 5

knights.Name = "knights"
knights.Parent = GamesHolder
knights.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
knights.BackgroundTransparency = 1.000
knights.Position = UDim2.new(-0.0228928197, 0, -0.00364298723, 0)
knights.Size = UDim2.new(0, 169, 0, 278)
knights.Image = "http://www.roblox.com/asset/?id=6674663563"

hover_2.Name = "hover"
hover_2.Parent = knights
hover_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hover_2.BackgroundTransparency = 1.000
hover_2.Position = UDim2.new(-0.0236686394, 0, -0.00719424477, 0)
hover_2.Size = UDim2.new(0, 169, 0, 278)
hover_2.Image = "http://www.roblox.com/asset/?id=6674716685"
hover_2.ImageTransparency = 1.000
hover_2.ScaleType = Enum.ScaleType.Fit

gameName_2.Name = "gameName"
gameName_2.Parent = hover_2
gameName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName_2.BackgroundTransparency = 1.000
gameName_2.Position = UDim2.new(0.0591715984, 0, 0.845323741, 0)
gameName_2.Size = UDim2.new(0, 74, 0, 50)
gameName_2.Font = Enum.Font.Arial
gameName_2.Text = "Knights Heroes"
gameName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName_2.TextSize = 12.000
gameName_2.TextXAlignment = Enum.TextXAlignment.Left

details_2.Name = "details"
details_2.Parent = hover_2
details_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
details_2.BackgroundTransparency = 1.000
details_2.BorderSizePixel = 0
details_2.Position = UDim2.new(0.34319526, 0, 0.41726619, 0)
details_2.Size = UDim2.new(0, 59, 0, 27)
details_2.Image = "http://www.roblox.com/asset/?id=6675015275"
details_2.ImageTransparency = 1.000

play_2.Name = "play"
play_2.Parent = hover_2
play_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
play_2.BackgroundTransparency = 1.000
play_2.BorderSizePixel = 0
play_2.Position = UDim2.new(0.230769232, 0, 0.233812943, 0)
play_2.Size = UDim2.new(0, 97, 0, 36)
play_2.ZIndex = 10000
play_2.Image = "http://www.roblox.com/asset/?id=6670814115"
play_2.ImageTransparency = 1.000

UIGridLayout1_2.Name = "UIGridLayout1"
UIGridLayout1_2.Parent = knights
UIGridLayout1_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout1_2.CellPadding = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
UIGridLayout1_2.CellSize = UDim2.new(0, 169, 0, 278)
UIGridLayout1_2.FillDirectionMaxCells = 5

ace.Name = "ace"
ace.Parent = GamesHolder
ace.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ace.BackgroundTransparency = 1.000
ace.Position = UDim2.new(-0.0228928197, 0, -0.00364298723, 0)
ace.Size = UDim2.new(0, 169, 0, 278)
ace.Image = "http://www.roblox.com/asset/?id=6674683829"

hover_3.Name = "hover"
hover_3.Parent = ace
hover_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hover_3.BackgroundTransparency = 1.000
hover_3.Position = UDim2.new(-0.0236686394, 0, -0.00719424477, 0)
hover_3.Size = UDim2.new(0, 169, 0, 278)
hover_3.Image = "http://www.roblox.com/asset/?id=6674716685"
hover_3.ImageTransparency = 1.000
hover_3.ScaleType = Enum.ScaleType.Fit

gameName_3.Name = "gameName"
gameName_3.Parent = hover_3
gameName_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName_3.BackgroundTransparency = 1.000
gameName_3.Position = UDim2.new(0.0591715984, 0, 0.845323741, 0)
gameName_3.Size = UDim2.new(0, 74, 0, 50)
gameName_3.Font = Enum.Font.Arial
gameName_3.Text = "Ace of Spadez"
gameName_3.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName_3.TextSize = 12.000
gameName_3.TextXAlignment = Enum.TextXAlignment.Left

details_3.Name = "details"
details_3.Parent = hover_3
details_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
details_3.BackgroundTransparency = 1.000
details_3.BorderSizePixel = 0
details_3.Position = UDim2.new(0.34319526, 0, 0.41726619, 0)
details_3.Size = UDim2.new(0, 59, 0, 27)
details_3.Image = "http://www.roblox.com/asset/?id=6675015275"
details_3.ImageTransparency = 1.000

play_3.Name = "play"
play_3.Parent = hover_3
play_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
play_3.BackgroundTransparency = 1.000
play_3.BorderSizePixel = 0
play_3.Position = UDim2.new(0.230769232, 0, 0.233812943, 0)
play_3.Size = UDim2.new(0, 97, 0, 36)
play_3.ZIndex = 10000
play_3.Image = "http://www.roblox.com/asset/?id=6670814115"
play_3.ImageTransparency = 1.000

UIGridLayout1_3.Name = "UIGridLayout1"
UIGridLayout1_3.Parent = ace
UIGridLayout1_3.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout1_3.CellPadding = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
UIGridLayout1_3.CellSize = UDim2.new(0, 169, 0, 278)
UIGridLayout1_3.FillDirectionMaxCells = 5

zoo.Name = "zoo"
zoo.Parent = GamesHolder
zoo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
zoo.BackgroundTransparency = 1.000
zoo.Position = UDim2.new(-0.0228928197, 0, -0.00364298723, 0)
zoo.Size = UDim2.new(0, 169, 0, 278)
zoo.Image = "http://www.roblox.com/asset/?id=6675099384"

hover_4.Name = "hover"
hover_4.Parent = zoo
hover_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hover_4.BackgroundTransparency = 1.000
hover_4.Position = UDim2.new(-0.0236686394, 0, -0.00719424477, 0)
hover_4.Size = UDim2.new(0, 169, 0, 278)
hover_4.Image = "http://www.roblox.com/asset/?id=6674716685"
hover_4.ImageTransparency = 1.000
hover_4.ScaleType = Enum.ScaleType.Fit

gameName_4.Name = "gameName"
gameName_4.Parent = hover_4
gameName_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName_4.BackgroundTransparency = 1.000
gameName_4.Position = UDim2.new(0.0591715984, 0, 0.845323741, 0)
gameName_4.Size = UDim2.new(0, 74, 0, 50)
gameName_4.Font = Enum.Font.Arial
gameName_4.Text = "Zoo Tycoon"
gameName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName_4.TextSize = 12.000
gameName_4.TextXAlignment = Enum.TextXAlignment.Left

play_4.Name = "play"
play_4.Parent = hover_4
play_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
play_4.BackgroundTransparency = 1.000
play_4.BorderSizePixel = 0
play_4.Position = UDim2.new(0.230769232, 0, 0.233812943, 0)
play_4.Size = UDim2.new(0, 97, 0, 36)
play_4.ZIndex = 10000
play_4.Image = "http://www.roblox.com/asset/?id=6670814115"
play_4.ImageTransparency = 1.000

details_4.Name = "details"
details_4.Parent = hover_4
details_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
details_4.BackgroundTransparency = 1.000
details_4.BorderSizePixel = 0
details_4.Position = UDim2.new(0.34319526, 0, 0.41726619, 0)
details_4.Size = UDim2.new(0, 59, 0, 27)
details_4.Image = "http://www.roblox.com/asset/?id=6675015275"
details_4.ImageTransparency = 1.000

UIGridLayout1_4.Name = "UIGridLayout1"
UIGridLayout1_4.Parent = zoo
UIGridLayout1_4.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout1_4.CellPadding = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
UIGridLayout1_4.CellSize = UDim2.new(0, 169, 0, 278)
UIGridLayout1_4.FillDirectionMaxCells = 5

snow.Name = "snow"
snow.Parent = GamesHolder
snow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
snow.BackgroundTransparency = 1.000
snow.Position = UDim2.new(-0.0228928197, 0, -0.00364298723, 0)
snow.Size = UDim2.new(0, 169, 0, 278)
snow.Image = "http://www.roblox.com/asset/?id=6675109797"

hover_5.Name = "hover"
hover_5.Parent = snow
hover_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hover_5.BackgroundTransparency = 1.000
hover_5.Position = UDim2.new(-0.0236686394, 0, -0.00719424477, 0)
hover_5.Size = UDim2.new(0, 169, 0, 278)
hover_5.Image = "http://www.roblox.com/asset/?id=6674716685"
hover_5.ImageTransparency = 1.000
hover_5.ScaleType = Enum.ScaleType.Fit

gameName_5.Name = "gameName"
gameName_5.Parent = hover_5
gameName_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName_5.BackgroundTransparency = 1.000
gameName_5.Position = UDim2.new(0.0591715984, 0, 0.845323741, 0)
gameName_5.Size = UDim2.new(0, 74, 0, 50)
gameName_5.Font = Enum.Font.Arial
gameName_5.Text = "Snowman Simulator"
gameName_5.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName_5.TextSize = 12.000
gameName_5.TextXAlignment = Enum.TextXAlignment.Left

play_5.Name = "play"
play_5.Parent = hover_5
play_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
play_5.BackgroundTransparency = 1.000
play_5.BorderSizePixel = 0
play_5.Position = UDim2.new(0.230769232, 0, 0.233812943, 0)
play_5.Size = UDim2.new(0, 97, 0, 36)
play_5.ZIndex = 10000
play_5.Image = "http://www.roblox.com/asset/?id=6670814115"
play_5.ImageTransparency = 1.000

details_5.Name = "details"
details_5.Parent = hover_5
details_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
details_5.BackgroundTransparency = 1.000
details_5.BorderSizePixel = 0
details_5.Position = UDim2.new(0.34319526, 0, 0.41726619, 0)
details_5.Size = UDim2.new(0, 59, 0, 27)
details_5.Image = "http://www.roblox.com/asset/?id=6675015275"
details_5.ImageTransparency = 1.000

UIGridLayout1_5.Name = "UIGridLayout1"
UIGridLayout1_5.Parent = snow
UIGridLayout1_5.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout1_5.CellPadding = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
UIGridLayout1_5.CellSize = UDim2.new(0, 169, 0, 278)
UIGridLayout1_5.FillDirectionMaxCells = 5

framed.Name = "framed"
framed.Parent = GamesHolder
framed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
framed.BackgroundTransparency = 1.000
framed.Position = UDim2.new(-0.0228928197, 0, -0.00364298723, 0)
framed.Size = UDim2.new(0, 169, 0, 278)
framed.Image = "http://www.roblox.com/asset/?id=6675155614"

hover_6.Name = "hover"
hover_6.Parent = framed
hover_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hover_6.BackgroundTransparency = 1.000
hover_6.Position = UDim2.new(-0.0236686394, 0, -0.00719424477, 0)
hover_6.Size = UDim2.new(0, 169, 0, 278)
hover_6.Image = "http://www.roblox.com/asset/?id=6674716685"
hover_6.ImageTransparency = 1.000
hover_6.ScaleType = Enum.ScaleType.Fit

gameName_6.Name = "gameName"
gameName_6.Parent = hover_6
gameName_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName_6.BackgroundTransparency = 1.000
gameName_6.Position = UDim2.new(0.0591715984, 0, 0.845323741, 0)
gameName_6.Size = UDim2.new(0, 74, 0, 50)
gameName_6.Font = Enum.Font.Arial
gameName_6.Text = "Framed!"
gameName_6.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName_6.TextSize = 12.000
gameName_6.TextXAlignment = Enum.TextXAlignment.Left

details_6.Name = "details"
details_6.Parent = hover_6
details_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
details_6.BackgroundTransparency = 1.000
details_6.BorderSizePixel = 0
details_6.Position = UDim2.new(0.34319526, 0, 0.41726619, 0)
details_6.Size = UDim2.new(0, 59, 0, 27)
details_6.Image = "http://www.roblox.com/asset/?id=6675015275"
details_6.ImageTransparency = 1.000

play_6.Name = "play"
play_6.Parent = hover_6
play_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
play_6.BackgroundTransparency = 1.000
play_6.BorderSizePixel = 0
play_6.Position = UDim2.new(0.230769232, 0, 0.233812943, 0)
play_6.Size = UDim2.new(0, 97, 0, 36)
play_6.ZIndex = 10000
play_6.Image = "http://www.roblox.com/asset/?id=6670814115"
play_6.ImageTransparency = 1.000

UIGridLayout1_6.Name = "UIGridLayout1"
UIGridLayout1_6.Parent = framed
UIGridLayout1_6.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout1_6.CellPadding = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
UIGridLayout1_6.CellSize = UDim2.new(0, 169, 0, 278)
UIGridLayout1_6.FillDirectionMaxCells = 5

knockout.Name = "knockout"
knockout.Parent = GamesHolder
knockout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
knockout.BackgroundTransparency = 1.000
knockout.Position = UDim2.new(-0.0228928197, 0, -0.00364298723, 0)
knockout.Size = UDim2.new(0, 169, 0, 278)
knockout.Image = "http://www.roblox.com/asset/?id=6675160095"

hover_7.Name = "hover"
hover_7.Parent = knockout
hover_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hover_7.BackgroundTransparency = 1.000
hover_7.Position = UDim2.new(-0.0236686394, 0, -0.00719424477, 0)
hover_7.Size = UDim2.new(0, 169, 0, 278)
hover_7.Image = "http://www.roblox.com/asset/?id=6674716685"
hover_7.ImageTransparency = 1.000
hover_7.ScaleType = Enum.ScaleType.Fit

gameName_7.Name = "gameName"
gameName_7.Parent = hover_7
gameName_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName_7.BackgroundTransparency = 1.000
gameName_7.Position = UDim2.new(0.0591715984, 0, 0.845323741, 0)
gameName_7.Size = UDim2.new(0, 74, 0, 50)
gameName_7.Font = Enum.Font.Arial
gameName_7.Text = "Knockout!"
gameName_7.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName_7.TextSize = 12.000
gameName_7.TextXAlignment = Enum.TextXAlignment.Left

details_7.Name = "details"
details_7.Parent = hover_7
details_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
details_7.BackgroundTransparency = 1.000
details_7.BorderSizePixel = 0
details_7.Position = UDim2.new(0.34319526, 0, 0.41726619, 0)
details_7.Size = UDim2.new(0, 59, 0, 27)
details_7.Image = "http://www.roblox.com/asset/?id=6675015275"
details_7.ImageTransparency = 1.000

play_7.Name = "play"
play_7.Parent = hover_7
play_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
play_7.BackgroundTransparency = 1.000
play_7.BorderSizePixel = 0
play_7.Position = UDim2.new(0.230769232, 0, 0.233812943, 0)
play_7.Size = UDim2.new(0, 97, 0, 36)
play_7.ZIndex = 10000
play_7.Image = "http://www.roblox.com/asset/?id=6670814115"
play_7.ImageTransparency = 1.000

UIGridLayout1_7.Name = "UIGridLayout1"
UIGridLayout1_7.Parent = knockout
UIGridLayout1_7.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout1_7.CellPadding = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
UIGridLayout1_7.CellSize = UDim2.new(0, 169, 0, 278)
UIGridLayout1_7.FillDirectionMaxCells = 5

cyber.Name = "cyber"
cyber.Parent = GamesHolder
cyber.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cyber.BackgroundTransparency = 1.000
cyber.Position = UDim2.new(-0.0228928197, 0, -0.00364298723, 0)
cyber.Size = UDim2.new(0, 169, 0, 278)
cyber.Image = "http://www.roblox.com/asset/?id=6675164850"

hover_8.Name = "hover"
hover_8.Parent = cyber
hover_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hover_8.BackgroundTransparency = 1.000
hover_8.Position = UDim2.new(-0.0236686394, 0, -0.00719424477, 0)
hover_8.Size = UDim2.new(0, 169, 0, 278)
hover_8.Image = "http://www.roblox.com/asset/?id=6674716685"
hover_8.ImageTransparency = 1.000
hover_8.ScaleType = Enum.ScaleType.Fit

gameName_8.Name = "gameName"
gameName_8.Parent = hover_8
gameName_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName_8.BackgroundTransparency = 1.000
gameName_8.Position = UDim2.new(0.0591715984, 0, 0.845323741, 0)
gameName_8.Size = UDim2.new(0, 74, 0, 50)
gameName_8.Font = Enum.Font.Arial
gameName_8.Text = "Cyber City Tycoon"
gameName_8.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName_8.TextSize = 12.000
gameName_8.TextXAlignment = Enum.TextXAlignment.Left

details_8.Name = "details"
details_8.Parent = hover_8
details_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
details_8.BackgroundTransparency = 1.000
details_8.BorderSizePixel = 0
details_8.Position = UDim2.new(0.34319526, 0, 0.41726619, 0)
details_8.Size = UDim2.new(0, 59, 0, 27)
details_8.Image = "http://www.roblox.com/asset/?id=6675015275"
details_8.ImageTransparency = 1.000

play_8.Name = "play"
play_8.Parent = hover_8
play_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
play_8.BackgroundTransparency = 1.000
play_8.BorderSizePixel = 0
play_8.Position = UDim2.new(0.230769232, 0, 0.233812943, 0)
play_8.Size = UDim2.new(0, 97, 0, 36)
play_8.ZIndex = 10000
play_8.Image = "http://www.roblox.com/asset/?id=6670814115"
play_8.ImageTransparency = 1.000

UIGridLayout1_8.Name = "UIGridLayout1"
UIGridLayout1_8.Parent = cyber
UIGridLayout1_8.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout1_8.CellPadding = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
UIGridLayout1_8.CellSize = UDim2.new(0, 169, 0, 278)
UIGridLayout1_8.FillDirectionMaxCells = 5

killer.Name = "killer"
killer.Parent = GamesHolder
killer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
killer.BackgroundTransparency = 1.000
killer.Position = UDim2.new(-0.0228928197, 0, -0.00364298723, 0)
killer.Size = UDim2.new(0, 169, 0, 278)
killer.Image = "http://www.roblox.com/asset/?id=6675169580"

hover_9.Name = "hover"
hover_9.Parent = killer
hover_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hover_9.BackgroundTransparency = 1.000
hover_9.Position = UDim2.new(-0.0236686394, 0, -0.00719424477, 0)
hover_9.Size = UDim2.new(0, 169, 0, 278)
hover_9.Image = "http://www.roblox.com/asset/?id=6674716685"
hover_9.ImageTransparency = 1.000
hover_9.ScaleType = Enum.ScaleType.Fit

gameName_9.Name = "gameName"
gameName_9.Parent = hover_9
gameName_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName_9.BackgroundTransparency = 1.000
gameName_9.Position = UDim2.new(0.0591715984, 0, 0.845323741, 0)
gameName_9.Size = UDim2.new(0, 74, 0, 50)
gameName_9.Font = Enum.Font.Arial
gameName_9.Text = "Survive the killer!"
gameName_9.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName_9.TextSize = 12.000
gameName_9.TextXAlignment = Enum.TextXAlignment.Left

details_9.Name = "details"
details_9.Parent = hover_9
details_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
details_9.BackgroundTransparency = 1.000
details_9.BorderSizePixel = 0
details_9.Position = UDim2.new(0.34319526, 0, 0.41726619, 0)
details_9.Size = UDim2.new(0, 59, 0, 27)
details_9.Image = "http://www.roblox.com/asset/?id=6675015275"
details_9.ImageTransparency = 1.000

play_9.Name = "play"
play_9.Parent = hover_9
play_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
play_9.BackgroundTransparency = 1.000
play_9.BorderSizePixel = 0
play_9.Position = UDim2.new(0.230769232, 0, 0.233812943, 0)
play_9.Size = UDim2.new(0, 97, 0, 36)
play_9.ZIndex = 10000
play_9.Image = "http://www.roblox.com/asset/?id=6670814115"
play_9.ImageTransparency = 1.000

UIGridLayout1_9.Name = "UIGridLayout1"
UIGridLayout1_9.Parent = killer
UIGridLayout1_9.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout1_9.CellPadding = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
UIGridLayout1_9.CellSize = UDim2.new(0, 169, 0, 278)
UIGridLayout1_9.FillDirectionMaxCells = 5

gods.Name = "gods"
gods.Parent = GamesHolder
gods.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gods.BackgroundTransparency = 1.000
gods.Position = UDim2.new(-0.0228928197, 0, -0.00364298723, 0)
gods.Size = UDim2.new(0, 169, 0, 278)
gods.Image = "http://www.roblox.com/asset/?id=6675172721"

hover_10.Name = "hover"
hover_10.Parent = gods
hover_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hover_10.BackgroundTransparency = 1.000
hover_10.Position = UDim2.new(-0.0236686394, 0, -0.00719424477, 0)
hover_10.Size = UDim2.new(0, 169, 0, 278)
hover_10.Image = "http://www.roblox.com/asset/?id=6674716685"
hover_10.ImageTransparency = 1.000
hover_10.ScaleType = Enum.ScaleType.Fit

gameName_10.Name = "gameName"
gameName_10.Parent = hover_10
gameName_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName_10.BackgroundTransparency = 1.000
gameName_10.Position = UDim2.new(0.0591715984, 0, 0.845323741, 0)
gameName_10.Size = UDim2.new(0, 74, 0, 50)
gameName_10.Font = Enum.Font.Arial
gameName_10.Text = "Gods of Glroy"
gameName_10.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName_10.TextSize = 12.000
gameName_10.TextXAlignment = Enum.TextXAlignment.Left

details_10.Name = "details"
details_10.Parent = hover_10
details_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
details_10.BackgroundTransparency = 1.000
details_10.BorderSizePixel = 0
details_10.Position = UDim2.new(0.34319526, 0, 0.41726619, 0)
details_10.Size = UDim2.new(0, 59, 0, 27)
details_10.Image = "http://www.roblox.com/asset/?id=6675015275"
details_10.ImageTransparency = 1.000

play_10.Name = "play"
play_10.Parent = hover_10
play_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
play_10.BackgroundTransparency = 1.000
play_10.BorderSizePixel = 0
play_10.Position = UDim2.new(0.230769232, 0, 0.233812943, 0)
play_10.Size = UDim2.new(0, 97, 0, 36)
play_10.ZIndex = 10000
play_10.Image = "http://www.roblox.com/asset/?id=6670814115"
play_10.ImageTransparency = 1.000

UIGridLayout1_10.Name = "UIGridLayout1"
UIGridLayout1_10.Parent = gods
UIGridLayout1_10.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout1_10.CellPadding = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
UIGridLayout1_10.CellSize = UDim2.new(0, 169, 0, 278)
UIGridLayout1_10.FillDirectionMaxCells = 5

userHolder.Name = "userHolder"
userHolder.Parent = Main

pfp.Name = "pfp"
pfp.Parent = Main
pfp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pfp.BackgroundTransparency = 1.000
pfp.BorderSizePixel = 0
pfp.Position = UDim2.new(0.790000021, 0, 0.0549999997, 0)
pfp.Size = UDim2.new(0, 34, 0, 31)
pfp.ZIndex = 100000
pfp.Image = content

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = pfp

playername.Name = "playername"
playername.Parent = Main
playername.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
playername.BackgroundTransparency = 1.000
playername.Position = UDim2.new(0.802348316, 0, 0.0619834699, 0)
playername.Size = UDim2.new(0.144054309, 0, 0.032493487, 0)
playername.Font = Enum.Font.Arial
playername.Text = thisPlayer.Name
playername.TextColor3 = Color3.fromRGB(255, 255, 255)
playername.TextSize = 14.000
playername.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
playername.TextWrapped = true

exitButton.Name = "exitButton"
exitButton.Parent = Main
exitButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exitButton.BackgroundTransparency = 1.000
exitButton.BorderSizePixel = 0
exitButton.Position = UDim2.new(0.977495134, 0, 0.00964187365, 0)
exitButton.Size = UDim2.new(0, 23, 0, 27)
exitButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
exitButton.ImageTransparency = 1.000

minButton.Name = "minButton"
minButton.Parent = Main
minButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minButton.BackgroundTransparency = 1.000
minButton.Position = UDim2.new(0.916829765, 0, 0.00688705221, 0)
minButton.Size = UDim2.new(0, 33, 0, 26)
minButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
minButton.ImageTransparency = 1.000

DetailsPanel.Name = "DetailsPanel"
DetailsPanel.Parent = Main
DetailsPanel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DetailsPanel.BorderColor3 = Color3.fromRGB(109, 172, 2)
DetailsPanel.BorderSizePixel = 0
DetailsPanel.Position = UDim2.new(0.355185896, 0, 0.356749326, 0)
DetailsPanel.Size = UDim2.new(0.294999987, 0, 0.36500001, 0)
DetailsPanel.Image = "http://www.roblox.com/asset/?id=6695986523"

topBar.Name = "topBar"
topBar.Parent = DetailsPanel
topBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
topBar.BackgroundTransparency = 1.000
topBar.Position = UDim2.new(-0.0114613185, 0, 0.00754716992, 0)
topBar.Size = UDim2.new(0, 304, 0, 33)
topBar.Image = "http://www.roblox.com/asset/?id=6696112384"

shade.Name = "shade"
shade.Parent = Main
shade.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shade.BackgroundTransparency = 1.000
shade.BorderSizePixel = 0
shade.Size = UDim2.new(0, 1022, 0, 726)
shade.Visible = false
shade.AutoButtonColor = false
shade.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
shade.ImageColor3 = Color3.fromRGB(24, 24, 24)
shade.ImageTransparency = 0.500

dohmnotif.Name = "dohmnotif"
dohmnotif.Parent = DohmExperience
dohmnotif.AnchorPoint = Vector2.new(1, 0)
dohmnotif.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
dohmnotif.BorderSizePixel = 0
dohmnotif.Position = UDim2.new(0, 1920, 0.914999962, 0)
dohmnotif.Size = UDim2.new(0, 0, 0, 76)

notifbar.Name = "notifbar"
notifbar.Parent = dohmnotif
notifbar.BackgroundColor3 = Color3.fromRGB(118, 185, 0)
notifbar.Size = UDim2.new(0, 3, 0, 76)
notifbar.ZIndex = 100000

notiftext.Name = "notiftext"
notiftext.Parent = dohmnotif
notiftext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notiftext.BackgroundTransparency = 1.000
notiftext.BorderSizePixel = 0
notiftext.Position = UDim2.new(0.289999992, 0, 0.224000007, 0)
notiftext.Size = UDim2.new(0, 135, 0, 50)
notiftext.Font = Enum.Font.Arial
notiftext.Text = "<b>Please wait...teleporting.</b>"
notiftext.RichText = true
notiftext.TextColor3 = Color3.fromRGB(255, 255, 255)
notiftext.TextSize = 14.000
notiftext.TextXAlignment = Enum.TextXAlignment.Left

sidebar.Name = "sidebar"
sidebar.Parent = dohmnotif
sidebar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sidebar.BackgroundTransparency = 1.000
sidebar.BorderSizePixel = 0
sidebar.Position = UDim2.new(0.055555556, 0, 0.289473683, 0)
sidebar.Size = UDim2.new(0, 45, 0, 38)
sidebar.Image = "http://www.roblox.com/asset/?id=6686518184"

Main.Active = true
Main.Draggable = true

DetailsPanel.Size = UDim2.new(0.295, 0, 0, 0)
topBar.Size = UDim2.new(0, 304, 0, 0)

exitButton.MouseButton1Click:Connect(
    function()
        Main:Destroy()
    end
)

play.MouseButton1Click:Connect(
    function()
        PlaceID = 625364452
        Teleport()
    end
)

details.MouseButton1Click:Connect(
    function()
        detailTween()
    end
)

function TweenGames(w, p, d)
    w.MouseEnter:Connect(
        function()
            local tween = tweenService:Create(w, tweenInfo, {ImageTransparency = 0})
            local play = tweenService:Create(p, tweenInfo, {ImageTransparency = 0})
            local detail = tweenService:Create(d, tweenInfo, {ImageTransparency = 0})
            tween:Play()
            play:Play()
            detail:Play()
        end
    )
    w.MouseLeave:Connect(
        function()
            local tween = tweenService:Create(w, tweenInfo, {ImageTransparency = 1})
            local play = tweenService:Create(p, tweenInfo, {ImageTransparency = 1})
            local detail = tweenService:Create(d, tweenInfo, {ImageTransparency = 1})
            tween:Play()
            play:Play()
            detail:Play()
        end
    )
end

function TweenButtons(b)
    b.MouseEnter:Connect(
        function()
            local tween = tweenService:Create(b, buttonInfo, {ImageColor3 = Color3.fromRGB(222, 222, 222)})
            tween:Play()
        end
    )
    b.MouseLeave:Connect(
        function()
            local tween = tweenService:Create(b, buttonInfo, {ImageColor3 = Color3.fromRGB(255, 255, 255)})
            tween:Play()
        end
    )
end

function Tween(Object, Time, Style, Direction, Repeat, Customization)
    game:GetService("TweenService"):Create(
        Object,
        TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction], 0, false, 0),
        Customization
    ):Play()
end

function fakenotif()
    wait(3)
    Tween(dohmnotif, 0.3, "Quad", "Out", true, {Size = UDim2.new(0, 252, 0, 76)})
    wait(3)
    Tween(dohmnotif.notifbar, 0.3, "Quad", "Out", true, {Size = UDim2.new(0, 252, 0, 76)})
    wait(1)
    Tween(dohmnotif, 0.3, "Quad", "Out", true, {Size = UDim2.new(0, 0, 0, 76)})
    wait(2)
    Tween(dohmnotif.notifbar, 0.3, "Quad", "Out", true, {Size = UDim2.new(0, 3, 0, 76)})
end

local File =
    pcall(
    function()
        AllIDs = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
    end
)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
end
function TPReturner()
    local Site
    if foundAnything == "" then
        Site =
            game.HttpService:JSONDecode(
            game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100")
        )
    else
        Site =
            game.HttpService:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" ..
                    PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
            )
        )
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0
    for i, v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _, Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile =
                            pcall(
                            function()
                                delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end
                        )
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(
                    function()
                        writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
                        wait()
                        fakenotif()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(
                            PlaceID,
                            ID,
                            game.Players.LocalPlayer
                        )
                    end
                )
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(
            function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end
        )
    end
end

function detailTween()
    DetailsPanel.Visible = true
    topBar.Visible = true
    Tween(DetailsPanel, 0.7, "Quad", "InOut", true, {Size = UDim2.new(0.29499998688698, 0, 0.36500000953674, 0)})
    wait(0.7)

    Tween(topBar, 1.9, "Quad", "InOut", true, {Size = UDim2.new(0, 304, 0, 33)})
end

TweenGames(GamesHolder.nerffps.hover, GamesHolder.nerffps.hover.play, GamesHolder.nerffps.hover.details)
TweenGames(GamesHolder.knights.hover, GamesHolder.knights.hover.play, GamesHolder.knights.hover.details)
TweenGames(GamesHolder.ace.hover, GamesHolder.ace.hover.play, GamesHolder.ace.hover.details)
TweenGames(GamesHolder.zoo.hover, GamesHolder.zoo.hover.play, GamesHolder.zoo.hover.details)
TweenGames(GamesHolder.snow.hover, GamesHolder.snow.hover.play, GamesHolder.snow.hover.details)
TweenGames(GamesHolder.framed.hover, GamesHolder.framed.hover.play, GamesHolder.framed.hover.details)
TweenGames(GamesHolder.knockout.hover, GamesHolder.knockout.hover.play, GamesHolder.knockout.hover.details)
TweenGames(GamesHolder.cyber.hover, GamesHolder.cyber.hover.play, GamesHolder.cyber.hover.details)
TweenGames(GamesHolder.killer.hover, GamesHolder.killer.hover.play, GamesHolder.killer.hover.details)
TweenGames(GamesHolder.gods.hover, GamesHolder.gods.hover.play, GamesHolder.gods.hover.details)

TweenButtons(GamesHolder.gods.hover.play)
TweenButtons(GamesHolder.gods.hover.details)

TweenButtons(GamesHolder.framed.hover.play)
TweenButtons(GamesHolder.framed.hover.details)

TweenButtons(GamesHolder.nerffps.hover.play)
TweenButtons(GamesHolder.nerffps.hover.details)

TweenButtons(GamesHolder.killer.hover.play)
TweenButtons(GamesHolder.killer.hover.details)

TweenButtons(GamesHolder.knights.hover.play)
TweenButtons(GamesHolder.knights.hover.details)

TweenButtons(GamesHolder.knockout.hover.play)
TweenButtons(GamesHolder.knockout.hover.details)

TweenButtons(GamesHolder.zoo.hover.play)
TweenButtons(GamesHolder.zoo.hover.details)

TweenButtons(GamesHolder.ace.hover.play)
TweenButtons(GamesHolder.ace.hover.details)

TweenButtons(GamesHolder.cyber.hover.play)
TweenButtons(GamesHolder.cyber.hover.details)

TweenButtons(GamesHolder.snow.hover.play)
TweenButtons(GamesHolder.snow.hover.details)
