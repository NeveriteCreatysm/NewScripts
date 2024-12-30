local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/xCDm723n')))()
                
                local Window = OrionLib:MakeWindow({Name = "СПВК | NEXTGEN", HidePremium = true, IntroEnabled = false, SaveConfig = false, ConfigFolder = "OrionTest"})

                local Tab = Window:MakeTab({
                    Name = "Combat",
                    Icon = "http://www.roblox.com/asset/?id=7485051733",
                    PremiumOnly = false
                })


Tab:AddToggle({
                    Name = "Silent Aim",
                    Default = false,
                    Callback = function(Value)
SilentAimSpam = Value


----------

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer


local function GetNEARESTPLAYER()
    local closestPlayer = nil
    local closestDistance = 20 -- Максимальное расстояние в 15 studs
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local character = player.Character
            if character and character:FindFirstChild("Head") and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local head = character.Head
                local distance = (LocalPlayer.Character.HumanoidRootPart.Position - head.Position).magnitude

                if distance < closestDistance then
                    closestDistance = distance
                    closestPlayer = player
                end
            end
        end
    end
    return closestPlayer
end


while SilentAimSpam do
    


    local closestPlayer = GetNEARESTPLAYER() 
    if closestPlayer and game.Players.LocalPlayer.Character ~= nil and closestPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local player = game.Players.LocalPlayer

  
        
        local targetCFrame = CFrame.lookAt(player.Character.HumanoidRootPart.Position, Vector3.new(closestPlayer.Character.HumanoidRootPart.Position.X, player.Character.HumanoidRootPart.Position.Y, closestPlayer.Character.HumanoidRootPart.Position.Z))
    
        player.Character.HumanoidRootPart.CFrame = CFrame.lookAt(player.Character.HumanoidRootPart.Position, Vector3.new(closestPlayer.Character.HumanoidRootPart.Position.X, player.Character.HumanoidRootPart.Position.Y, closestPlayer.Character.HumanoidRootPart.Position.Z))

    end
    task.wait()


end
-----------

end
})

----------------------------------------------------------- NEXT FT

Tab:AddToggle({
    Name = "Auto-Hit",
    Default = false,
    Callback = function(Value)
AutoHitSpam = Value


----------

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer


local function GetNEARESTPLAYER()
local closestPlayer = nil
local closestDistance = 7.25
for _, player in ipairs(Players:GetPlayers()) do
if player ~= LocalPlayer then
local character = player.Character
if character and character:FindFirstChild("Head") and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
local head = character.Head
local distance = (LocalPlayer.Character.HumanoidRootPart.Position - head.Position).magnitude

if distance < closestDistance then
    closestDistance = distance
    closestPlayer = player
end
end
end
end
return closestPlayer
end


while AutoHitSpam do



local closestPlayer = GetNEARESTPLAYER() 
if closestPlayer and game.Players.LocalPlayer.Character ~= nil and closestPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
local player = game.Players.LocalPlayer

game:GetService("ReplicatedStorage").Remotes.HitRequest:InvokeServer()

end
task.wait()


end
-----------

end
})



Tab:AddToggle({
    Name = "Уворачиваться от ударов (BETA)",
    Default = false,
    Callback = function(Value)
DodgeSpam = Value


----------

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer


local function GetNEARESTPLAYER()
local closestPlayer = nil
local closestDistance = 8.5
for _, player in ipairs(Players:GetPlayers()) do
if player ~= LocalPlayer then
local character = player.Character
if character and character:FindFirstChild("Head") and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
local head = character.Head
local distance = (LocalPlayer.Character.HumanoidRootPart.Position - head.Position).magnitude

if distance < closestDistance then
    closestDistance = distance
    closestPlayer = player
end
end
end
end
return closestPlayer
end


while DodgeSpam do



local closestPlayer = GetNEARESTPLAYER() 
if closestPlayer and game.Players.LocalPlayer.Character ~= nil and closestPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and closestPlayer.Character:FindFirstChild("Hitbox") and closestPlayer.Character:FindFirstChild("Hitbox").Transparency == 1  then
local player = game.Players.LocalPlayer

local direction5 = (LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * -6)
local position5 = LocalPlayer.Character.HumanoidRootPart.CFrame.Position + direction5

LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(position5)

end
task.wait()


end
-----------

end
})
