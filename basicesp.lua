local player = game.Players.LocalPlayer
local players = {} -- Table to get the players
local core = game:GetService("CoreGui")

function CreateBillboard(adornee)
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "E"
    local frame = Instance.new("Frame")
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(4, 0, 5.5, 0)
    billboard.StudsOffset = Vector3.new(0, 0, 0)
    billboard.Adornee = adornee
    frame.BackgroundColor = BrickColor.new("Maroon")
    frame.BackgroundTransparency = .35
    frame.BorderSizePixel = 0
    frame.Size = UDim2.new(1, 0, 1, 0)
    billboard.Parent = core
    frame.Parent = billboard
end

function GetEnemyPlayers()
    players = {}
    if #game:GetService("Teams"):GetTeams() > 0 then
        local friendly = player.Team.Name
        for i, v in pairs(game:GetService("Teams"):GetTeams()) do
            if v.Name ~= friendly and v.Name ~= (game.Teams:FindFirstChild("Spectators") and game.Teams.Spectators.Name) then
                print("Enemy team: " .. v.Name)
                local enemyPlayers = v:GetPlayers()
                for i, v in pairs(enemyPlayers) do
                    table.insert(players, v)
                end
            end
        end
        return players
    end
end

function InsertBillboardToPlayers()
    for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v.Name == "E" then
            v:Destroy()
        end
    end
    if #game:GetService("Teams"):GetTeams() > 0 then
        local enemies = GetEnemyPlayers()
        for i, v in pairs(enemies) do
            CreateBillboard(v.Character.Head)
        end
    else
        warn("No enemy players.")
    end
end
InsertBillboardToPlayers()

player:GetMouse().KeyDown:Connect(
    function(key)
        if key:lower() == "k" then
            InsertBillboardToPlayers()
        end
    end
)

game.Players.PlayerAdded:Connect(
    function(plr)
        plr.CharacterAdded:Wait()
        players = GetEnemyPlayers()
        InsertBillboardToPlayers()
    end
)

game.Players.PlayerRemoving:Connect(
    function(plr)
        plr.CharacterRemoving:Wait()
        players = GetEnemyPlayers()
        InsertBillboardToPlayers()
    end
)
