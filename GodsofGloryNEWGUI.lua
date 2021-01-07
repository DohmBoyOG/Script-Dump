thisPlayer = game:GetService("Players").LocalPlayer
local selWorld = 'Peaceful Kingdom'
local worldTeleports = {
	['Peaceful Kingdom'] =  194.883224, 21.1433105, -720.15564,
	['Ancient Greece'] = 8600.17578, 21.1433105, -585.396606,
	['Kingdom Of Egypt'] = 20500.3047, 40.8433037, -759.361328,
	['Viking Conquests'] = 35417.9727, 21.1433105, -797.196289,
	['Aztec Empire'] = 53541.5742, 21.1433105, -602.596558,
	['Feudal Japan'] = 217.77597, 21.1433105, 13310.2051,
	['Lost Atlantis'] = 8721.17578, 21.1433105, 13434.8027,
	['Indian Raj']  = 20136.9746, 21.1433105, 13405.8027,
	['The Underworld'] = 0, 0, 0
    
}

function wTeleport()
    print('1')
    for wrld, pos in pairs(worldTeleports) do
        print(wrld..'I'..pos)
        if wrld == selWorld then
            print(pos)
            thisPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(194.883224, 21.1433105, -720.15564)
            print('done?')
        end
    end
end

wTeleport()