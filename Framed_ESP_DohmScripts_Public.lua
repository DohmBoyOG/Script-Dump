local thisPlayer = game:GetService('Players').LocalPlayer
local otherPlayers = game:GetService('Players')

print('\nFramed ESP\n by DohmIndustries')

function GetEnemyPlayers()
   enemiesList = {}
   target = workspace.Events.GetTargetLocal:InvokeServer()
   
   for _, v in pairs(otherPlayers:GetPlayers()) do
      if v ~= thisPlayer and v.TeamColor ~= 'Cocoa' and v ~= target then
         if thisPlayer.TeamColor.Name == 'Bright red' then
            if v.Role.Value == 'Police' then
               table.insert(enemiesList, v)
               print('inserting police')
            end
            if v.Role.Value == 'Undercover' then
               table.insert(enemiesList, v)
               print('inserting undercover')
            end
         end
         if v ~= thisPlayer and v.TeamColor ~= 'Cocoa' and v ~= target then
            if thisPlayer.TeamColor.Name == 'Toothpaste' then
               if v.Role.Value == 'Framed' then
                  table.insert(enemiesList, v)
                  print('inserting framed')
               end
            end
         end
      end
   end
   return enemiesList
end

--[Credit: Eski on V3r ]--
function isnil(thing)
    return (thing == nil)
end

local function round(n)
    return math.floor(tonumber(n) + 0.5)
end

function UpdatePlayerChams()
   if #game:GetService("Teams"):GetTeams() > 0 then
      local enemies = GetEnemyPlayers()
      for i, v in pairs(enemies) do
         pcall(
         function()
            if not isnil(v.Character) then
               for _, k in pairs(v.Character:GetChildren()) do
                  if k:IsA "BasePart" and not k:FindFirstChild "Cham" then
                     local cham = Instance.new("BoxHandleAdornment", k)
                     cham.ZIndex = 10
                     cham.Adornee = k
                     cham.AlwaysOnTop = true
                     cham.Size = k.Size
                     cham.Transparency = .7
                     cham.Color3 = Color3.new(1, 0, 0)
                     cham.Name = "Cham"
                  end
               end
               target = workspace.Events.GetTargetLocal:InvokeServer()
               if not isnil(target.Character) then
                  for _, k in pairs(target.Character:GetChildren()) do
                     if k:IsA "BasePart" and not k:FindFirstChild "Cham" then
                        local cham = Instance.new("BoxHandleAdornment", k)
                        cham.ZIndex = 10
                        cham.Adornee = k
                        cham.AlwaysOnTop = true
                        cham.Size = k.Size
                        cham.Transparency = .7
                        cham.Color3 = Color3.new(0, 0, 1)
                        cham.Name = "Cham"
                     end
                  end
                  for _, v in pairs(otherPlayers:GetPlayers()) do
                     for _, k in pairs(target.Character:GetChildren()) do
                        if thisPlayer.Role == 'Police' or thisPlayer.Role == 'Undercover' and v.Role == 'Undercover' and k:IsA "BasePart" and not k:FindFirstChild "Cham" then
                           local cham = Instance.new("BoxHandleAdornment", k)
                           cham.ZIndex = 10
                           cham.Adornee = k
                           cham.AlwaysOnTop = true
                           cham.Size = k.Size
                           cham.Transparency = .7
                           cham.Color3 = Color3.new(0, 0, 1)
                           cham.Name = "Cham"
                        end
                     end
                     if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild "NameEsp" then
                        local bill = Instance.new("BillboardGui", v.Character.Head)
                        bill.Name = "NameEsp"
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Character.Head
                        bill.AlwaysOnTop = true
                        local name = Instance.new("TextLabel", bill)
                        name.TextWrapped = true
                        name.Text =
                        (v.Name ..
                        " " ..
                        round(
                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                        v.Character.Head.Position).Magnitude / 3
                        ) ..
                        "m")
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = "Top"
                        name.TextColor3 = Color3.new(1, 1, 1)
                        name.BackgroundTransparency = 1
                     else
                        v.Character.Head.NameEsp.TextLabel.Text =
                        (v.Name ..
                        " " ..
                        round(
                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                        v.Character.Head.Position).Magnitude / 3
                        ) ..
                        "m")
                     end
                  end
               end
            end
         end
         )
      end
   end
end
--[Credit: Eski on V3r ]--

while wait() do
    UpdatePlayerChams()
end


