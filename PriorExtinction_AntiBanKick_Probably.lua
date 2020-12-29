local gmt = getrawmetatable(game)
local old = gmt.__namecall
setreadonly(gmt, false)

gmt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" and self.Name == "KickPlayer" or self.Name == "Ban"  or self.Name == 'ServerBan' or self.Name == "Teleport" then
        print('Someone tried to kick or ban us!')
        return 9e9
    end
    return old(self, ...)
end)

setreadonly(gmt, true)
print('Anti Kick/Ban Loaded, Pray that it works!')