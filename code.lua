local Library = loadstring(game:HttpGet("https://pastebin.com/raw/54axxA35"))()
local Window = Library.CreateLib("zenside.lua", "DarkTheme")


--Universal
local Universal = Window:NewTab("Universal")
local UniversalSection = Universal:NewSection("Universal")

UniversalSection:NewButton("InfYld", "the most basic script ever", function()
  loadstring(game:HttpGet(('https://pastebin.com/raw/MjBzRjmT'), true))()
end)

--Player
local Player = Window:NewTab("Player")
local PlayerSecion = Player:NewSection("Player")

PlayerSecion:NewSlider("Speed", "Makes u go brrr", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSecion:NewSlider("JumpPower", "Makes u go fly", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
  game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSecion:NewSlider("Health", "amogus", 2000, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
  game.Players.LocalPlayer.Character.Humanoid.Health = s
end)

PlayerSecion:NewButton("SilentAim", "Aimbot but better", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Aiming/main/Examples/UniversalSilentAim.lua",true))()
end)

PlayerSecion:NewButton("Fly", "YES", function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)

PlayerSecion:NewButton("Aimbot", "bot that aims :shrug: e to start btw", function()
local teamCheck = false
local fov = 150
local smoothing = 1

local RunService = game:GetService("RunService")

local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 1.5
FOVring.Radius = fov
FOVring.Transparency = 1
FOVring.Color = Color3.fromRGB(255, 128, 128)
FOVring.Position = workspace.CurrentCamera.ViewportSize/2

local function getClosest(cframe)
   local ray = Ray.new(cframe.Position, cframe.LookVector).Unit
   
   local target = nil
   local mag = math.huge
   
   for i,v in pairs(game.Players:GetPlayers()) do
       if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer and (v.Team ~= game.Players.LocalPlayer.Team or (not teamCheck)) then
           local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude
           
           if magBuf < mag then
               mag = magBuf
               target = v
           end
       end
   end
   
   return target
end

loop = RunService.RenderStepped:Connect(function()
   local UserInputService = game:GetService("UserInputService")
   local pressed = --[[UserInputService:IsKeyDown(Enum.KeyCode.E)]] UserInputService:IsKeyDown(Enum.KeyCode.E) --Enum.UserInputType.MouseButton2
   local localPlay = game.Players.localPlayer.Character
   local cam = workspace.CurrentCamera
   local zz = workspace.CurrentCamera.ViewportSize/2
   
   if pressed then
       local Line = Drawing.new("Line")
       local curTar = getClosest(cam.CFrame)
       local ssHeadPoint = cam:WorldToScreenPoint(curTar.Character.Head.Position)
       ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
       if (ssHeadPoint - zz).Magnitude < fov then
           workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(cam.CFrame.Position, curTar.Character.Head.Position), smoothing)
       end
   end
   
   if UserInputService:IsKeyDown(Enum.KeyCode.Delete) then
       loop:Disconnect()
       FOVring:Remove()
   end
end)
end)

--i2i2ii2
--prisonlife
if game.Placeid == 155615604 then
  local PrisonLife = Window:NewTab("PrisonLife")
  local PrisonLifeSection = PrisonLife:NewSection("PrisonLife")

  PrisonLifeSection:NewDropdown("Guns", "gives u da Guns", { "Remington 870", "M9", "Ak47" }, function(currentOption)
    local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
    local Event = game:GetService("Workspace").Remote.ItemHandler
    Event:InvokeServer(A_1)
  end)
  PrisonLifeSection:NewDropdown("Modified Guns", "Makes gun op!!!", { "M9", "Remington 870", "AK-47" }, function(v)
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
  --da hood
elseif game.Placeid == 2788229376 then
  local DaHood = Window:NewTab("DaHood")
  local DaHoodSection = DaHood:NewSection("DaHood")

DaHoodSection:NewButton("MoneyAutoFarm", "Pretty self explanitory", function()
    local humanoid = game.Players.LocalPlayer.Character.Humanoid 
  local tool = game.Players.LocalPlayer.Backpack.Combat 
  local function getMoneyAroundMe() wait(0.5) for i, money in ipairs(game.Workspace.Ignored.Drop:GetChildren()) 
    do if money.Name == "MoneyDrop" and (money.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 20 
        then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = money.CFrame fireclickdetector(money.ClickDetector) wait(0.5) 
      end
    end 
  end 
  local function startAutoFarm() humanoid:EquipTool(tool) for i, v in ipairs(game.Workspace.Cashiers:GetChildren()) do game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Open.CFrame * CFrame.new(0, 0, 2) for i = 0, 15 do wait(0.5) tool:Activate() 
      end getMoneyAroundMe() 
    end wait(0.5) 
  end startAutoFarm()
end)

DaHoodSection:NewButton("SilentAim", "Aimbot but better", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Aiming/main/Examples/UniversalSilentAim.lua",true))()
end)

end
