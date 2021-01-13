--loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/ZHZH0MIYKR.lua"))()

return(function(dohmscripts_i,dohmscripts_a,dohmscripts_a)local dohmscripts_k=string.char;local dohmscripts_e=string.sub;local dohmscripts_n=table.concat;local dohmscripts_m=math.ldexp;local dohmscripts_o=getfenv or function()return _ENV end;local dohmscripts_l=select;local dohmscripts_g=unpack or table.unpack;local dohmscripts_j=tonumber;local function dohmscripts_p(dohmscripts_h)local dohmscripts_b,dohmscripts_c,dohmscripts_d="","",{}local dohmscripts_g=256;local dohmscripts_f={}for dohmscripts_a=0,dohmscripts_g-1 do dohmscripts_f[dohmscripts_a]=dohmscripts_k(dohmscripts_a)end;local dohmscripts_a=1;local function dohmscripts_i()local dohmscripts_b=dohmscripts_j(dohmscripts_e(dohmscripts_h,dohmscripts_a,dohmscripts_a),36)dohmscripts_a=dohmscripts_a+1;local dohmscripts_c=dohmscripts_j(dohmscripts_e(dohmscripts_h,dohmscripts_a,dohmscripts_a+dohmscripts_b-1),36)dohmscripts_a=dohmscripts_a+dohmscripts_b;return dohmscripts_c end;dohmscripts_b=dohmscripts_k(dohmscripts_i())dohmscripts_d[1]=dohmscripts_b;while dohmscripts_a<#dohmscripts_h do local dohmscripts_a=dohmscripts_i()if dohmscripts_f[dohmscripts_a]then dohmscripts_c=dohmscripts_f[dohmscripts_a]else dohmscripts_c=dohmscripts_b..dohmscripts_e(dohmscripts_b,1,1)end;dohmscripts_f[dohmscripts_g]=dohmscripts_b..dohmscripts_e(dohmscripts_c,1,1)dohmscripts_d[#dohmscripts_d+1],dohmscripts_b,dohmscripts_g=dohmscripts_c,dohmscripts_c,dohmscripts_g+1 end;return table.concat(dohmscripts_d)end;local dohmscripts_j=dohmscripts_p('23I23E27523C23427523E1M1L1R1U191E181J1K1T23C2742751T1R1N1V23C23H27921E1E1E1A21P1V1E23C21D2791I27W1A1921S22D22D181R1D22C1T1J1E1I1F1O1F191V181P1L1K1E1V28S22C28Q1N22D21Q1L1I1N21K1L1321H21P22D2151P27H1A1E22F21Q1F1N1A22D1N1R27I22D1W21E29P22221J21F1Z21D21422C1M1F1R27923E23627922W27827523F2A52A823E23C27922I2AB2A923D23E22W2752AI27M2A22AH2A22AQ2AC2AR2A92A92AQ2AV275');local dohmscripts_a=(bit or bit32);local dohmscripts_d=dohmscripts_a and dohmscripts_a.bxor or function(dohmscripts_a,dohmscripts_b)local dohmscripts_c,dohmscripts_d,dohmscripts_e=1,0,10 while dohmscripts_a>0 and dohmscripts_b>0 do local dohmscripts_f,dohmscripts_e=dohmscripts_a%2,dohmscripts_b%2 if dohmscripts_f~=dohmscripts_e then dohmscripts_d=dohmscripts_d+dohmscripts_c end dohmscripts_a,dohmscripts_b,dohmscripts_c=(dohmscripts_a-dohmscripts_f)/2,(dohmscripts_b-dohmscripts_e)/2,dohmscripts_c*2 end if dohmscripts_a<dohmscripts_b then dohmscripts_a=dohmscripts_b end while dohmscripts_a>0 do local dohmscripts_b=dohmscripts_a%2 if dohmscripts_b>0 then dohmscripts_d=dohmscripts_d+dohmscripts_c end dohmscripts_a,dohmscripts_c=(dohmscripts_a-dohmscripts_b)/2,dohmscripts_c*2 end return dohmscripts_d end local function dohmscripts_c(dohmscripts_b,dohmscripts_a,dohmscripts_c)if dohmscripts_c then local dohmscripts_a=(dohmscripts_b/2^(dohmscripts_a-1))%2^((dohmscripts_c-1)-(dohmscripts_a-1)+1);return dohmscripts_a-dohmscripts_a%1;else local dohmscripts_a=2^(dohmscripts_a-1);return(dohmscripts_b%(dohmscripts_a+dohmscripts_a)>=dohmscripts_a)and 1 or 0;end;end;local dohmscripts_a=1;local function dohmscripts_b()local dohmscripts_f,dohmscripts_c,dohmscripts_e,dohmscripts_b=dohmscripts_i(dohmscripts_j,dohmscripts_a,dohmscripts_a+3);dohmscripts_f=dohmscripts_d(dohmscripts_f,122)dohmscripts_c=dohmscripts_d(dohmscripts_c,122)dohmscripts_e=dohmscripts_d(dohmscripts_e,122)dohmscripts_b=dohmscripts_d(dohmscripts_b,122)dohmscripts_a=dohmscripts_a+4;return(dohmscripts_b*16777216)+(dohmscripts_e*65536)+(dohmscripts_c*256)+dohmscripts_f;end;local function dohmscripts_h()local dohmscripts_b=dohmscripts_d(dohmscripts_i(dohmscripts_j,dohmscripts_a,dohmscripts_a),122);dohmscripts_a=dohmscripts_a+1;return dohmscripts_b;end;local function dohmscripts_f()local dohmscripts_c,dohmscripts_b=dohmscripts_i(dohmscripts_j,dohmscripts_a,dohmscripts_a+2);dohmscripts_c=dohmscripts_d(dohmscripts_c,122)dohmscripts_b=dohmscripts_d(dohmscripts_b,122)dohmscripts_a=dohmscripts_a+2;return(dohmscripts_b*256)+dohmscripts_c;end;local function dohmscripts_p()local dohmscripts_d=dohmscripts_b();local dohmscripts_a=dohmscripts_b();local dohmscripts_e=1;local dohmscripts_d=(dohmscripts_c(dohmscripts_a,1,20)*(2^32))+dohmscripts_d;local dohmscripts_b=dohmscripts_c(dohmscripts_a,21,31);local dohmscripts_a=((-1)^dohmscripts_c(dohmscripts_a,32));if(dohmscripts_b==0)then if(dohmscripts_d==0)then return dohmscripts_a*0;else dohmscripts_b=1;dohmscripts_e=0;end;elseif(dohmscripts_b==2047)then return(dohmscripts_d==0)and(dohmscripts_a*(1/0))or(dohmscripts_a*(0/0));end;return dohmscripts_m(dohmscripts_a,dohmscripts_b-1023)*(dohmscripts_e+(dohmscripts_d/(2^52)));end;local dohmscripts_q=dohmscripts_b;local function dohmscripts_m(dohmscripts_b)local dohmscripts_c;if(not dohmscripts_b)then dohmscripts_b=dohmscripts_q();if(dohmscripts_b==0)then return'';end;end;dohmscripts_c=dohmscripts_e(dohmscripts_j,dohmscripts_a,dohmscripts_a+dohmscripts_b-1);dohmscripts_a=dohmscripts_a+dohmscripts_b;local dohmscripts_b={}for dohmscripts_a=1,#dohmscripts_c do dohmscripts_b[dohmscripts_a]=dohmscripts_k(dohmscripts_d(dohmscripts_i(dohmscripts_e(dohmscripts_c,dohmscripts_a,dohmscripts_a)),122))end return dohmscripts_n(dohmscripts_b);end;local dohmscripts_a=dohmscripts_b;local function dohmscripts_n(...)return{...},dohmscripts_l('#',...)end local function dohmscripts_k()local dohmscripts_i={};local dohmscripts_d={};local dohmscripts_a={};local dohmscripts_j={[#{"1 + 1 = 111";"1 + 1 = 111";}]=dohmscripts_d,[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]=nil,[#{"1 + 1 = 111";{89;775;805;388};{193;38;552;594};{837;893;878;107};}]=dohmscripts_a,[#{"1 + 1 = 111";}]=dohmscripts_i,};local dohmscripts_a=dohmscripts_b()local dohmscripts_e={}for dohmscripts_c=1,dohmscripts_a do local dohmscripts_b=dohmscripts_h();local dohmscripts_a;if(dohmscripts_b==1)then dohmscripts_a=(dohmscripts_h()~=0);elseif(dohmscripts_b==3)then dohmscripts_a=dohmscripts_p();elseif(dohmscripts_b==2)then dohmscripts_a=dohmscripts_m();end;dohmscripts_e[dohmscripts_c]=dohmscripts_a;end;for dohmscripts_a=1,dohmscripts_b()do dohmscripts_d[dohmscripts_a-1]=dohmscripts_k();end;for dohmscripts_j=1,dohmscripts_b()do local dohmscripts_a=dohmscripts_h();if(dohmscripts_c(dohmscripts_a,1,1)==0)then local dohmscripts_d=dohmscripts_c(dohmscripts_a,2,3);local dohmscripts_g=dohmscripts_c(dohmscripts_a,4,6);local dohmscripts_a={dohmscripts_f(),dohmscripts_f(),nil,nil};if(dohmscripts_d==0)then dohmscripts_a[3]=dohmscripts_f();dohmscripts_a[4]=dohmscripts_f();elseif(dohmscripts_d==1)then dohmscripts_a[3]=dohmscripts_b();elseif(dohmscripts_d==2)then dohmscripts_a[3]=dohmscripts_b()-(2^16)elseif(dohmscripts_d==3)then dohmscripts_a[3]=dohmscripts_b()-(2^16)dohmscripts_a[4]=dohmscripts_f();end;if(dohmscripts_c(dohmscripts_g,1,1)==1)then dohmscripts_a[2]=dohmscripts_e[dohmscripts_a[2]]end if(dohmscripts_c(dohmscripts_g,2,2)==1)then dohmscripts_a[3]=dohmscripts_e[dohmscripts_a[3]]end if(dohmscripts_c(dohmscripts_g,3,3)==1)then dohmscripts_a[4]=dohmscripts_e[dohmscripts_a[4]]end dohmscripts_i[dohmscripts_j]=dohmscripts_a;end end;dohmscripts_j[3]=dohmscripts_h();return dohmscripts_j;end;local function dohmscripts_p(dohmscripts_a,dohmscripts_b,dohmscripts_i)dohmscripts_a=(dohmscripts_a==true and dohmscripts_k())or dohmscripts_a;return(function(...)local dohmscripts_f=dohmscripts_a[1];local dohmscripts_d=dohmscripts_a[3];local dohmscripts_a=dohmscripts_a[2];local dohmscripts_j=dohmscripts_n local dohmscripts_c=1;local dohmscripts_e=-1;local dohmscripts_m={};local dohmscripts_h={...};local dohmscripts_k=dohmscripts_l('#',...)-1;local dohmscripts_a={};local dohmscripts_b={};for dohmscripts_a=0,dohmscripts_k do if(dohmscripts_a>=dohmscripts_d)then dohmscripts_m[dohmscripts_a-dohmscripts_d]=dohmscripts_h[dohmscripts_a+1];else dohmscripts_b[dohmscripts_a]=dohmscripts_h[dohmscripts_a+#{"1 + 1 = 111";}];end;end;local dohmscripts_a=dohmscripts_k-dohmscripts_d+1 local dohmscripts_a;local dohmscripts_d;while true do dohmscripts_a=dohmscripts_f[dohmscripts_c];dohmscripts_d=dohmscripts_a[1];if dohmscripts_d<=6 then if dohmscripts_d<=2 then if dohmscripts_d<=0 then local dohmscripts_d=dohmscripts_a[2];local dohmscripts_c=dohmscripts_b[dohmscripts_a[3]];dohmscripts_b[dohmscripts_d+1]=dohmscripts_c;dohmscripts_b[dohmscripts_d]=dohmscripts_c[dohmscripts_a[4]];elseif dohmscripts_d>1 then local dohmscripts_a=dohmscripts_a[2]dohmscripts_b[dohmscripts_a]=dohmscripts_b[dohmscripts_a](dohmscripts_g(dohmscripts_b,dohmscripts_a+1,dohmscripts_e))else dohmscripts_b[dohmscripts_a[2]]();end;elseif dohmscripts_d<=4 then if dohmscripts_d>3 then local dohmscripts_c=dohmscripts_a[2]local dohmscripts_d,dohmscripts_a=dohmscripts_j(dohmscripts_b[dohmscripts_c](dohmscripts_g(dohmscripts_b,dohmscripts_c+1,dohmscripts_a[3])))dohmscripts_e=dohmscripts_a+dohmscripts_c-1 local dohmscripts_a=0;for dohmscripts_c=dohmscripts_c,dohmscripts_e do dohmscripts_a=dohmscripts_a+1;dohmscripts_b[dohmscripts_c]=dohmscripts_d[dohmscripts_a];end;else dohmscripts_b[dohmscripts_a[2]]=dohmscripts_i[dohmscripts_a[3]];end;elseif dohmscripts_d>5 then dohmscripts_b[dohmscripts_a[2]]();else do return end;end;elseif dohmscripts_d<=10 then if dohmscripts_d<=8 then if dohmscripts_d>7 then do return end;else local dohmscripts_d=dohmscripts_a[2];local dohmscripts_c=dohmscripts_b[dohmscripts_a[3]];dohmscripts_b[dohmscripts_d+1]=dohmscripts_c;dohmscripts_b[dohmscripts_d]=dohmscripts_c[dohmscripts_a[4]];end;elseif dohmscripts_d>9 then local dohmscripts_h;local dohmscripts_m,dohmscripts_l;local dohmscripts_k;local dohmscripts_d;dohmscripts_b[dohmscripts_a[2]]=dohmscripts_i[dohmscripts_a[3]];dohmscripts_c=dohmscripts_c+1;dohmscripts_a=dohmscripts_f[dohmscripts_c];dohmscripts_b[dohmscripts_a[2]]=dohmscripts_i[dohmscripts_a[3]];dohmscripts_c=dohmscripts_c+1;dohmscripts_a=dohmscripts_f[dohmscripts_c];dohmscripts_d=dohmscripts_a[2];dohmscripts_k=dohmscripts_b[dohmscripts_a[3]];dohmscripts_b[dohmscripts_d+1]=dohmscripts_k;dohmscripts_b[dohmscripts_d]=dohmscripts_k[dohmscripts_a[4]];dohmscripts_c=dohmscripts_c+1;dohmscripts_a=dohmscripts_f[dohmscripts_c];dohmscripts_b[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_c=dohmscripts_c+1;dohmscripts_a=dohmscripts_f[dohmscripts_c];dohmscripts_d=dohmscripts_a[2]dohmscripts_m,dohmscripts_l=dohmscripts_j(dohmscripts_b[dohmscripts_d](dohmscripts_g(dohmscripts_b,dohmscripts_d+1,dohmscripts_a[3])))dohmscripts_e=dohmscripts_l+dohmscripts_d-1 dohmscripts_h=0;for dohmscripts_a=dohmscripts_d,dohmscripts_e do dohmscripts_h=dohmscripts_h+1;dohmscripts_b[dohmscripts_a]=dohmscripts_m[dohmscripts_h];end;dohmscripts_c=dohmscripts_c+1;dohmscripts_a=dohmscripts_f[dohmscripts_c];dohmscripts_d=dohmscripts_a[2]dohmscripts_b[dohmscripts_d]=dohmscripts_b[dohmscripts_d](dohmscripts_g(dohmscripts_b,dohmscripts_d+1,dohmscripts_e))dohmscripts_c=dohmscripts_c+1;dohmscripts_a=dohmscripts_f[dohmscripts_c];dohmscripts_b[dohmscripts_a[2]]();dohmscripts_c=dohmscripts_c+1;dohmscripts_a=dohmscripts_f[dohmscripts_c];do return end;else dohmscripts_b[dohmscripts_a[2]]=dohmscripts_i[dohmscripts_a[3]];end;elseif dohmscripts_d<=12 then if dohmscripts_d==11 then dohmscripts_b[dohmscripts_a[2]]=dohmscripts_a[3];else dohmscripts_b[dohmscripts_a[2]]=dohmscripts_a[3];end;elseif dohmscripts_d==13 then local dohmscripts_c=dohmscripts_a[2]local dohmscripts_d,dohmscripts_a=dohmscripts_j(dohmscripts_b[dohmscripts_c](dohmscripts_g(dohmscripts_b,dohmscripts_c+1,dohmscripts_a[3])))dohmscripts_e=dohmscripts_a+dohmscripts_c-1 local dohmscripts_a=0;for dohmscripts_c=dohmscripts_c,dohmscripts_e do dohmscripts_a=dohmscripts_a+1;dohmscripts_b[dohmscripts_c]=dohmscripts_d[dohmscripts_a];end;else local dohmscripts_a=dohmscripts_a[2]dohmscripts_b[dohmscripts_a]=dohmscripts_b[dohmscripts_a](dohmscripts_g(dohmscripts_b,dohmscripts_a+1,dohmscripts_e))end;dohmscripts_c=dohmscripts_c+1;end;end);end;return dohmscripts_p(true,{},dohmscripts_o())();end)(string.byte,table.insert,setmetatable);



if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/Script-Dump/main/mt-api%20v2.lua", true))() end

game.Players.LocalPlayer.Character.Humanoid:AddPropertyEmulator("WalkSpeed")
game.Workspace:AddPropertyEmulator("Gravity")

local event = game:GetService("ReplicatedStorage").sumiisbestgirl
local thisPlayer = game:GetService("Players").LocalPlayer
local otherPlayers = game:GetService("Players"):GetPlayers()
local weapons = game:GetService("ReplicatedStorage").Modules:GetChildren()


local vote = game:GetService("ReplicatedStorage").Voting
local voteUI = game:GetService("Players")["isA_Null"].PlayerGui.GUI.Menu.Deploy.Voting

local firstMode = game:GetService("ReplicatedStorage").Voting.firstgamemode.Value 
local secondMode = game:GetService("ReplicatedStorage").Voting.secondgamemode.Value

local voteEvent = game:GetService("ReplicatedStorage").Vote

local gamemodes = {firstgamemode, secondMode}
local maps = {}

local weapList = {}
local equipped
local gunStats = {}

local clipping

gunlist = {
    "RECON",
    "RETALIATOR",
    "RAMPAGE",
    "ATLAS",
    "CENTURION",
    "LONGSTRIKE",
    "STRYFE",
    "WORKER STRYFE",
    "RAYVEN",
    "ELITE RAYVEN",
    "RIVALZEUS",
    "STAMPEDE",
    "HYPERFIRE",
    "VULCAN",
    "RAPIDSTRIKE",
    "KHAOS",
    "NEMESIS",
    "MAVERICK",
    "STRONGARM",
    "CYCLONESHOCK",
    "JOLT",
    "APOLLO",
    "KRONOS",
    "TITAN",
    "HERA"
}

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/DohmBoyOG/UI/main/PlaystationUI.lua"))()

local UI = GUI:CreateWindow("Nerf FPS - DohmScripts - GUI v2")

local Home = UI:addPage("Home", 2, true, 6)
local Player = UI:addPage("Player", 2, false, 6)
local WepMod = UI:addPage("Weapon", 3, false, 6)
local Voted = UI:addPage("Voting", 3, false, 6)
local Settings = UI:addPage("Settings", 2, false, 6)

local a
local b
local c
local d
local e
local f
local g
local h
local i
local j
local k
local l

Home:addLabel("Nerf FPS GUI v1")
Home:addLabel("")
Home:addLabel("Discord: DohmBoyOG#0313")
Home:addLabel("Youtube: https://short.dohmscripts.com/p3s")
Home:addLabel("Github: https://short.dohmscripts.com/1m5")
Home:addLabel("")
Home:addLabel("Special Mentions:")
Home:addLabel("none")

Player:addLabel("Player Menu")
Player:addLabel("")
Player:addLabel("Kill Switch", "various ways to kill players")
Player:addLabel("")
Player:addButton(
    "Kill Team",
    function()
        if pcall(killTeam) then
            print("No Errors, Loop Complete!")
        else
            print("Error Happened, Contact me on Discord if it keeps occuring")
        end
    end
)
Player:addButton(
    "Kill All",
    function()
        if pcall(killALL) then
            print("No Errors, Loop Complete!")
        else
            print("Error Happened, Contact me on Discord if it keeps occuring")
        end
    end
)
Player:addLabel("Cash", "all the monies in the world!  ")
Player:addButton(
    "Infinite Cash",
    function()
        infCash()
    end
)

WepMod:addLabel("Weapon Mods", "I came to kick ass and chew bubble gum..")
WepMod:addLabel("")
WepMod:addTextBox(
    "boltaction",
    "",
    function(value)
        a = tobool(value)
    end
)
WepMod:addTextBox(
    "damage",
    "",
    function(value)
        b = tonumber(value)
    end
)
WepMod:addTextBox(
    "maxclip",
    "",
    function(value)
        c = tonumber(value)
    end
)
WepMod:addTextBox(
    "stored",
    "",
    function(value)
        d = tonumber(value)
    end
)
WepMod:addTextBox(
    "bullet",
    "",
    function(value)
        e = value
    end
)
WepMod:addTextBox(
    "range",
    "",
    function(value)
        f = tonumber(value)
    end
)
WepMod:addTextBox(
    "rate",
    "",
    function(value)
        g = tonumber(value)
    end
)
WepMod:addTextBox(
    "zoom",
    "",
    function(value)
        h = tonumber(value)
    end
)
WepMod:addTextBox(
    "weight",
    "",
    function(value)
        i = tonumber(value)
    end
)
WepMod:addTextBox(
    "firemode",
    "",
    function(value)
        j = tonumber(value)
    end
)
WepMod:addTextBox(
    "spread",
    "",
    function(value)
        k = tonumber(value)
    end
)
WepMod:addTextBox(
    "aimspread",
    "",
    function(value)
        l = tonumber(value)
    end
)
WepMod:addButton(
    "Get Weapon Stats",
    function()
        getGunStats()
    end
)
WepMod:addButton(
    "Set Weapon Stats",
    function()
        modGun()
    end
)

Voted:addLabel('Voting','various options for changing votes')
Voted:addLabel('')
Voted:addDropdown('Gamemode',function() return game.Players:GetPlayers() end)

Settings:addLabel('Settings', 'various fun settings!')
Settings:addLabel('')
Settings:addToggle('NO CLIP', function(bool) clipping = bool if clipping == true then Noclipping = game:GetService('RunService').Stepped:connect(clipLoop) else Noclipping:Disconnect() end end)
Settings:addSlider('Movement Speed', 1, 100, function(value) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value end)
Settings:addSlider('Gravity', 1, 150, function(value) game.Workspace.Gravity = value end)
Settings:addButton('Unlock Gamepasses', {}, function() return game.Players:GetPlayers() end)


function killTeam()
    for _, v in pairs(otherPlayers) do
        if v.Character and v.TeamColor ~= thisPlayer.TeamColor and v ~= thisPlayer then
            if v.Character.Humanoid.Health > 1 then
                wait(0.3)
                event:FireServer(149306230, v.Character, 100, gunlist[math.random(1, #gunlist)], true)
            end
        end
    end
end

function killALL()
    for _, v in pairs(otherPlayers) do
        if v.Character and v ~= thisPlayer then
            if v.Character.Humanoid.Health > 1 then
                wait(1)
                event:FireServer(149306230, v.Character, 100, gunlist[math.random(1, #gunlist)], true)
            end
        end
    end
end

function modGun()
    for _, guns in pairs(weapons) do
        table.insert(weapList, guns)
    end

    for _, v in pairs(thisPlayer.Character:GetChildren()) do
        if v:IsA("Model") then
            equipped = v.Name
            print(equipped)
        end
    end

    for _, v in pairs(weapList) do
        if v.Name == equipped then
            print(v:GetFullName())
            mods = require(v).stats

            mods.boltaction = a
            mods.damage = b
            mods.maxclip = c
            mods.stored = d
            mods.bullet = e
             -- [dart], [ball], [stefan], [elite], [mega], [rocket], [sword] <-- lol? --
            mods.range = f
            mods.rate = g
            mods.zoom = h -- [Be careful messing with this one. you could end up too zoomed!] --
            mods.weight = i -- [ Don't set weight to zero, higher number is lesser weight!!] --
            mods.firemode = j -- [0] Single Shot , [1] Semi Auto , [2] Full Auto --
            mods.spread = Vector3.new(tonumber(k)) -- [all zeros no spread?] --
            mods.aimspread = Vector3.new(tonumber(l)) -- [all zeros no spread?] --

            warn(mods.damage)
        end
    end
end

function getGunStats()
    for _, guns in pairs(weapons) do
        table.insert(weapList, guns)
    end

    for _, v in pairs(thisPlayer.Character:GetChildren()) do
        if v:IsA("Model") then
            equipped = v.Name
            print(equipped)
        end
    end

    for _, v in pairs(weapList) do
        if v.Name == equipped then
            print(v:GetFullName())
            mods = require(v).stats

            setText("boltaction", mods.boltaction)
            setText("damage", mods.damage)
            setText("maxclip", mods.maxclip)
            setText("stored", mods.stored)
            setText("bullet", mods.bullet)
            setText("range", mods.range)
            setText("rate", mods.rate)
            setText("zoom", mods.zoom)
            setText("weight", mods.weight)
            setText("firemode", mods.firemode)
            setText("spread", mods.spread)
            setText("aimspread", mods.aimspread)

            a = mods.boltaction
            b = tonumber(mods.damage)
            c = tonumber(mods.maxclip)
            d = tonumber(mods.stored)
            e = mods.bullet -- [dart], [ball], [stefan], [elite], [mega], [rocket], [sword] <-- lol? --
            f = tonumber(mods.range)
            g = tonumber(mods.rate)
            h = tonumber(mods.zoom) -- [Be careful messing with this one. you could end up too zoomed!] --
            i = tonumber(mods.weight) -- [ Don't set weight to zero, higher number is lesser weight!!] --
            j = tonumber(mods.firemode) -- [0] Single Shot , [1] Semi Auto , [2] Full Auto --
            Vector3.new(tonumber(mods.spread)) -- [all zeros no spread?] --
            Vector3.new(tonumber(mods.aimspread)) -- [all zeros no spread?] --
        end
    end
end

function infCash()
    local cash = thisPlayer.leaderstats

    for _, v in pairs(cash:GetChildren()) do
        if v:IsA("NumberValue") and v.name == "CashMoney" then
            v.Value = 9e9
        end
    end

    local gmt = getrawmetatable(game)
    local old = gmt.__namecall
    setreadonly(gmt, false)

    gmt.__namecall =
        newcclosure(
        function(self, ...)
            local args = {...}
            local method = getnamecallmethod()
            if method == "FireServer" and self.Name == "SubCash" then
                print("Trying to take cash from me NO!")
                return nil
            end
            return old(self, ...)
        end
    )

    setreadonly(gmt, true)
end

function setText(txt, value)
    local lame = game:GetService("CoreGui"):WaitForChild("fu8rj82n")
    for _, v in ipairs(lame:GetDescendants()) do
        if v:IsA("Frame") and v.Name == "TextBoxHolder" then
            if v.TextBoxTitle.Text == txt then
                v.TextBox.Text = tostring(value)
            end
        end
    end
end

function clipLoop()
    if thisPlayer.Character ~= nil then
        for _, child in pairs(thisPlayer.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true then
                child.CanCollide = false
            end
        end
    end
end


function unlockPasses()
    
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
    warn('Games Passes Unlocked.')
end

