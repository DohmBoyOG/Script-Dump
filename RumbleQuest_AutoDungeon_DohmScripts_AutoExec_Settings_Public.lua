--[ Keep in mind, the options still need to be unlocked in game, for you to create a Dungeon of that type and Difficulty Mode]
--[ Dungeon Creation Starts at 10 seconds, Auto Attack at 5 seconds]

getgenv().Auto = true --[ No need to change this setting.]
getgenv().Difficulty = 'Easy' --[ Easy, Medium, Hard, Expert ]
getgenv().PartyOnly = true --[True/False]
getgenv().Hardcore = false --[True/False]
getgenv().Location = 'Caves' --[ Dungeon Name]

loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/RumbleQuest_AutoDungeon_DohmScripts_AutoExec_Public.lua"))()
