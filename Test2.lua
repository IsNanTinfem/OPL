-- TELEPORT BYPASS
if game:GetService("Players").LocalPlayer.Character.Services:FindFirstChild("Client") then
    game:GetService("Players").LocalPlayer.Character.Services["Client"].Disabled = true
end

-- VARIABLES
local mobs = {} -- MOBS TABLE
getgenv().mob = nil -- SELECTED MOB

-- MOBS
for _,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do -- LOOPS THROUGH ALL MOBS
    insert = true -- VALUE TO CHECK THE MOB

    for _,v2 in pairs(mobs) do if v2 == v.Name then insert = false end end -- CHECKS IF MOB IS ALREADY IN THE TABLE
    if insert then table.insert(mobs, v.Name) end -- IF THE MOB ISNT INSERTED THEN INSERT IT
end

-- UI LIBRARY
local Library = loadstring(game:HttpGet("https:/raw.githubusercontent.com/Attrixx/Scandia/main/KavoUiLib.lua"))() -- GETS THE UI LIBRARY
local Window = Library.CreateLib("King Legacy Mob Farm", "Sentinel") -- CREATES THE WINDOW

local ScreenGui = Instance.new("ScreenGui") 
ScreenGui.Name = "ScreenGui" 
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") 
ScreenGui.ResetOnSpawn = false 

local Toggle = Instance.new("TextButton") 
Toggle.Name = "Toggle" 
Toggle.Parent = ScreenGui 
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0) 
Toggle.Size = UDim2.new(0, 90, 0, 38) 
Toggle.Font = Enum.Font.SourceSans 
Toggle.Text = "เปิด/ปิด เมนู" 
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248) 
Toggle.TextSize = 28.000 
Toggle.Draggable = true 
Toggle.MouseButton1Click:connect(function() 
Library:ToggleUI() 
end)

-- MAIN
local Main = Window:NewTab("Main") -- CREATES THE MAIN TAB
local MobFarmSection = Main:NewSection("Mob Farm") -- CREATES THE MOB FARM SECTION

local mobdropdown = Section:NewDropdown("Choose Mob", "Chooses the mob to autofarm", mobs, function(v) -- CREATES A MOB DROPDOWN TO CHOOSE THE MOBS (USES THE TABLE FROM THE MOBS SECTION ABOVE)
    getgenv().mob = v
end)

Section:NewToggle("Start Mob Farm", "Toggles the autofarming of the mobs", function(v) -- CREATES THE START / STOP TOGGLE
    getgenv().autofarmmobs = v
    while wait() do -- INFINITE LOOP
        if getgenv().autofarmmobs == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
        if getgenv().mob == nil then -- IF THE MOB ISNT SELECTED
            game.StarterGui:SetCore("SendNotification", { -- SHOW NOTIFIACTION
                Title = "Error!", -- NOTIFICACTION LABEL
                Text = "You havent selected a mob with the dropdown above\nUntoggle this toggle!", -- NOTIFICATION DESCRIPTION / TEXT
                Icon = "", -- ICON (NO ICON)
                Duration = 2.5 -- DURATION OF THE NOTIFIACTIOn
            })
            getgenv().autofarmmobs = false -- TURN OFF THE AUTO FARM
            return -- MAKE SURE IT DOESNT EXECUTE ANYTHING UNDER // FULLY TURN OFF THE LOOP
        end

        local mob = game:GetService("Workspace").Enemies:FindFirstChild(getgenv().mob)
        if mob == nil then
            game.StarterGui:SetCore("SendNotification", { -- SHOW NOTIFIACTION
                Title = "Info!", -- NOTIFICACTION LABEL
                Text = "There is currently no spawned mobs of this type!\nJust wait until they spawn", -- NOTIFICATION DESCRIPTION / TEXT
                Icon = "", -- ICON (NO ICON)
                Duration = 2.5 -- DURATION OF THE NOTIFIACTIOn
            })

            while wait() do -- LOOP WHICH REPEATS UNTIL THE UNTIL IS TRUE / DONE
                wait() -- WAIT SO WE DONT CRASH
                if getgenv().autofarmmobs == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
                if game:GetService("Workspace").Enemies:FindFirstChild(getgenv().mob) ~= nil then break; end
            end -- IF THE MOB IS SPAWNED THEN GO ON WITH THE AUTOFARM
        else
            local mob2 = mob
            while wait() do
                mob = game:GetService("Workspace").Enemies:FindFirstChild(getgenv().mob)
                if mob ~= mob2 then break; end
                if getgenv().autofarmmobs == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
                if mob ~= nil then
                    if mob:FindFirstChild("Humanoid") then
                        if mob.Humanoid.Health == 0 then wait(0.1) mob:Destroy() break; end -- IF THE MOB IS DEAD THEN JUST DESTROY IT FOR FASTER FARMING
                    end

                    if mob:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0,0,2) -- TELEPORT TO THE MOB
                    end
                end
                wait() -- WAIT SO WE DONT CRASH
            end
        end
    end
end)

-- UPDATING THE MOBS
game:GetService("Workspace").Monster.Mon.ChildAdded:Connect(function() -- WHEN MOB SPAWNS
    for _,v2 in pairs(mobs) do 

