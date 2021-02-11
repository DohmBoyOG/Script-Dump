--[ Keep in mind, the options still need to be unlocked in game, for you to create a Dungeon of that type and Difficulty Mode]

getgenv().Auto = true --[ No need to change this setting.]
getgenv().Difficulty = "Easy" --[ Easy, Medium, Hard, Expert ]
getgenv().PartyOnly = true --[True/False]
getgenv().Hardcore = true --[True/False]
getgenv().Location = "Caves" --[ Dungeon Name]
getgenv().AutoSell = true
getgenv().HideName = false
getgenv().NoMeleeCoolDown = false
getgenv().AutoPoint = false
getgenv().SkillPoints = 5 --[How many points you want to wait to to get before it starts]
getgenv().SkilltoPut = "Strength" --[ Strength, Magic, Health ]
getgenv().PlayerHeight = -10 --[ adjust the height of yourself while your autofarming]

getgenv().GameSettings = {
    AutoSell = {
        ["Cosmetic"] = true,
        ["CosmeticRarity"] = {["Common"] = true, ["Unique"] = true, ["Rare"] = true, ["Epic"] = false},
        ["Armor"] = true,
        ["ArmorRarity"] = {["Common"] = true, ["Unique"] = true, ["Rare"] = true, ["Epic"] = true},
        ["Weapon"] = true,
        ["WeaponRarity"] = {["Common"] = true, ["Unique"] = true, ["Rare"] = true, ["Epic"] = true},
        ["Ability"] = true
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/RumbleQuest_AutoDungeon_DohmScripts_AutoExec_Public.lua"))()
