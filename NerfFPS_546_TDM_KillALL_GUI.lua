local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
	inst[i] = v
end
return inst
end
	
local ScreenGui = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='ScreenGui', Parent=game.CoreGui})
local main = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.337255, 0.337255, 0.337255),BackgroundTransparency=0.15000000596046,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0241327304, 0, 0.660225451, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 192, 0, 74),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'main',Parent = ScreenGui})
local TextLabel = CreateInstance('TextLabel',{Font=Enum.Font.RobotoMono,FontSize=Enum.FontSize.Size14,Text='Nerf FPS V5.46',TextColor3=Color3.new(0.776471, 0.137255, 0.14902),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0.360784, 0.894118),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.203125, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 114, 0, 28),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='TextLabel',Parent = main})
local Killall = CreateInstance('TextButton',{Font=Enum.Font.RobotoMono,FontSize=Enum.FontSize.Size14,Text='Kill em',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.658824, 0.658824, 0.658824),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.208144829, 0, 0.394525051, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 113, 0, 23),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Killall',Parent = main})
local creator = CreateInstance('TextButton',{Font=Enum.Font.RobotoMono,FontSize=Enum.FontSize.Size14,Text='DohmBoyOG#0313',TextColor3=Color3.new(0.776471, 0.137255, 0.14902),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.270833313, 0, 0.702702701, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 87, 0, 28),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='creator',Parent = main})

main.Active = true
main.Draggable = true

Killall.MouseButton1Click:Connect(function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/NerfFPS_546_TDM_KillALL_OBED.lua'),true))()
end)

creator.MouseButton1Click:Connect(function()
wait(1.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Secret Sauce"; -- the title (ofc)
Text = "Feel Free to contact me on my Discord."; -- what the text says (ofc)
Icon = "rbxassetid://57254792"; -- the image if u want. 
Duration = 5; -- how long the notification should in secounds
})
end)