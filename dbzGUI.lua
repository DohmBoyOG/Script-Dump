local dragonBalls = game:WaitForChild('ReplicatedStorage'):WaitForChild('DataStorage')
local gmenu = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Game Menu")
local grass = game:GetService("Workspace"):WaitForChild('Map').Grass

local otherPlayers = game:GetService("Players")
local thisPlayer = game:GetService("Players").LocalPlayer

local TeleportService = game:GetService("TeleportService")

getgenv().namekSearch = true

local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false

local ballsChecked = {}
local images = {d1, d2, d3, d4, d5, d6, d7}

local userId = thisPlayer.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = otherPlayers:GetUserThumbnailAsync(userId, thumbType, thumbSize)

local function CreateInstance(cls, props)
    local inst = Instance.new(cls)
    for i, v in pairs(props) do
        inst[i] = v
    end
    return inst
end

local DBZFinder =
    CreateInstance(
    "ScreenGui",
    {DisplayOrder = 0, Enabled = true, ResetOnSpawn = true, Name = "DBZFinder", Parent = game.CoreGui}
)
local Main =
    CreateInstance(
    "Frame",
    {
        Style = Enum.FrameStyle.Custom,
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.338150471, 0, 0.16908212, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 732, 0, 330),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "Main",
        Parent = DBZFinder
    }
)
local Background =
    CreateInstance(
    "ImageLabel",
    {
        Image = "rbxassetid://1503013379",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Stretch,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(-0.069447428, 0, -1.28947306, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(1, 0, 1, 0),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 0,
        Name = "Background",
        Parent = Main
    }
)
local Title =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.ArialBold,
        FontSize = Enum.FontSize.Size14,
        Text = "Dragon Ball Finder",
        TextColor3 = Color3.new(1, 1, 1),
        TextScaled = true,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 0.60000002384186,
        TextTransparency = 0,
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = true,
        Draggable = false,
        Position = UDim2.new(0, 0, 0, 25),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(1, 0, 0.143777743, 0),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 0,
        Name = "Title",
        Parent = Background
    }
)
local PFP =
    CreateInstance(
    "ImageLabel",
    {
        Image = "rbxasset://textures/ui/GuiImagePlaceholder.png",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0,
        ScaleType = Enum.ScaleType.Stretch,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 0,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.0751366094, 0, 0.324242413, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 100, 0, 100),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "PFP",
        Parent = Background
    }
)
local PlayerName =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.ArialBold,
        FontSize = Enum.FontSize.Size14,
        Text = "UnknownPlayer23",
        TextColor3 = Color3.new(1, 1, 1),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 0.60000002384186,
        TextTransparency = 0,
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = true,
        Draggable = false,
        Position = UDim2.new(0, 16, 0, 208),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0.241803259, 0, 0.110444412, 0),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 0,
        Name = "PlayerName",
        Parent = Background
    }
)
local d1 =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6315033620",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0.5,
        ScaleType = Enum.ScaleType.Stretch,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.248633876, 0, 0.790909052, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 68, 0, 61),
        SizeConstraint = Enum.SizeConstraint.RelativeYY,
        Visible = true,
        ZIndex = 1,
        Name = "d1",
        Parent = Background
    }
)
local d2 =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6315034034",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0.5,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.356557369, 0, 0.80000037, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 59, 0, 59),
        SizeConstraint = Enum.SizeConstraint.RelativeYY,
        Visible = true,
        ZIndex = 1,
        Name = "d2",
        Parent = Background
    }
)
local d4 =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6315059075",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0.5,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.579234958, 0, 0.824242473, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 51, 0, 46),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "d4",
        Parent = Background
    }
)
local d5 =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6315059258",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0.5,
        ScaleType = Enum.ScaleType.Slice,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.668032825, 0, 0.815151572, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 63, 0, 53),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "d5",
        Parent = Background
    }
)
local d6 =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6315059530",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0.5,
        ScaleType = Enum.ScaleType.Fit,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.882513404, 0, 0.793939471, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 58, 0, 57),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "d6",
        Parent = Background
    }
)
local d7 =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6315062591",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0.5,
        ScaleType = Enum.ScaleType.Slice,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.774590135, 0, 0.78181833, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 66, 0, 66),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "d7",
        Parent = Background
    }
)
local d3 =
    CreateInstance(
    "ImageLabel",
    {
        Image = "http://www.roblox.com/asset/?id=6315034603",
        ImageColor3 = Color3.new(1, 1, 1),
        ImageRectOffset = Vector2.new(0, 0),
        ImageRectSize = Vector2.new(0, 0),
        ImageTransparency = 0.5,
        ScaleType = Enum.ScaleType.Slice,
        SliceCenter = Rect.new(0, 0, 0, 0),
        Active = false,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = false,
        Draggable = false,
        Position = UDim2.new(0.463114768, 0, 0.812121511, 0),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(0, 53, 0, 51),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 1,
        Name = "d3",
        Parent = Background
    }
)
local current =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.ArialBold,
        FontSize = Enum.FontSize.Size14,
        Text = "Collected Dragonballs",
        TextColor3 = Color3.new(1, 1, 1),
        TextScaled = false,
        TextSize = 14,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 0.60000002384186,
        TextTransparency = 0,
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = true,
        Draggable = false,
        Position = UDim2.new(0, -271, 0, 271),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(1, 0, 0.143777743, 0),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 0,
        Name = "current",
        Parent = Background
    }
)
local searching =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.ArialBold,
        FontSize = Enum.FontSize.Size32,
        Text = "Currently Searching",
        TextColor3 = Color3.new(1, 1, 1),
        TextScaled = false,
        TextSize = 30,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 0.60000002384186,
        TextTransparency = 0,
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = true,
        Draggable = false,
        Position = UDim2.new(0, 26, 0, 107),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(1, 0, 0.143777743, 0),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 0,
        Name = "searching",
        Parent = Background
    }
)
local search =
    CreateInstance(
    "TextLabel",
    {
        Font = Enum.Font.ArialBold,
        FontSize = Enum.FontSize.Size24,
        Text = "Earth",
        TextColor3 = Color3.new(1, 1, 1),
        TextScaled = false,
        TextSize = 20,
        TextStrokeColor3 = Color3.new(0, 0, 0),
        TextStrokeTransparency = 0.60000002384186,
        TextTransparency = 0,
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Active = true,
        AnchorPoint = Vector2.new(0, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
        BorderSizePixel = 1,
        ClipsDescendants = true,
        Draggable = false,
        Position = UDim2.new(0, 26, 0, 154),
        Rotation = 0,
        Selectable = false,
        Size = UDim2.new(1, 0, 0.143777743, 0),
        SizeConstraint = Enum.SizeConstraint.RelativeXY,
        Visible = true,
        ZIndex = 0,
        Name = "search",
        Parent = Background
    }
)

PFP.Image = content
PlayerName.Text = thisPlayer.Name

for _, v in pairs(dragonBalls:GetChildren()) do
    if v:IsA("Folder") and v.Name == thisPlayer.Name then
        for _, playerData in pairs(v:GetDescendants()) do
            if playerData:IsA("Folder") and playerData.Name == "Data" then
                local balls = playerData.Slot1["Dragon Balls"]:GetChildren()
                for _, getBalls in pairs(balls) do
                    if string.match(getBalls.Name, "Star Dragon Ball") then
                        table.insert(ballsChecked, getBalls.Value)
                    end
                end
            end
        end
    end
end

v = ballsChecked
for i = 0, #v do
    t = v[i]
    ball = "d" .. i + 0
    if t == true then
        for _, c in pairs(images) do
            if string.match(ball, tostring(c)) then
                c.ImageTransparency = 0
            end
        end
    end
end

Background:TweenPosition(UDim2.new(0.0, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)


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

function playSound(sid)
    local s = Instance.new("Sound")
    s.Name = "Sound"
    s.SoundId = "http://www.roblox.com/asset/?id="..sid 
    s.Volume = 10
    s.Pitch = 1
    s.Looped = false
    s.archivable = false
    s.Parent = game.Workspace
    wait(0)
    s:play()
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

function findBall()
    for _, v in pairs(grass:GetDescendants()) do
        if v:IsA("ClickDetector") then
            return true
        end
    end
end

local ballsChecked = {}
local images = {d1, d2, d3, d4, d5, d6, d7}

for _, v in pairs(dragonBalls:GetChildren()) do
    if v:IsA("Folder") and v.Name == thisPlayer.Name then
        for _, playerData in pairs(v:GetDescendants()) do
            if playerData:IsA("Folder") and playerData.Name == "Data" then
                local balls = playerData.Slot1["Dragon Balls"]:GetChildren()
                for _, getBalls in pairs(balls) do
                    if string.match(getBalls.Name, "Star Dragon Ball") then
                        table.insert(ballsChecked, getBalls.Value)
                    end
                end
            end
        end
    end
end

v = ballsChecked
for i = 0, #v do
    t = v[i]
    ball = "d" .. i + 0
    if t == true then
        for _, c in pairs(images) do
            print(c)
            if string.match(ball, tostring(c)) then
                c.ImageTransparency = 0
            end
        end
    end
end

function cPopup(tit, txt, img, snd)
    local function CreateInstance(cls, props)
        local inst = Instance.new(cls)
        for i, v in pairs(props) do
            inst[i] = v
        end
        return inst
    end

    local FoundBall =
        CreateInstance(
        "ScreenGui",
        {DisplayOrder = 0, Enabled = true, ResetOnSpawn = true, Name = "FoundBall", Parent = game.CoreGui}
    )
    local Main =
        CreateInstance(
        "Frame",
        {
            Style = Enum.FrameStyle.Custom,
            Active = false,
            AnchorPoint = Vector2.new(0, 0),
            BackgroundColor3 = Color3.new(1, 1, 1),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
            BorderSizePixel = 1,
            ClipsDescendants = false,
            Draggable = false,
            Position = UDim2.new(0.31269592, 0, 0.148148149, 0),
            Rotation = 0,
            Selectable = false,
            Size = UDim2.new(0, 637, 0, 374),
            SizeConstraint = Enum.SizeConstraint.RelativeYY,
            Visible = true,
            ZIndex = 1,
            Name = "Main",
            Parent = FoundBall
        }
    )
    local Background =
        CreateInstance(
        "ImageLabel",
        {
            Image = "rbxassetid://1503013379",
            ImageColor3 = Color3.new(1, 1, 1),
            ImageRectOffset = Vector2.new(0, 0),
            ImageRectSize = Vector2.new(0, 0),
            ImageTransparency = 0,
            ScaleType = Enum.ScaleType.Fit,
            SliceCenter = Rect.new(0, 0, 0, 0),
            Active = false,
            AnchorPoint = Vector2.new(0, 0),
            BackgroundColor3 = Color3.new(1, 1, 1),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
            BorderSizePixel = 1,
            ClipsDescendants = false,
            Draggable = false,
            Position = UDim2.new(-0.156879127, 0, 0.0953754261, 0),
            Rotation = 0,
            Selectable = false,
            Size = UDim2.new(1.06279433, 0, 0.636363626, 0),
            SizeConstraint = Enum.SizeConstraint.RelativeXY,
            Visible = true,
            ZIndex = 0,
            Name = "Background",
            Parent = Main
        }
    )
    local Title =
        CreateInstance(
        "TextLabel",
        {
            Font = Enum.Font.ArialBold,
            FontSize = Enum.FontSize.Size14,
            Text = tit,
            TextColor3 = Color3.new(1, 1, 1),
            TextScaled = true,
            TextSize = 14,
            TextStrokeColor3 = Color3.new(0, 0, 0),
            TextStrokeTransparency = 0.60000002384186,
            TextTransparency = 0,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Center,
            Active = true,
            AnchorPoint = Vector2.new(0, 0),
            BackgroundColor3 = Color3.new(1, 1, 1),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
            BorderSizePixel = 1,
            ClipsDescendants = true,
            Draggable = false,
            Position = UDim2.new(0, 158, 0, 25),
            Rotation = 0,
            Selectable = false,
            Size = UDim2.new(0.533234835, 0, 0.143777728, 0),
            SizeConstraint = Enum.SizeConstraint.RelativeXY,
            Visible = true,
            ZIndex = 0,
            Name = "Title",
            Parent = Background
        }
    )
    local d7 =
        CreateInstance(
        "ImageLabel",
        {
            Image = "http://www.roblox.com/asset/?id="..img,
            ImageColor3 = Color3.new(1, 1, 1),
            ImageRectOffset = Vector2.new(0, 0),
            ImageRectSize = Vector2.new(0, 0),
            ImageTransparency = 0,
            ScaleType = Enum.ScaleType.Fit,
            SliceCenter = Rect.new(0, 0, 0, 0),
            Active = false,
            AnchorPoint = Vector2.new(0, 0),
            BackgroundColor3 = Color3.new(1, 1, 1),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
            BorderSizePixel = 1,
            ClipsDescendants = false,
            Draggable = false,
            Position = UDim2.new(0.413789034, 0, 0.31280902, 0),
            Rotation = 0,
            Selectable = false,
            Size = UDim2.new(0, 139, 0, 89),
            SizeConstraint = Enum.SizeConstraint.RelativeXY,
            Visible = true,
            ZIndex = 1,
            Name = "d7",
            Parent = Background
        }
    )
    local Title =
        CreateInstance(
        "TextLabel",
        {
            Font = Enum.Font.ArialBold,
            FontSize = Enum.FontSize.Size14,
            Text = txt,
            TextColor3 = Color3.new(1, 1, 1),
            TextScaled = false,
            TextSize = 14,
            TextStrokeColor3 = Color3.new(0, 0, 0),
            TextStrokeTransparency = 0.60000002384186,
            TextTransparency = 0,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Center,
            Active = true,
            AnchorPoint = Vector2.new(0, 0),
            BackgroundColor3 = Color3.new(1, 1, 1),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
            BorderSizePixel = 1,
            ClipsDescendants = true,
            Draggable = false,
            Position = UDim2.new(0, 168, 0, 190),
            Rotation = 0,
            Selectable = false,
            Size = UDim2.new(0.51846385, 0, 0.126971021, 0),
            SizeConstraint = Enum.SizeConstraint.RelativeXY,
            Visible = true,
            ZIndex = 0,
            Name = "Title",
            Parent = Background
        }
    )
    
    Main:TweenPosition(UDim2.new(0, 5, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)


    playSound(snd)
end


if gmenu.Enabled == true then
    if findBall() == true then
        wait(5)
        game:GetService("ReplicatedStorage").Events.Update:FireServer()
        cPopup(
            "Dragon Ball Found!!?!?!",
            "Please wait, while we collect it then teleport to a different server to continue the search!",
            6315062591,
            612255535
        )
        wait(10)
        Teleport()
    else
        wait(6)
        cPopup(
            "No Dragonball Found!",
            "Thats okay, we will get it next time, please wait while to teleport to a different server!",
            359563629,
            6042038152
        )
        wait(12)
        Teleport()
        wait()
    end
end













    

    