local dragonBalls = game:GetService("ReplicatedStorage").DataStorage
local thisPlayer = game.Players.LocalPlayer

for _, v in pairs(dragonBalls:GetChildren()) do
    if v:IsA('Folder') and v.Name == thisPlayer.Name then
        for _, playerData in pairs(v:GetDescendants()) do
            if playerData:IsA('Folder') and playerData.Name == 'Data' then
                local balls = playerData.Slot1['Dragon Balls']:GetChildren()
                for _, getBalls in pairs(balls) do
                    if string.match(getBalls,'Star Dragon Ball') then
                        print(getBalls)
                    end
                end
            end
        end
    end
end







