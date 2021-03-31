local inventory = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Inventory.Inventory.Inner.Items.Frame.Items
local RemoteFunc = game:GetService("ReplicatedStorage"):WaitForChild("Modules").Network.RemoteFunction

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

function CheckIfItemVisible(nilitem)
    if #nilitem:GetChildren() == 0 then
        print("True")
    end
end

for _, v in pairs(inventory:GetDescendants()) do
    if v:IsA("ImageButton") and v.Name == "ItemTemplate" then
        if v.Visible and v.Type and v.Type.Value == "Weapon" then
            if
                checkRarityStatus(v.RarityStars) == "Common" and v.Equipped.Visible == false and
                    v.RarityBackground.Visible == false
             then
                RemoteFunc:InvokeServer("SellItems", {{"Weapon", v.Id.Value}})
            end

            if v.Visible and v.Type and v.Type.Value == "Weapon" then
                if
                    checkRarityStatus(v.RarityStars) == "Unique" and v.Equipped.Visible == false and
                        v.RarityBackground.Visible == false
                 then
                    RemoteFunc:InvokeServer("SellItems", {{"Weapon", v.Id.Value}})
                end

                if v.Visible and v.Type and v.Type.Value == "Weapon" then
                    if
                        checkRarityStatus(v.RarityStars) == "Epic" and v.Equipped.Visible == false and
                            v.RarityBackground.Visible == false
                     then
                        RemoteFunc:InvokeServer("SellItems", {{"Weapon", v.Id.Value}})
                    end

                    if v.Visible and v.Type and v.Type.Value == "Weapon" then
                        if
                            checkRarityStatus(v.RarityStars) == "Lengendary" and v.Equipped.Visible == false and
                                v.RarityBackground.Visible == false
                         then
                            RemoteFunc:InvokeServer("SellItems", {{"Weapon", v.Id.Value}})
                        end

                        if v.Visible and v.Type and v.Type.Value == "Armor" then
                            if
                                checkRarityStatus(v.RarityStars) == "Common" and v.Equipped.Visible == false and
                                    v.RarityBackground.Visible == false
                             then
                                RemoteFunc:InvokeServer("SellItems", {{"Armor", v.Id.Value}})
                            end
                            if v.Visible and v.Type and v.Type.Value == "Armor" then
                                if
                                    checkRarityStatus(v.RarityStars) == "Unique" and v.Equipped.Visible == false and
                                        v.RarityBackground.Visible == false
                                 then
                                    RemoteFunc:InvokeServer("SellItems", {{"Armor", v.Id.Value}})
                                end
                                if v.Visible and v.Type and v.Type.Value == "Armor" then
                                    if
                                        checkRarityStatus(v.RarityStars) == "Rare" and v.Equipped.Visible == false and
                                            v.RarityBackground.Visible == false
                                     then
                                        RemoteFunc:InvokeServer("SellItems", {{"Armor", v.Id.Value}})
                                    end
                                    if v.Visible and v.Type and v.Type.Value == "Armor" then
                                        if
                                            checkRarityStatus(v.RarityStars) == "Epic" and v.Equipped.Visible == false and
                                                v.RarityBackground.Visible == false
                                         then
                                            RemoteFunc:InvokeServer("SellItems", {{"Armor", v.Id.Value}})
                                        end
                                        if v.Visible and v.Type and v.Type.Value == "Armor" then
                                            if
                                                checkRarityStatus(v.RarityStars) == "Lengendary" and
                                                    v.Equipped.Visible == false and
                                                    v.RarityBackground.Visible == false
                                             then
                                                RemoteFunc:InvokeServer("SellItems", {{"Armor", v.Id.Value}})
                                             end
                                        
                                         if v.Visible and v.Type and v.Type.Value == "Cosmetic" then
                                            if
                                                checkRarityStatus(v.RarityStars) == "Common" and
                                                    v.Equipped.Visible == false and
                                                    v.RarityBackground.Visible == false
                                             then
                                                RemoteFunc:InvokeServer("SellItems", {{"Cosmetic", v.Id.Value}})
                                             end
                                        if v.Visible and v.Type and v.Type.Value == "Cosmetic" then
                                            if
                                                checkRarityStatus(v.RarityStars) == "Unique" and
                                                    v.Equipped.Visible == false and
                                                    v.RarityBackground.Visible == false
                                             then
                                                RemoteFunc:InvokeServer("SellItems", {{"Cosmetic", v.Id.Value}})
                                             end
                                          if v.Visible and v.Type and v.Type.Value == "Cosmetic" then
                                            if
                                                checkRarityStatus(v.RarityStars) == "Rare" and
                                                    v.Equipped.Visible == false and
                                                    v.RarityBackground.Visible == false
                                             then
                                                RemoteFunc:InvokeServer("SellItems", {{"Cosmetic", v.Id.Value}})
                                             end
                                          if v.Visible and v.Type and v.Type.Value == "Cosmetic" then
                                            if
                                                checkRarityStatus(v.RarityStars) == "Epic" and
                                                    v.Equipped.Visible == false and
                                                    v.RarityBackground.Visible == false
                                             then
                                                RemoteFunc:InvokeServer("SellItems", {{"Cosmetic", v.Id.Value}})
                                             end
                                           if v.Visible and v.Type and v.Type.Value == "Cosmetic" then
                                            if
                                                checkRarityStatus(v.RarityStars) == "Lengendary" and
                                                    v.Equipped.Visible == false and
                                                    v.RarityBackground.Visible == false
                                             then
                                                RemoteFunc:InvokeServer("SellItems", {{"Cosmetic", v.Id.Value}})
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
end
end
end






    
    

