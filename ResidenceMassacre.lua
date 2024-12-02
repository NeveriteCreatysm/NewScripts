local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local AcBypassed = false
local SpamSpeedBypass = 15

local Window = Rayfield:CreateWindow({
    Name = "Residence Massacre | v0.1",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Loading...",
    LoadingSubtitle = "by Creatysm&Neverite scripts",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "RayfieldLol"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })



local Tab = Window:CreateTab("Tab", 4483362458) -- Title, Image


local Button = Tab:CreateButton({
    Name = "Bypass AntiCheat",
    Callback = function()
        if AcBypassed == false then
            
        
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Bypass-adonis-anti-cheat-21021"))()
        wait(1)
        -- BYPASS
            
        local Namecall
        Namecall = hookmetamethod(game, '__namecall', function(self, ...)
           if getnamecallmethod() == 'FireServer' and self.Name == "Kick" then
        print(self.Name)
               return
           end
           return Namecall(self, ...)
        end)

        Rayfield:Notify({
            Title = "Notification",
            Content = "Successfuly bypassed.",
            Duration = 0.8,
            Image = 4483362458,
         })
         AcBypassed = true
         end
        -- BYPASS
    end,
 })


 local Button = Tab:CreateButton({
    Name = "Give Snowball Spam",
    Callback = function()
if not game.Players.LocalPlayer.Backpack:FindFirstChild("SnowBall") and not game.Players.LocalPlayer.Character:FindFirstChild("SnowBall") then
    

        ------------

        game.ReplicatedStorage.Items.SnowBall:Clone().Parent = game.Players.LocalPlayer.Backpack
local gui, frame, button = Instance.new("ScreenGui", game.CoreGui), Instance.new("Frame"), Instance.new("TextButton")
gui.ResetOnSpawn = false
frame.Size, frame.Position, frame.BackgroundColor3, frame.BorderSizePixel, frame.Active, frame.Draggable, frame.Parent = UDim2.new(0, 150, 0, 75), UDim2.new(0, 10, 0, 10), Color3.new(0, 0, 0), 0, true, true, gui
button.Text, button.Size, button.Position, button.BackgroundColor3, button.BorderColor3, button.BorderSizePixel, button.Font, button.TextColor3, button.TextSize, button.Parent = "Manual spam", UDim2.new(1, -20, 1, -20), UDim2.new(0, 10, 0, 10), Color3.new(0, 0, 0), Color3.new(), 2, Enum.Font.SourceSans, Color3.new(1, 1, 1), 16, frame

local activated = false

local function toggle()
    activated, button.Text = not activated, activated and "Off" or "On"
    
    while activated do
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("SnowBall") then
       local rootpart = game.Players.LocalPlayer.Character.HumanoidRootPart

local direction = rootpart.CFrame.LookVector * 10
   local position = rootpart.CFrame.Position + direction

local args = {
    [1] = "Snowball",
    [2] = rootpart.Position,
    [3] = position,
    [4] = game:GetService("Players").LocalPlayer.Character.SnowBall
}

game:GetService("ReplicatedStorage").Remotes.Projectile:FireServer(unpack(args))
        game:GetService("RunService").Heartbeat:Wait()
        button.BorderColor3 = Color3.new(math.random(), math.random(), math.random())
    end
wait()
end
wait()
end

local function showNotification()
    print("Offed")
end

button.MouseButton1Click:Connect(function()
    toggle()
    showNotification()
end)

        ------------

end
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Infinite Stamina",
    CurrentValue = false,
    Flag = "InfStam", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    InfStam = Value
    while InfStam do
        
        game.Players.LocalPlayer.Character.Sprint.Stam.Value = 5

        task.wait()
     end
    end,
 })



 local Button = Tab:CreateButton({
    Name = "Fullbright",
    Callback = function()

        print(" -- FULLBRIGHT PRESSED -- ")

        local Lighting = game.Lighting        
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

        Rayfield:Notify({
            Title = "Notification",
            Content = "Successfuly.",
            Duration = 0.8,
            Image = 4483362458,
         })

    end,
 })



 local Slider = Tab:CreateSlider({
   Name = "WalkSpeed ( Use when AntiCheat Bypassed )",
   Range = {15, 95},
   Increment = 5,
   Suffix = "LOL",
   CurrentValue = 15,
   Flag = "WalkSpeedBypass", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   
        SpamSpeedBypass = Value or 15

   end,
})

local Toggle = Tab:CreateToggle({
    Name = "Set WalkSpeed",
    CurrentValue = false,
    Flag = "SpamSpeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    SpeedSpam = Value
    while SpeedSpam do
        

        if AcBypassed == true then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SpamSpeedBypass
        end
        

        task.wait()
     end
    end,
 })


local Toggle = Tab:CreateToggle({
    Name = "Mutant Esp (DONT SPAM)",
    CurrentValue = false,
    Flag = "MonsterEsp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    MESP = Value
    while MESP do
        
        -----
    wait()
     if MESP == true then
            
        wait(0.1)
        for i,v in pairs(workspace:GetChildren()) do
                if v.Name == "Mutant" and not v.DeathHitbox:FindFirstChild("Mutant_PESP") then
                    
                local a = Instance.new("BoxHandleAdornment")
				a.Name = "Mutant_PESP"
				a.Parent = v.DeathHitbox
				a.Adornee = v.DeathHitbox
				a.AlwaysOnTop = true
				a.ZIndex = 0
				a.Size = v.DeathHitbox.Size
				a.Transparency = 0.5
				a.Color = BrickColor.new("Lime green")

                    -------------- LABEL
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")
                    BillboardGui.Adornee = v.DeathHitbox
                    BillboardGui.Name = 'Mutant_HESP'
                    BillboardGui.Parent = v.DeathHitbox
                    BillboardGui.Size = UDim2.new(0, 100, 0, 150)
                    BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
                    BillboardGui.AlwaysOnTop = true
                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundTransparency = 1
                    TextLabel.Position = UDim2.new(0, 0, 0, -50)
                    TextLabel.Size = UDim2.new(0, 100, 0, 100)
                    TextLabel.Font = Enum.Font.SourceSansSemibold
                    TextLabel.TextSize = 20
                    TextLabel.TextColor3 = Color3.new(0.411764, 1, 0.266666)
                    TextLabel.TextStrokeTransparency = 0
                    TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
                    TextLabel.Text = 'Mutant'
                    TextLabel.ZIndex = 10
                    --------------
                end
            end
        




    end

        -----

        task.wait()
     end
     if MESP == false then
        -------
        wait(0.3)
        for i,v in pairs(workspace:GetDescendants()) do
            if v:IsA("BoxHandleAdornment") and v.Name == 'Mutant_PESP' then
                v:Destroy()
            end
        end

        for i,v in pairs(workspace:GetDescendants()) do
            if v:IsA("BillboardGui") and v.Name == 'Mutant_HESP' then
                v:Destroy()
            end
        end
        ----------
     end

    end
 })
