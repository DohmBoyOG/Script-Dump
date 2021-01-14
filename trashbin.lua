local chr = game.Players

function isnil(thing)
    return (thing == nil)
end

function trashBin()
    local chr = game.Players
    for _, v in pairs(chr:GetChildren()) do
        if not isnil(v.Character) then
            for _, k in pairs(v.Character:GetChildren()) do
                if k:FindFirstChild("Cham") then
                   k.Cham:Destroy()
                end
            end
            if not isnil(v.Character.Head) and not isnil(v.Character.Head:FindFirstChild("NameEsp")) then
                if v.Character.Head:FindFirstChild("NameEsp") then
                    v.Character.Head.NameEsp:Destroy()
                end
            end
        end
    end
end

                
        
                

trashBin()
