local workspace = game:GetService("Workspace")
local isColor =  game:GetService("Players").LocalPlayer.PlayerGui.Main.GameProgress.Color

function getTopSurface()
    for _, maps in pairs(workspace:GetDescendants()) do
        if maps:IsA('Model') and maps.Name == 'Map' then
            if maps.Parent.AnchorPoint.Position.Y == 200 then
                return maps
            end
        end
    end
end

function getColorMatch()
    local CurrentColor = game:GetService("Players").LocalPlayer.PlayerGui.Main.GameProgress.Color.BackgroundColor3
    a = getTopSurface():GetChildren()
    for i,v in pairs(a) do
        if v:IsA('MeshPart') and v.Color == CurrentColor then
            local DistanceX = game:GetService("Players").LocalPlayer:DistanceFromCharacter(v.Position)
            if Distance == nil or DistanceX  < Distance then
                Distance = DistanceX 
                NearestPart = v
            end
        end
    end
    print(NearestPart.Position)
    game:GetService("Players").LocalPlayer.Character.Humanoid:MoveTo(NearestPart.Position)
end





isColor:GetPropertyChangedSignal("BackgroundColor3"):Connect(getColorMatch)


        

