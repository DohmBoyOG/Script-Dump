local gunsDir = game:GetService("ReplicatedStorage").GunSettings


function setGun(modGun, option, number)
for _, v in pairs(gunsDir:GetChildren()) do
    if v.Name == modGun then
        print('Matched')
        local mods = require(v)
        print(mods)
        mods[option] = number
        print(mods['Ammo'])
    end
end
end



setGun('M4', 'Ammo', 20)   