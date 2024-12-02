
local function getLocalRoot()
    local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    return hrp
end

local avoidblock = false
local avoidblockmag = 100

game:GetService("RunService").Heartbeat:Connect(function()
    if avoidblock == true and avoidblockmag < 45 then
        local player = game.Players.LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        local humrp = char.HumanoidRootPart

        for i,v in pairs(char:GetChildren()) do
            if v:IsA("Tool") then
                local grippos = v.GripPos
                v.GripPos = Vector3.new(0,10000,0)
                v.Parent = player.Backpack
                task.wait()
                v.GripPos = grippos
            end
        end
    
        local direction = char.HumanoidRootPart.CFrame.LookVector * -15
        local position = char.HumanoidRootPart.CFrame.Position + direction
        char.HumanoidRootPart.CFrame = CFrame.new(position)

    end
end)

local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/xCDm723n')))()
                
                local Window = OrionLib:MakeWindow({Name = "Rakoof v1.0", HidePremium = true, IntroEnabled = false, SaveConfig = false, ConfigFolder = "OrionTest"})

                local Tab = Window:MakeTab({
                    Name = "Combat",
                    Icon = "http://www.roblox.com/asset/?id=7485051733",
                    PremiumOnly = false
                })

                local Tab2 = Window:MakeTab({
                    Name = "Movement",
                    Icon = "http://www.roblox.com/asset/?id=9657060548",
                    PremiumOnly = false
                })


                local Tab3 = Window:MakeTab({
                    Name = "Render",
                    Icon = "http://www.roblox.com/asset/?id=13321848342",
                    PremiumOnly = false
                })

                local Tab4 = Window:MakeTab({
                    Name = "Other",
                    Icon = "http://www.roblox.com/asset/?id=9087232897",
                    PremiumOnly = false
                })


                local Tab5 = Window:MakeTab({
                    Name = "Buy (ONLY INTERMISSION)",
                    Icon = "http://www.roblox.com/asset/?id=9087232897",
                    PremiumOnly = false
                })







Tab:AddToggle({
                    Name = "Silent Aim (Авто-наводка)",
                    Default = false,
                    Callback = function(Value)
SilentSpam = Value
while SilentSpam do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and workspace:FindFirstChild("RakoofNPC") and workspace.RakoofNPC:FindFirstChild("HumanoidRootPart") then
  
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humrp = char.HumanoidRootPart

local part = workspace.RakoofNPC.HumanoidRootPart or nil

while SilentSpam do
if workspace:FindFirstChild("RakoofNPC") and workspace.RakoofNPC:FindFirstChild("HumanoidRootPart") then
part = workspace:FindFirstChild("RakoofNPC").HumanoidRootPart or nil
	humrp.CFrame = CFrame.lookAt(humrp.Position, Vector3.new(part.Position.X, humrp.Position.Y, part.Position.Z))
end
	task.wait()
end

end
task.wait()
end
end
})

Tab:AddToggle({
    Name = "Предохранять от блока",
    Default = false,
    Callback = function(Value)
BlockPred = Value
avoidblock = Value
while BlockPred do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and workspace:FindFirstChild("RakoofNPC") and workspace.RakoofNPC:FindFirstChild("HumanoidRootPart") then

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humrp = char.HumanoidRootPart
local ws = char.Humanoid.WalkSpeed



local part = workspace.RakoofNPC.HumanoidRootPart or nil
local distance
while BlockPred do
if workspace:FindFirstChild("RakoofNPC") and workspace.RakoofNPC:FindFirstChild("HumanoidRootPart") then
part = workspace:FindFirstChild("RakoofNPC").HumanoidRootPart or nil
distance = (humrp.Position - part.Position).Magnitude
avoidblockmag = distance

if workspace.RakoofNPC.Configuration.Blocking.Value == true and distance < 45 then


 for i,v in pairs(char:GetChildren()) do
        if v:IsA("Tool") then
            local grippos = v.GripPos
            v.GripPos = Vector3.new(0,10000,0)
            v.Parent = player.Backpack
            task.wait()
            v.GripPos = grippos
        end
    end

    local direction = char.HumanoidRootPart.CFrame.LookVector * -15
    local position = char.HumanoidRootPart.CFrame.Position + direction
    char.HumanoidRootPart.CFrame = CFrame.new(position)

   


end

end
task.wait()
end

end
task.wait()
end
end
})

Tab:AddToggle({
    Name = "Auto Hit (Для ближнего боя)",
    Default = false,
    Callback = function(Value)
BlijSpam = Value
while BlijSpam do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and workspace:FindFirstChild("RakoofNPC") and workspace.RakoofNPC:FindFirstChild("HumanoidRootPart") then

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humrp = char.HumanoidRootPart
local ws = char.Humanoid.WalkSpeed

local part = workspace.RakoofNPC.HumanoidRootPart or nil
local distance
while BlijSpam do
if workspace:FindFirstChild("RakoofNPC") and workspace.RakoofNPC:FindFirstChild("HumanoidRootPart") then
part = workspace:FindFirstChild("RakoofNPC").HumanoidRootPart or nil
distance = (humrp.Position - part.Position).Magnitude


if char.Humanoid.WalkSpeed < 30 and distance < 10 and workspace.RakoofNPC.Configuration.Blocking.Value == false then
    for i,v in pairs(char:GetChildren()) do
    if v:IsA("Tool") then
        v:Activate()
    end
end
elseif char.Humanoid.WalkSpeed >= 30 and distance < 12.5 and workspace.RakoofNPC.Configuration.Blocking.Value == false then
    for i,v in pairs(char:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end

    elseif char.Humanoid.WalkSpeed >= 40 and distance < 14.5 and workspace.RakoofNPC.Configuration.Blocking.Value == false then
        for i,v in pairs(char:GetChildren()) do
            if v:IsA("Tool") then
                v:Activate()
            end
        end
end

end
task.wait()
end

end
task.wait()
end
end
})


Tab:AddToggle({
    Name = "Auto Shot (Для дальнего боя)",
    Default = false,
    Callback = function(Value)
DalSpam = Value
while DalSpam do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and workspace:FindFirstChild("RakoofNPC") and workspace.RakoofNPC:FindFirstChild("HumanoidRootPart") then

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humrp = char.HumanoidRootPart
local ws = char.Humanoid.WalkSpeed

local part = workspace.RakoofNPC.HumanoidRootPart or nil
local distance
while DalSpam do
if workspace:FindFirstChild("RakoofNPC") and workspace.RakoofNPC:FindFirstChild("HumanoidRootPart") then
part = workspace:FindFirstChild("RakoofNPC").HumanoidRootPart or nil
distance = (humrp.Position - part.Position).Magnitude

if char.Humanoid.WalkSpeed < 30 and distance < 16.5 and workspace.RakoofNPC.Configuration.Blocking.Value == false then

for i,v in pairs(char:GetChildren()) do
    if v:IsA("Tool") then
        v:Activate()
    end
end
elseif char.Humanoid.WalkSpeed >= 30 and distance < 18 and workspace.RakoofNPC.Configuration.Blocking.Value == false then

    for i,v in pairs(char:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end

    elseif char.Humanoid.WalkSpeed >= 40 and distance < 23 and workspace.RakoofNPC.Configuration.Blocking.Value == false then
 
        for i,v in pairs(char:GetChildren()) do
            if v:IsA("Tool") then
                v:Activate()
            end
        end
end

end
task.wait()
end

end
task.wait()
end
end
})


Tab2:AddToggle({
    Name = "Авто прыжок",
    Default = false,
    Callback = function(Value)
SuiSpam = Value
while SuiSpam do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):GetState() ~= Enum.HumanoidStateType.Freefall and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):GetState() == Enum.HumanoidStateType.Landed then
game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)

game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Jump = true
end
task.wait()
end
end
})




Tab2:AddToggle({
                    Name = "Бесконечная энергия",
                    Default = false,
                    Callback = function(Value)
StaminaSpam = Value
while StaminaSpam do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
  

game.Players.LocalPlayer.Character.CharValues.StaminaPercentValue.Value = 100

end
task.wait()
end
end
})






Tab3:AddToggle({
    Name = "Rakoof подсветка (HE СПАМЬ)",
    Default = false,
    Callback = function(Value)
RakoofEsp = Value
----------

while RakoofEsp do
    -----
wait()
 if RakoofEsp == true then
    
    wait(0.1)
    for i,v in pairs(workspace:GetChildren()) do
            if v.Name == "RakoofNPC" and not v.HumanoidRootPart:FindFirstChild("Rakoof_PESP") and v:FindFirstChild("HumanoidRootPart") then
                
            local a = Instance.new("BoxHandleAdornment")
            a.Name = "Rakoof_PESP"
            a.Parent = v.HumanoidRootPart
            a.Adornee = v.HumanoidRootPart
            a.AlwaysOnTop = true
            a.ZIndex = 0
            a.Size = Vector3.new(4, 4, 4)
            a.Transparency = 0.5
            a.Color3 = Color3.fromRGB(226, 216, 67)

                -------------- LABEL
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                BillboardGui.Adornee = v.HumanoidRootPart
                BillboardGui.Name = 'Rakoof_HESP'
                BillboardGui.Parent = v.HumanoidRootPart
                BillboardGui.Size = UDim2.new(0, 100, 0, 150)
                BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
                BillboardGui.AlwaysOnTop = true
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundTransparency = 1
                TextLabel.Position = UDim2.new(0, 0, 0, -50)
                TextLabel.Size = UDim2.new(0, 100, 0, 100)
                TextLabel.Font = Enum.Font.SourceSansSemibold
                TextLabel.TextSize = 20
                TextLabel.TextColor3 = Color3.fromRGB(226, 216, 67) 
                TextLabel.TextStrokeTransparency = 0
                TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
                TextLabel.Text = 'RakoofNPC'
                TextLabel.ZIndex = 10
                --------------
            end
        end
    




end

    -----

    task.wait()
 end
 if RakoofEsp == false then
    -------
    wait(0.15)
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("BoxHandleAdornment") and v.Name == 'Rakoof_PESP' then
            v:Destroy()
        end
    end

    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("BillboardGui") and v.Name == 'Rakoof_HESP' then
            v:Destroy()
        end
    end
    ----------
 end

----------
end
})



Tab3:AddToggle({
    Name = "Fullbright",
    Default = false,
    Callback = function(Value)
FullBright = Value
while FullBright do
    local Lighting = game:GetService("Lighting")
    Lighting.Brightness = 2
	Lighting.ClockTime = 14
	Lighting.FogEnd = 100000
	Lighting.GlobalShadows = false
	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)

    Lighting.FogEnd = 100000
	for i,v in pairs(Lighting:GetDescendants()) do
		if v:IsA("Atmosphere") then
			v:Destroy()
		end
	end

task.wait()
end
end
})


Tab4:AddToggle({
    Name = "Автофарм (рядом с зёленой мелкой мусоркой)",
    Default = false,
    Callback = function(Value)
TrashSpam = Value
while TrashSpam do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then


for i,v in pairs(workspace.Filter.Lootable:GetChildren()) do
if v.Name == "RecycleBin" and v:FindFirstChild("ProximityPrompt") then
fireproximityprompt(v.ProximityPrompt)
end
end

end
task.wait()
end
end
})



local Section = Tab5:AddSection({
	Name = "Other (ONLY INTERMISSION)"
})

Tab5:AddButton({
	Name = "Buy Bear Trap",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.BeartrapButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Banana Peel",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.BananaPeelButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Cameras",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.CamerasButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Glowstick",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.GlowstickButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Map",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.MapButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Medkit",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.MedkitButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Night Vision",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.NightVisionButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Vitamins",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.VitaminsButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Watch",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.WatchButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Tracker",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.TrackerButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Toolbox",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.ToolboxButton, false)
            end
  	end    
})

local Section = Tab5:AddSection({
	Name = "Combat (ONLY INTERMISSION)"
})

Tab5:AddButton({
	Name = "Buy Big Spoon",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.BigSpoonButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Cheese Hammer",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.CheeseHammerButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Revolver",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.M66RevolverButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Taser",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.TaserButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Survivor Taser",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.SurvivorTaserButton, false)
            end
  	end    
})


Tab5:AddButton({
	Name = "Buy Stun Stick",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.StunStickButton, false)
            end
  	end    
})

Tab5:AddButton({
	Name = "Buy Survivor Stun Stick",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.SurvivorStunStickButton, false)
            end
  	end    
})


Tab5:AddButton({
	Name = "Buy Vest",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.VestButton, false)
            end
  	end    
})
