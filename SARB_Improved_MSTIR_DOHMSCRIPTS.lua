local thisPlayer = game:GetService('Players').LocalPlayer
local otherPlayer = game:GetService('Players')
local run = game:GetService("RunService")


function AttackTarget(plrpos, enepos, enecframe)
    local tweenPlayer = game:service "TweenService"
    local twnINF = TweenInfo.new((enepos - plrpos).Magnitude / 80, Enum.EasingStyle.Quad)
    local h = tick()
    local i, j =
        pcall(
        function()
            local plytween = tweenPlayer:Create(thisPlayer.Character["HumanoidRootPart"], twnINF, {CFrame = enecframe})
            plytween:Play()
        end
    )
    if not i then
        return j
    end
end

function isThisPlayerOut()
    if thisPlayer and thisPlayer.Character then
        local magnitude = (thisPlayer.Character.HumanoidRootPart.CFrame.p - game:GetService("Workspace").Stage["Platform_SMALL"].Middle:GetModelCFrame().p).Magnitude
        if magnitude >= 45 then
            return true
        else
            return false
        end
    end
end

                
        
                
function isPlayerPlaying(Player)
    local usr = Player
        if Player ~= nil then
            local magnitude = (usr.Character.HumanoidRootPart.CFrame.p - game:GetService("Workspace").Stage["Platform_SMALL"].Middle:GetModelCFrame().p).Magnitude
            if magnitude <= 45 then
                return true
            else
                return false
            end
        end
    end


spawn(function() 
    while wait() do
        for _, v in pairs(otherPlayer:GetPlayers()) do
            if v ~= thisPlayer and v.Character.Humanoid ~= nil and isPlayerPlaying(v) and not isThisPlayerOut() then
                repeat
                    if isThisPlayerOut() then
                        thisPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Stage["Platform_SMALL"].Middle:GetModelCFrame() * CFrame.new(0,10,0)
                    end
                    
                        
                 AttackTarget(thisPlayer.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2))
                    
                    for i = 1, 1 do
                        game:GetService("Players").LocalPlayer.Character.AttackEvent:FireServer(thisPlayer.Character, 0)
                        game:GetService("Players").LocalPlayer.Character.AttackEvent:FireServer(thisPlayer.Character, 1)
                    end
                    game:GetService("RunService").Heartbeat:wait()
                until not isPlayerPlaying(v) or not v.Character or not v.Character.Humanoid or not v.Character.HumanoidRootPart
            end
        end
    end
end
)
