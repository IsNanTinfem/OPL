local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("List Mob", "BloodTheme")

local gui = Instance.new("ScreenGui")
gui.Name = "patrickGui" 
gui.Parent = game.CoreGui 
--screengui = gui 	
local TextButton = Instance.new("TextButton") 
-- Text 
TextButton.Text = "Toggle" TextButton.TextSize = 24 
-- Color 
TextButton.TextColor3 = Color3.new(1, 1, 1) 
TextButton.BackgroundColor3 = Color3.new(0, 1, 1) 
TextButton.BorderColor3 = Color3.new(1, 1, 1) 
-- thickness 
TextButton.BorderSizePixel = 4 
-- Text Code 
TextButton.Font = Enum.Font.Code 
-- Size 
TextButton.Size = UDim2.new(0.2, 0, 0.1, 0) 
-- Posisition 
TextButton.Position = UDim2.new(0, 0, 0.4, 0) 
-- Function 
TextButton.MouseButton1Click:Connect (function() 
        Library:ToggleUI() 
    end) 

TextButton.Parent = gui 
TextButton.Draggable = true 	
local cornerUI = Instance.new("UICorner") 
cornerUI.CornerRadius = UDim.new(0, 5) 
cornerUI.Parent = TextButton 	
local uiStroke = Instance.new("UIStroke") 
uiStroke.Color = Color3.new(0, 0, 0) 
uiStroke.Thickness = 2 
uiStroke.Parent = TextButton

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Select Auto Mob Farm")
Section:NewToggle("Lv2 Angry Bob", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv22 Angry Boby", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv22 Angry Bobby"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv24 Angry Bobbi", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv24 Angry Bobbi"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv29 Angry Bobber", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv29 Angry Bobber"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv35 Angry Bobb", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv35 Angry Bobb"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv1 Crab", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv1 Crab"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv3 Crab", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv3 Crab"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv4 Crab", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv4 Crab"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv5 Crab", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv5 Crab"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv4 Boar", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv4 Boar"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv11 Boar", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv11 Boar"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv12 Boar", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv12 Boar"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv14 Boar", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv14 Boar"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv15 Boar", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv15 Boar"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv16 Boar", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv16 Boar"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv20 Gunslinger", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv20 Gunslinger"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv24 Gunslinger", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv24 Gunslinger"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv36 Gunslinger", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv36 Gunslinger"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv42 Gunslinger", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv42 Gunslinger"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv50 Gunslinger", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv50 Gunslinger"].HumanoidRootPart.CFrame
end
    end)
Section:NewToggle("Lv9 Bandit", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv9 Bandit"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv14 Bandit", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv15 Bandit"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv20 Thief", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv20 Thief"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv32 Thief", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv32 Thief"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv8 Thug", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv8 Thug"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv12 Thug", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv12 Thug"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv17 Thug", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv17 Thug"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv22 Thug", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv22 Thug"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv30 Thug", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv30 Thug"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv40 Thug", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv40 Thug"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv24 Thug", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv24 Thug"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv25 Thug", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv22 Thug"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv4 Freddy", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv4 Freddy"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv24 Fred", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv24 Fred"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv28 Fredde", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv28 Fredde"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv28 Freyd", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv28 Freyd"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv32 Fredric", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv32 Fredric"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv34 Freddi", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv34 Freddi"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv28 Fiedrich", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv28 Friedrich"].HumanoidRootPart.CFrame
end
    end)

Section:NewToggle("Lv29 Frued", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv29 Frued"].HumanoidRootPart.CFrame
end
    end)

