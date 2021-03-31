local repStorage = game:GetService('ReplicatedStorage')
local thisPlayer = game:GetService('Players').LocalPlayer
local otherPlayers = game:GetService('Players')


if repStorage:FindFirstChild("CarbonResource") then
  for _, v in pairs(otherPlayers:GetPlayers()) do
      if v ~= thisPlayer then
           repStorage.CarbonResource.Events:GetChildren()[4]:FireServer(v.Character.Humanoid, 100, "Head", {'nil', 'Auth', 'nil', 'nil'})
      end
  end
else
  print("Failed")
end