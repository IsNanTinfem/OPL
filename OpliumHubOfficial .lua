local plr = game.Players.LocalPlayer

local SafeZoneUnderSea = Instance.new("Part",game.Workspace)
    SafeZoneUnderSea.Name = "SafeZoneUnderSeaPart"
    SafeZoneUnderSea.Size = Vector3.new(200,3,200)
    SafeZoneUnderSea.Position = Vector3.new((math.random(-5000, 5000)), -491, (math.random(-5000, 5000)))
    SafeZoneUnderSea.Anchored = true

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Period Test", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local List = { DevConfig = {} }; 
List.DevConfig["ListOfBox"] = {"Common Box", "Uncommon Box"}; 
List.DevConfig["ListOfDrink"] = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"}; 
List.DevConfig["ListOfDrinkFormMixer"] = {"Cider", "Lemonade", "Juice", "Smoothie", "Milk", "Golden Apple"};

local Tab = Window:MakeTab({ 	
        Name = "Autos", 	
        Icon = "rbxassetid://4483345998", 	
        PremiumOnly = false })

local Tab1 = Window:MakeTab({ 	Name = "Auto Farm", 	
    Icon = "rbxassetid://4483345998", 	
    PremiumOnly = false })

local Section = Tab1:AddSection({ 	
    Name = "function Farm" }) 

Tab1:AddToggle({ 	
        Name = "Bring Mob [ All ]", 	
        Default = false, 	
        Callback = function(BMS) 		
            BringMobs = BMS
        end })      

spawn(function()
    while wait(0) do
        pcall(function()
            if BringMobs then
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, " Boar")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v:FindFirstChild("HumanoidRootPart").Anchored = true
                        v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,4,-15)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Crab")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        v:FindFirstChild("HumanoidRootPart").Anchored = true
                        v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,4,-15)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Angry ") 
                    or string.find(v.Name, "Bandit") 
                    or string.find(v.Name, "Thief")
                    or string.find(v.Name, "Crab") 
                    or string.find(v.Name, " ") 
                    or string.find(v.Name, " ") 
                    or string.find(v.Name, "Freddy")  
                    or string.find(v.Name, " ") 
                    or string.find(v.Name, "Thug") 
                    or string.find(v.Name, "Gunslinger")
                    or string.find(v.Name, " ") 
                    or string.find(v.Name, " ") 
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v:FindFirstChild("HumanoidRootPart").Anchored = true
                        v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,4,-15)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end);

local TabDk = Window:MakeTab({ 	
        Name = "DrinkBuy", 	
        Icon = "rbxassetid://4483345998", 	
        PremiumOnly = false })

local Section = TabDk:AddSection({ 	
    Name = "Drink Buy" }) 

TabDk:AddDropdown({ 	Name = "Select Drink", 	
                Default = "", 	
                Options = List.DevConfig["ListOfDrink"], 	
                Callback = function(Dr) 		
                        SelectDrink = Dr	
                end })


TabDk:AddTextbox({ 	Name = "Amount Drink",
                Default = "1", 	
                TextDisappear = true, 	
                Callback = function(AD) 		
                        AmountDrink = AD	
                end })

TabDk:AddButton({ 	Name = "Buy Drink", 	
                Callback = function() if not AmountDrink or not string.match(AmountDrink, "%d+") or tonumber(string.match(AmountDrink, "%d+")) < 0 then return end; 
                        for _ = 1, tonumber(string.match(AmountDrink, "%d+")) do 
                game.Workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(SelectDrink) 
                        end 	
                end })
TabDk:AddToggle({ 	Name = "Auto Drink", 	
                Default = false, 	
                Callback = function(ADK) 		
                        AutoDrink = ADK 	
                end }) 

spawn(function() 
while wait() do 
pcall(function() 
if not AutoDrink then return end; 
for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
if table.find(List.DevConfig["ListOfDrink"], Value.Name) then 
game.Players.LocalPlayer.Character.Humanoid:UnequipTools(); 
        Value.Parent = game.Players.LocalPlayer.Character; 
        Value:Activate(); 
                        end 
                        end
                end) 
        end 
end);

local TabLand = Window:MakeTab({ 	
        Name = "TP Islands", 	
        Icon = "rbxassetid://4483345998", 	
        PremiumOnly = false })
local Section = TabLand:AddSection({ 	
    Name = "Safe Zone" })

TabLand:AddButton({ 	
                Name = "SafeZone Sky", 	
                Callback = function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)	
                end 
})

TabLand:AddButton({ 	
                Name = "SafeZone Sea", 	
                Callback = function()
                game.Players.LocalPlayer.Character.Humanoid.Sit = true
        wait(0.15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneUnderSeaPart"].CFrame * CFrame.new(0, 5, 0)	
                end 
})

local Section = TabLand:AddSection({ 	
    Name = "Teleport to Island" }) 

TabLand:AddButton({ 	
                Name = "Kaizu", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1526.0230712891, 364.99990844727, 10510.020507812)	
                end 
})

TabLand:AddButton({ 	
                Name = "Pursaur Boss", 	
                Callback = function()
                plr.Character:Moveto(Vector3.new(4847, 570, -7143)	
                end 
})

TabLand:AddButton({ 	
                Name = "Crab", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(4890.38916, 411.091553, -7178.46777, 0, 1, -0, -1, 0, 0, 0, 0, 1))	
                end 
})

TabLand:AddButton({ 	
                Name = "Cave", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 217, -831)	
                end 
})

TabLand:AddButton({ 	
                Name = "Cliff", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(4598, 217, 4964)	
                end 
})

TabLand:AddButton({ 	
                Name = "Windmill", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-7, 224, -91)	
                end 
})

TabLand:AddButton({ 	
                Name = "Bar", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(1522, 260, 2188)	
                end 
})

TabLand:AddButton({ 	
                Name = "Krizma", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1109, 341, 1645)	
                end 
})

TabLand:AddButton({ 	
                Name = "Pirate", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1283, 218, -1348)	
                end 
})

TabLand:AddButton({ 	
                Name = "Green", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2727, 253, 1041)	
                end 
})

TabLand:AddButton({ 	
                Name = "Trees", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(1068, 217, 3351)	
                end 
})

TabLand:AddButton({ 	
                Name = "Pyramid", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(118, 216, 4773)	
                end 
})

TabLand:AddButton({ 	
                Name = "Package", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1668, 217, -300)	
                end 
})

TabLand:AddButton({ 	
                Name = "Snowy", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1896, 222, 3385)	
                end 
})

TabLand:AddButton({ 	
                Name = "Snowy Mountain", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(6501, 408, -1261)	
                end 
})

TabLand:AddButton({ 	
                Name = "Mountain", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(2052, 488, -701)	
                end 
})

TabLand:AddButton({ 	
                Name = "Marine Ford", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-3164, 296, -3780)	
                end 
})

TabLand:AddButton({ 	
                Name = "Sand Castle", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(1020, 224, -3277)	
                end 
})

TabLand:AddButton({ 	
                Name = "Forest", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5781, 216, 114)	
                end 
})

TabLand:AddButton({ 	
                Name = "Evil", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5169, 523, -7803)	
                end 
})

TabLand:AddButton({ 	
                Name = "Crescent", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(3193, 357, 1670)	
                end 
})

TabLand:AddButton({ 	
                Name = "Islans", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4319, 245, 5252)	
                end 
})

TabLand:AddButton({ 	
                Name = "Town", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(1818, 218, 755)	
                end 
})

TabLand:AddButton({ 	
                Name = "Rocky", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-37, 229, 2149)	
                end 
})

TabLand:AddButton({ 	
                Name = "Palm", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(766, 216, -1374)
                end 
})

TabLand:AddButton({ 	
                Name = "Sand", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2747, 216, -942)	
                end 
})

TabLand:AddButton({ 	
                Name = "Sand 2", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(162, 216, -2265)	
                end 
})

TabLand:AddButton({ 	
                Name = "Small", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(1237, 240, -244)	
                end 
})

TabLand:AddButton({ 	
                Name = "Tiny", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1235, 223, 623)	
                end 
})

TabLand:AddButton({ 	
                Name = "Super Tiny", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4007, 216, -2190)	
                end 
})

TabLand:AddButton({ 	
                Name = "Grass", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(2096, 217, -1884)	
                end 
})

TabLand:AddButton({ 	
                Name = "Altar", 	
                Callback = function()
                plr.Character.HumanoidRootPart.CFrame = game.workspace.Altar.RecepticalEffect.CFrame * CFrame.new(0, 5, 0)	
                end 
})

local TabSk = Window:MakeTab({ 	
        Name = "Skill", 	
        Icon = "rbxassetid://4483345998", 	
        PremiumOnly = false })

TabSk:AddToggle({ 	
        Name = "Max Charge Skill", 	
        Default = false, 	
        Callback = function(SM) 		
            skillmax = SM
        end })     

local mta = getrawmetatable(game)
local namecall = mta.__namecall
local setreadonly = setreadonly or make_writable


setreadonly(mta, false)

mta.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local arguments = args
    local a = {}
    for i = 1, #arguments - 1 do
        a[i] = arguments[i]
    end
    local method = getnamecallmethod() 

    if method == 'FireServer' or method == "InvokeServer" then
        if self.Name == 'Drown' and _G.nowaterdamage then
            if args[1] then
                return nil
            end
        end
    end
    
    return namecall(self, ...)    
end);

local attackremote = {}    

local a
a=hookmetamethod(game,"__namecall",function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RequestAnimation" and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
            attackremote[self.Name] = args[1]
            return a(self,unpack(args))
        elseif self.Name == "RequestAnimation" and game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
            attackremote[self.Name] = ""
        end
    end
      return a(self,...)
end);

aaxc = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RemoteEvent" and args[3] == "StopCharging" and skillmax then
            args[6] = 100
            return aaxc(self, unpack(args))
        end
    end
    return aaxc(self, ...)
end);

local remotes = {}
    local azc
    azc=hookmetamethod(game,"__namecall",function(self,...)
        local args = {...}
        local method = getnamecallmethod()
        if method == "FireServer" or method == "InvokeServer" then
            if self.Name == "RemoteEvent" and args[3] == "StopCharging" then
                remotes[self.Name] = args[1]
                return azc(self,unpack(args))
            end
        end
          return azc(self,...)
    end);

local TabSV = Window:MakeTab({
	Name = "Sever",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = TabSV:AddSection({
	Name = "Rejoin"
})

TabSV:AddButton({
	Name = "Rejoin Server",
	Callback = function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId) 
  	end    
})
