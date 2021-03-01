repeat
    wait()
until game.Players.LocalPlayer
repeat
    wait()
until game.Players.LocalPlayer.Character

print('Main Module Started')
print('Rumble Quest Script v3')
print('Made with love by DohmBoyOG')
print('Have Fun!')



local thisPlayer = game:GetService("Players").LocalPlayer
local Workspace = game:GetService("Workspace")


local Create = "CreateLobby"
local Start = "StartDungeon"
local Celler = {
    ["Difficulty"] = getgenv().GameSettings.Dungeon.Difficulty,
    ["PartyOnly"] = getgenv().GameSettings.Dungeon.PartyOnly,
    ["Hardcore"] = getgenv().GameSettings.Dungeon.Hardcore,
    ["Location"] = getgenv().GameSettings.Dungeon.Location
}

local itemType = {"Cosmetic", "Weapon", "Ability", "Armor"}

if getgenv().GameSettings.Player.RangeAngle then
    print('RangeAngle Module Loaded')
    for i, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "MaxRange") then
            v.MaxRange = math.huge
            v.MaxAngle = math.huge
        end
    end
end

    

function checkSkillPoints()
    local skillPoints =
        game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild('ScreenGui').Inventory.Inventory.Inner.Skills.Info.PointsFrame.Points.Highlight.Text
    local values = skillPoints:split(":")

    if tonumber(values[2]) > getgenv().GameSettings.Skill.NumberOfPointsToWait then
        return true
    end
end

if getgenv().GameSettings.Player.NoMeleeCoolDown then
    wait()
    print('No Cooldown Module Loaded')
    local script = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.ClientScript)
    a =
        hookfunction(
        script.delay,
        function(b)
            b = 0
            return a
        end
       )
  if Workspace:FindFirstChild("Lobby")  and getgenv().GameSettings.Player.NoMeleeCoolDown  then
    wait(1)
end

    for i, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "Cooldown") then
            v.Cooldown = 0
        end
    end
end

if getgenv().GameSettings.Player.HideName then
    wait(1)
    local getCharacterFolder = game:GetService("Workspace").Characters:GetChildren()
    if thisPlayer.Character:FindFirstChild("PlayerOverheadGui") then
        thisPlayer.Character.PlayerOverheadGui:Destroy()
    end
    print('Name Hider Module Loaded')
end

if getgenv().GameSettings.Skill.Active and checkSkillPoints() and Workspace:FindFirstChild("Lobby") then
    print('Auto Point Module Loaded')
    local skillPoints =
        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Inventory.Inventory.Inner.Skills.Info.PointsFrame.Points.Highlight.Text
    local values = skillPoints:split(":")
    while wait() do
    for i = 0, tonumber(#values[2]) do
        game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(
            "IncreaseSkill",
            getgenv().GameSettings.Skill.SkilltoPut
        )
    end
end
end
if Workspace:FindFirstChild("Lobby") and getgenv().GameSettings.Skill.Active then
    wait(5)
end

function checkRarityStatus(pName)
    for _, v in pairs(pName:GetChildren()) do
        if v.Name ~= "UIGridLayout" then
            if
                v.Parent.Star1.Visible == true and v.Parent.Star2.Visible == false and v.Parent.Star3.Visible == false and
                    v.Parent.Star4.Visible == false and
                    v.Parent.Star5.Visible == false
             then
                return "Common"
            end

            if
                v.Parent.Star1.Visible == true and v.Parent.Star2.Visible == true and v.Parent.Star3.Visible == false and
                    v.Parent.Star4.Visible == false and
                    v.Parent.Star5.Visible == false
             then
                return "Unique"
            end
            if
                v.Parent.Star1.Visible == true and v.Parent.Star2.Visible == true and v.Parent.Star3.Visible == true and
                    v.Parent.Star4.Visible == false and
                    v.Parent.Star5.Visible == false
             then
                return "Rare"
            end
            if
                v.Parent.Star1.Visible == true and v.Parent.Star2.Visible == true and v.Parent.Star3.Visible == true and
                    v.Parent.Star4.Visible == true and
                    v.Parent.Star5.Visible == false
             then
                return "Epic"
            end
            if
                v.Parent.Star1.Visible == true and v.Parent.Star2.Visible == true and v.Parent.Star3.Visible == true and
                    v.Parent.Star4.Visible == true and
                    v.Parent.Star5.Visible == true
             then
                return "Lengendary"
            end
        end
    end
end


pcall(
    function()
        if Workspace:FindFirstChild("Lobby") and GameSettings.AutoSell.Active then
            local inventory =
                game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Inventory.Inventory.Inner.Items.Frame.Items
            local RemoteFunc = game:GetService("ReplicatedStorage"):WaitForChild("Modules").Network.RemoteFunction
            local inventpos =
                game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MainButtons.Inventory.AbsolutePosition
            local VIM = game:GetService("VirtualInputManager")
            VIM:SendMouseButtonEvent(inventpos.X + 30, inventpos.Y + 50, 0, true, game, 0)
            wait(2)
            VIM:SendMouseButtonEvent(inventpos.X + 30, inventpos.Y + 50, 0, true, game, 0)
            wait(2)
            for _, v in pairs(inventory:GetDescendants()) do
                if
                    GameSettings.AutoSell.Active and v:IsA("ImageButton") and v.Name == "ItemTemplate" and
                        Workspace:FindFirstChild("Lobby")
                 then
                    --print('Auto Sell Module Loaded')
                    --print("Checkpoint Weapons")
                    if GameSettings.AutoSell.Weapon and v.Type and v.Type.Value == "Weapon" then
                        print("Checking Weapons")
                        if
                            GameSettings.AutoSell.WeaponRarity.Common and checkRarityStatus(v.RarityStars) == "Common" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Weapon", v.Id.Value}})
                        end
                        if
                            GameSettings.AutoSell.WeaponRarity.Unique and checkRarityStatus(v.RarityStars) == "Unique" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Weapon", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.WeaponRarity.Epic and checkRarityStatus(v.RarityStars) == "Epic" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Weapon", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.WeaponRarity.Lengendary and
                                checkRarityStatus(v.RarityStars) == "Lengendary" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Weapon", v.Id.Value}})
                        end
                    end

                    --print("Checkpoint Armor")

                    if GameSettings.AutoSell.Armor and v.Type and v.Type.Value == "Armor" then
                        print("Checking Armor")
                        if
                            GameSettings.AutoSell.ArmorRarity.Common and checkRarityStatus(v.RarityStars) == "Common" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Armor", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.ArmorRarity.Unique and checkRarityStatus(v.RarityStars) == "Unique" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Armor", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.ArmorRarity.Rare and checkRarityStatus(v.RarityStars) == "Rare" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Armor", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.ArmorRarity.Epic and checkRarityStatus(v.RarityStars) == "Epic" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Armor", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.ArmorRarity.Lengendary and
                                checkRarityStatus(v.RarityStars) == "Lengendary" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Armor", v.Id.Value}})
                        end
                    end

                    --print("Checkpoint Cosmetic")
                    if
                        GameSettings.AutoSell.Cosmetic and v.Type and v.Type.Value == "Hat" or v.Type.Value == "Aura" or
                            v.Type.Value == "Cosmetic"
                     then
                        print("Checking Cosmetic")
                        if
                            GameSettings.AutoSell.CosmeticRarity.Common and checkRarityStatus(v.RarityStars) == "Common" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Cosmetic", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.CosmeticRarity.Unique and checkRarityStatus(v.RarityStars) == "Unique" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Cosmetic", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.CosmeticRarity.Rare and checkRarityStatus(v.RarityStars) == "Rare" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Cosmetic", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.CosmeticRarity.Epic and checkRarityStatus(v.RarityStars) == "Epic" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Cosmetic", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.CosmeticRarity.Lengendary and
                                checkRarityStatus(v.RarityStars) == "Lengendary" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Cosmetic", v.Id.Value}})
                        end
                    end

                    --print("Checkpoint Ability")

                    if GameSettings.AutoSell.Ability and v.Type and v.Type.Value == "Ability" then
                        print("Check Ability")
                        if
                            GameSettings.AutoSell.AbilityRarity == "Common" and
                                checkRarityStatus(v.RarityStars) == "Common" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Ability", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.AbilityRarity == "Unique" and
                                checkRarityStatus(v.RarityStars) == "Unique" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Ability", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.AbilityRarity == "Rare" and checkRarityStatus(v.RarityStars) == "Rare" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Ability", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.AbilityRarity == "Epic" and checkRarityStatus(v.RarityStars) == "Epic" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Ability", v.Id.Value}})
                        end

                        if
                            GameSettings.AutoSell.AbilityRarity == "Lengendary" and
                                checkRarityStatus(v.RarityStars) == "Lengendary" and
                                v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Ability", v.Id.Value}})
                        end
                    end
                end
            end
        end
    end
)



if Workspace:FindFirstChild("Lobby") and GameSettings.AutoSell.Active then
    print('Auto Sell Module Started Please Wait 10 seconds before it continues on.')
    wait(10)
end


repeat
    wait()
until game.Players.LocalPlayer
repeat
    wait()
until game.Players.LocalPlayer.Character

spawn(
    function()
        local RemoteFunc = game:GetService("ReplicatedStorage").Modules.Network.RemoteFunction
        local RemoteEvt = game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent
        while wait() and getgenv().GameSettings.Dungeon.Active do
            if Workspace:WaitForChild("Lobby") and Workspace:FindFirstChild("Lobby") then
                print('Executing Auto Dungeon')
                RemoteFunc:InvokeServer(Create, Celler)
                wait()
                getgenv().GameSettings.Dungeon.Active  = false
            end
        end
        print("Created Dungeon, have fun!")
        RemoteEvt:FireServer(Start)
    end
)

function setWep()
    for _, v in pairs(thisPlayer.Character:GetChildren()) do
        if
            v.Name ~= "HumanoidRootPart" and v.Name ~= "LeftHand" and v.Name ~= "LeftLowerArm" and
                v.Name ~= "LeftUpperArm" and
                v.Name ~= "RightHand" and
                v.Name ~= "RightLowerArm" and
                v.Name ~= "RightUpperArm" and
                v.Name ~= "UpperTorso" and
                v.Name ~= "LeftFoot" and
                v.Name ~= "LeftLowerLeg" and
                v.Name ~= "LeftUpperLeg" and
                v.Name ~= "RightFoot" and
                v.Name ~= "RightLowerLeg" and
                v.Name ~= "RightUpperLeg" and
                v.Name ~= "LowerTorso" and
                v.Name ~= "Humanoid" and
                v.Name ~= "Head" and
                v.Name ~= "Health" and
                v.Name ~= "Animate" and
                v.Name ~= "ArmorHead" and
                v.Name ~= "ArmorTorso" and
                v.Name ~= "ArmorChest" and
                v.Name ~= "ArmorLegs" and
                v.Name ~= "PlayerOverheadGui" and
                v.ClassName == "Model" and
                v.ClassName ~= "Folder" and
                v.ClassName ~= "Part" and
                v.ClassName ~= "MeshPart"
         then
            setID = v.Name
        end
    end
end

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

repeat
    wait()
until game.Players.LocalPlayer
repeat
    wait()
until game.Players.LocalPlayer.Character

print('Auto Dungeon Module Loaded')

game:GetService("RunService").Stepped:connect(
    function()
        pcall(
            function()
                if not Workspace:FindFirstChild("Lobby") then
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(11)
                end
            end
        )
    end
)

setWep()

spawn(
    function()
        local RemoteEvt = game:GetService("ReplicatedStorage"):WaitForChild("Modules").Network.RemoteEvent
        local workEn = game:GetService("Workspace"):WaitForChild("Enemies")
        while wait() do
            for _, v in pairs(workEn:GetChildren()) do
                if
                    v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                        not Workspace:FindFirstChild("Lobby") and
                        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.DungeonProgress.Info.Time.Visible and
                        not workEn:FindFirstChild("Abaddon")
                 then
                     print('Beginning Attack Module')
                    repeat
                        AttackTarget(
                            thisPlayer.Character.HumanoidRootPart.Position,
                            v.HumanoidRootPart.Position,
                            v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().GameSettings.Player.PlayerHeight, 0)
                        )
                        for i = 1, 3 do
                            game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(
                                "WeaponDamage",
                                setID,
                                v:WaitForChild("Humanoid")
                            )
                        end
                        game:GetService("RunService").Heartbeat:wait()
                    until v.Humanoid.Health == 0
                end
            end
        end
    end
)

spawn(
    function()
        local RemoteEvt = game:GetService("ReplicatedStorage"):WaitForChild("Modules").Network.RemoteEvent
        local workEn = game:GetService("Workspace"):WaitForChild("Enemies")
        while wait() do
            for _, v in pairs(workEn:GetChildren()) do
                if
                    workEn:FindFirstChild("Abaddon") and v:FindFirstChild("Humanoid") and
                        v:FindFirstChild("HumanoidRootPart") and
                        not Workspace:FindFirstChild("Lobby")
                 then
                    repeat
                        AttackTarget(
                            thisPlayer.Character.HumanoidRootPart.Position,
                            v.HumanoidRootPart.Position,
                            v.HumanoidRootPart.CFrame * CFrame.new(10, -10, 0)
                        )
                        AttackTarget(
                            thisPlayer.Character.HumanoidRootPart.Position,
                            v.HumanoidRootPart.Position,
                            v.HumanoidRootPart.CFrame * CFrame.new(0, -10, 10)
                        )

                        for i = 1, 3 do
                            game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(
                                "WeaponDamage",
                                setID,
                                v:WaitForChild("Humanoid")
                            )
                        end
                        game:GetService("RunService").Heartbeat:wait()
                    until v.Humanoid.Health == 0
                end
            end
        end
    end
)