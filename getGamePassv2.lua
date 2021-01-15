local RealUserId = game.Players.LocalPlayer.UserId
--// Hooking Userid \\--
local LocalPlayerMetadata = getrawmetatable(game.Players.LocalPlayer)
local Playerindexbackup = LocalPlayerMetadata.__index
make_writeable(LocalPlayerMetadata)
LocalPlayerMetadata.__index = newcclosure(function(self, ...)
  local Args = {...}
  if(Args[1] == 'UserId') then
   return game.CreatorId
  elseif(Args[1] == 'RealUserId') then
   return RealUserId
  end
  return Playerindexbackup(self,...)
end)

--// Hooking lethal functions \\--
local Gamemetadata = getrawmetatable(game)
local Gamenamecallbackup = Gamemetadata.__namecall
make_writeable(Gamemetadata)
Gamemetadata.__namecall = newcclosure(function(self, ...)
  local Args = {...}
  local Method = getnamecallmethod()

  if(Method == 'Kick') then
      print('You almost got kicked with message, ' .. Args[1])
      return wait(math.huge)
  elseif(Method == 'UserOwnsGamePassAsync') then
      return true
  elseif(Method == 'PlayerOwnsAsset') then
      return true
  elseif(Method == 'PlayerHasPass') then
      return true
  end
  return Gamenamecallbackup(self,...)
end)