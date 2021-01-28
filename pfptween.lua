--Generated with Syntax's Converter, comet hub in the works! pastebin search coming soooon REEEEEEE.
--Counted 2 (objects this time!!!)
local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
	inst[i] = v
end
return inst
end
	
local PictureFrame = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='PictureFrame', Parent=game.CoreGui})
local PFP = CreateInstance('ImageLabel',{Image='rbxasset://textures/ui/GuiImagePlaceholder.png',ImageColor3=Color3.new(1, 1, 1),ImageRectOffset=Vector2.new(0, 0),ImageRectSize=Vector2.new(0, 0),ImageTransparency=0,ScaleType=Enum.ScaleType.Stretch,SliceCenter=Rect.new(0, 0, 0, 0),Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, -0.334943622, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 212, 0, 208),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='PFP',Parent = PictureFrame})


local Players = game:GetService("Players")
 
local player = Players.LocalPlayer
 
local userId = player.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

PFP.Image = content

PFP:TweenPosition(UDim2.new(0.0, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
