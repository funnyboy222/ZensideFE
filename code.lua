local Library = loadstring(game:HttpGet("https://pastebin.com/raw/54axxA35"))()
local Window = Library.CreateLib("ZenSide FE", "Ocean")


--Universal
local Universal = Window:NewTab("Universal")
local UniversalSection = Universal:NewSection("Universal")

UniversalSection:NewButton("InfYld", "the most basic script ever", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/MjBzRjmT'),true))()
end)

--Player
local Player = Window:NewTab("Player")
local PlayerSecion = Player:NewSection("Player")

PlayerSecion:NewSlider("WalkSpeed", "Makes you go brrrrrrrr", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

 --prisonlife
if game.Placeid == 155615604 then
local PrisonLife = Window:NewTab("PrisonLife")
local PrisonLifeSection = PrisonLife:NewSection("PrisonLife")

PrisonLifeSection:NewDropdown("Guns", "DropdownInf", {"Remington 870", "M9", "Ak47"}, function(currentOption)
     local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end)
  PrisonLifeSection:NewDropdown("Modified Guns", "Makes gun op!!!", {"M9", "Remington 870", "AK-47"}, function(v)
        local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.000001
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 10
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
    end)
end
