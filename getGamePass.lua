local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(self, ...)
  local Method = getnamecallmethod()
  if Method == 'UserOwnsGamePassAsync' or Method == 'PlayerOwnsAsset' or Method == 'PlayerHasPass' then
      return true
  end
  return oldNamecall(self,...)
end)
setreadonly(mt, true)