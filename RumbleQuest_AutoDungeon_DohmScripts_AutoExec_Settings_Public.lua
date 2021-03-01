--[ Keep in mind, the options still need to be unlocked in game, for you to create a Dungeon of that type and Difficulty Mode]
--[ Auto Sell can be buggy sometimes, as always i am not responsible for the wrong items being sold, it has a 99% chance of not happening but just in case]

getgenv().GameSettings = {
    AutoSell = { 
        ['Active'] = false, --[ On or Off ]--
        ["Cosmetic"] = false,
        ["CosmeticRarity"] = {["Common"] = false, ["Unique"] = false, ["Rare"] = false, ["Epic"] = false, ["Lengendary"] = false},
        ["Armor"] = false,
        ["ArmorRarity"] = {["Common"] = false, ["Unique"] = false, ["Rare"] = false, ["Epic"] = false, ["Lengendary"] = false},
        ["Weapon"] = false,
        ["WeaponRarity"] = {["Common"] = false, ["Unique"] = false, ["Rare"] = false, ["Epic"] = false, ["Lengendary"] = false},
        ["Ability"] = false,
        ["AbilityRarity"] = {["Common"] = false, ["Unique"] = false, ["Rare"] = false, ["Epic"] = false,["Lengendary"] = false},
    },
    Dungeon = {
        ["Active"] = false, --[ On or Off ]--
        ["Difficulty"] = "Easy", --[ Easy, Medium, Hard, Expert ]
        ["PartyOnly"] = false,
        ["Hardcore"] = false,
        ["Location"] = "Caves" --[ Dungeon Name]
    },
     Player = {
        ['HideName'] = false, 
        ["NoMeleeCoolDown"] = false, 
        ["PlayerHeight"] = -15,
        ["RangeAngle"] = true, --[ Always Set to true unless you know what your doing ]--
    },
    Skill = {
        ['Active'] = false, 
        ["NumberOfPointsToWait"] = 5, --[ Wait for a set amount of skill points before autoskill kicks in ]--
        ["SkilltoPut"] = "Strength" ,
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/RumbleQuest_AutoDungeon_DohmScripts_AutoExec_Public.lua"))()
