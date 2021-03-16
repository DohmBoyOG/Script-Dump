local KillFeed = Instance.new("ScreenGui")
local FindButton = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local playerKilled = Instance.new("TextLabel")



KillFeed.Name = "KillFeed"
KillFeed.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

FindButton.Name = "FindButton"
FindButton.Parent = KillFeed
FindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FindButton.BackgroundTransparency = 1.000
FindButton.Position = UDim2.new(-0.00700000022, 0, 0.189999998, 0)
FindButton.Selectable = true
FindButton.Size = UDim2.new(0.2890625, 0, 0.11961057, 0)
FindButton.Image = "rbxassetid://3987149397"
FindButton.ImageTransparency = 0.260
FindButton.SliceCenter = Rect.new(100, 100, 100, 100)

Button.Name = "Button"
Button.Parent = FindButton
Button.Active = false
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Size = UDim2.new(1, 0, 1, 0)
Button.ZIndex = 5
Button.AutoButtonColor = false
Button.Font = Enum.Font.SourceSans
Button.Text = ""
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000

Title.Name = "Title"
Title.Parent = FindButton
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.172972977, 0, 0.156681076, 0)
Title.Size = UDim2.new(0.648768723, 0, 0.306617111, 0)
Title.ZIndex = 3
Title.Font = Enum.Font.SciFi
Title.Text = "Dohm Industries Kill Feed"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

UIAspectRatioConstraint.Parent = FindButton
UIAspectRatioConstraint.AspectRatio = 4.831
UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

playerKilled.Name = "playerKilled"
playerKilled.Parent = FindButton
playerKilled.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
playerKilled.BackgroundTransparency = 1.000
playerKilled.Position = UDim2.new(0, -80, 0.522000015, 0)
playerKilled.Size = UDim2.new(0.648768723, 0, 0.245301902, 0)
playerKilled.ZIndex = 4
playerKilled.Font = Enum.Font.SciFi
playerKilled.Text = "TestPlayer"
playerKilled.TextColor3 = Color3.fromRGB(255, 255, 255)
playerKilled.TextScaled = true
playerKilled.TextSize = 14.000
playerKilled.TextWrapped = true
playerKilled.Visible = false



game:GetService('Players').PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		character:WaitForChild("Humanoid").Died:Connect(function()
		    killtext = playerKilled:Clone()
		    killtext.Visible = true
		    killtext.Text = v
		    killtext.Parent = FindButton
		    killtext:TweenPosition(UDim2.new(0.16, 0, 0.5, 0))
		    wait(2)
		    killtext:Destroy()
			print('Killed Player'..player.Name)
		end)
	end)
end)
