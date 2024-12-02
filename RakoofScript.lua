
local function getLocalRoot()
    local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    return hrp
end


local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/xCDm723n')))()
                
                local Window = OrionLib:MakeWindow({Name = "Rakoof TEST", HidePremium = true, IntroEnabled = false, SaveConfig = false, ConfigFolder = "OrionTest"})

                local Tab = Window:MakeTab({
                    Name = "Home",
                    Icon = "http://www.roblox.com/asset/?id=4370345144",
                    PremiumOnly = false
                })






Tab:AddToggle({
                    Name = "Auto BHOP",
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


Tab:AddToggle({
                    Name = "AutoFarm (Be near light green trash)",
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


Tab:AddToggle({
                    Name = "Silent Aim (On RakoofNPC)",
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
                    Name = "Infinite Stamina",
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


Tab:AddButton({
	Name = "Buy trap (OLNY INTERMISSION)",
	Callback = function()
      		if game:GetService("ReplicatedStorage").Values.Intermission.Value == true then
                game:GetService("ReplicatedStorage").RemoteFunctions.ShopFunction:InvokeServer(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.ShopFrame.Categories.Tools.BeartrapButton, false)
            end
  	end    
})





Tab:AddToggle({
    Name = "Rakoof ESP (DONT SPAM)",
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
