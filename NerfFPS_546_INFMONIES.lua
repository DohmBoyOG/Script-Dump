--game:GetService("ReplicatedStorage").SubCash

local cash = game:GetService("Players").SimpsonsHomr.leaderstats

for _, v in pairs(cash:GetChildren()) do
    if v:IsA('NumberValue') and v.name == 'CashMoney' then
        v.Value = 9e9
    end
end

local gmt = getrawmetatable(game)
local old = gmt.__namecall
setreadonly(gmt, false)

gmt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" and self.Name == "SubCash" then
        print('Trying to take cash from me NO!')
        return nil
    end
    return old(self, ...)
end)

setreadonly(gmt, true)
