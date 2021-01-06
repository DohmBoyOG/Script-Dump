--Generated with Syntax's Converter, comet hub in the works! pastebin search coming soooon REEEEEEE.
--Counted 7 (objects this time!!!)
local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
	inst[i] = v
end
return inst
end
	
local SnowGuiNotif = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='SnowGuiNotif', Parent=game.CoreGui})
local main = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.105882, 0.14902, 0.231373),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.14902, 0.231373),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.326546013, 0, 0.301127225, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 489, 0, 256),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'main',Parent = SnowGuiNotif})
local trybutton = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Try it!',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=true,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.0509804, 0.105882, 0.164706),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.374339551, 0, 0.817161083, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 119, 0, 35),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='trybutton',Parent = main})
local TextLabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Hello there, first of all thank you for using my script, i apperciate all the comments, suggestions and critisms i have been getting and i wanted to let you guys know that version 1.0 of this GUI is being disconintuned, i will no longer be updating it or adding new features, but there is good news 2.0 is out and the GUI looks pretty fresh and alot less clutter.  There is one more feature i would like to add to it before i considered it completed and only update if it breaks or gets patched, please consider trying the new version by clicking the button below and as always contact me on discord with any issues, hit the X to close and use the older GUI. ',TextColor3=Color3.new(1, 1, 1),TextScaled=true,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0156057775, 0, 0.141511917, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 473, 0, 159),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='TextLabel',Parent = main})
local Frame = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.0509804, 0.105882, 0.164706),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, -0.00390625, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 489, 0, 37),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Frame',Parent = main})
local TextLabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Important Notification',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(-0.0047422694, 0, -0.00356030464, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 491, 0, 37),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='TextLabel',Parent = main})
local closeButton = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='[ X ]',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=true,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.0509804, 0.105882, 0.164706),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.928531706, 0, -0.00705766678, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 34, 0, 35),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='closeButton',Parent = main})

main.Active = true
main.Draggable = true


trybutton.MouseButton1Click:Connect(function()
    game:GetService("CoreGui").SnowGuiNotif:Destroy()
    game:GetService("CoreGui").ScreenGui:Destroy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/Snowman_Simulator_GUI_Rewrite_WIP.lua"))()
end)


closeButton.MouseButton1Click:Connect(function()
    game:GetService("CoreGui").SnowGuiNotif:Destroy()
end)