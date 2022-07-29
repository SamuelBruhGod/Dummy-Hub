-- Instances:

local Loading = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local DummyHubv001 = Instance.new("TextLabel")
local LoadingRing = Instance.new("ImageLabel")
local AssetLoading = Instance.new("TextLabel")

--Properties:

Loading.Name = "Loading"
Loading.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Loading.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Loading.ResetOnSpawn = false

Background.Name = "Background"
Background.Parent = Loading
Background.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
Background.Position = UDim2.new(0.388345927, 0, 0.323551059, 0)
Background.Size = UDim2.new(0, 223, 0, 223)

DummyHubv001.Name = "Dummy Hub v0.0.1"
DummyHubv001.Parent = Background
DummyHubv001.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DummyHubv001.BackgroundTransparency = 1.000
DummyHubv001.Position = UDim2.new(0.133906335, 0, 0.26805833, 0)
DummyHubv001.Size = UDim2.new(0, 163, 0, 37)
DummyHubv001.Font = Enum.Font.SourceSans
DummyHubv001.Text = "Dummy Hub v0.0.1"
DummyHubv001.TextColor3 = Color3.fromRGB(255, 255, 255)
DummyHubv001.TextScaled = true
DummyHubv001.TextSize = 14.000
DummyHubv001.TextWrapped = true

LoadingRing.Name = "LoadingRing"
LoadingRing.Parent = Background
LoadingRing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingRing.BackgroundTransparency = 1.000
LoadingRing.Position = UDim2.new(0.00448431447, 0, -0.000999927521, 0)
LoadingRing.Size = UDim2.new(0, 222, 0, 223)
LoadingRing.Image = "rbxassetid://4965945816"

AssetLoading.Name = "Asset Loading"
AssetLoading.Parent = Background
AssetLoading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AssetLoading.BackgroundTransparency = 1.000
AssetLoading.Position = UDim2.new(0.138390645, 0, 0.433977604, 0)
AssetLoading.Size = UDim2.new(0, 160, 0, 77)
AssetLoading.Font = Enum.Font.SourceSans
AssetLoading.Text = "Dummy Hub v..."
AssetLoading.TextColor3 = Color3.fromRGB(255, 255, 255)
AssetLoading.TextScaled = true
AssetLoading.TextSize = 14.000
AssetLoading.TextWrapped = true

-- Scripts:

local function UAKAF_fake_script() -- DummyHubv001.LocalScript 
	local script = Instance.new('LocalScript', DummyHubv001)

	wait(17.5)
	script.Parent:TweenSize(UDim2.new(0,0,0,0),"Out","Sine",1)
	
end
coroutine.wrap(UAKAF_fake_script)()
local function FIKBG_fake_script() -- LoadingRing.LocalScript 
	local script = Instance.new('LocalScript', LoadingRing)

	wait(17.5)
	script.Parent:TweenSize(UDim2.new(0,0,0,0),"Out","Sine",1)
	
end
coroutine.wrap(FIKBG_fake_script)()
local function PCZB_fake_script() -- Background.LocalScript 
	local script = Instance.new('LocalScript', Background)

	wait(17.5)
	script.Parent:TweenSize(UDim2.new(0,0,0,0),"Out","Sine",1)
end
coroutine.wrap(PCZB_fake_script)()
local function PXEML_fake_script() -- AssetLoading.LocalScript 
	local script = Instance.new('LocalScript', AssetLoading)

	wait(2.5)
	script.Parent.Text = "Dummy Hub v..."
	wait(1)
	script.Parent.Text = "Look For Version..."
	wait(3)
	script.Parent.Text = "Version Found! (v0.0.1)"
	wait(1.5)
	script.Parent.Text = "Loading Tabs..."
	wait(2)
	script.Parent.Text = "Tabs Loaded!"
	wait(1)
	script.Parent.Text = "Loading Scripts..."
	wait(1.5)
	script.Parent.Text = "Scripts Loaded!"
	wait(1)
	script.Parent.Text = "Searching Game ID..."
	wait(2)
	script.Parent.Text = "Game ID Found!"
	wait(1)
	script.Parent.Text = "Enjoy Dummy Hub v0.0.1!"
	wait(0.5)
	script.Parent:TweenSize(UDim2.new(0,0,0,0),"Out","Sine",1)
end
coroutine.wrap(PXEML_fake_script)()
local function ZMCAHA_fake_script() -- Loading.Sus 
	local script = Instance.new('LocalScript', Loading)

	wait(2.5)
	local ReplicatedFirst = game:GetService("ReplicatedFirst")
	local TweenService = game:GetService("TweenService")
	local LoadingRing = script.Parent.Background.LoadingRing
	
	ReplicatedFirst:RemoveDefaultLoadingScreen()
	
	local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
	local tween = TweenService:Create(LoadingRing, tweenInfo, {Rotation=360})
	tween:Play()
	
	wait(5)
	if not game:IsLoaded() then
		game.Loaded:Wait()
	end
	
	wait(10.8)
	script.Parent:Destroy()
end
coroutine.wrap(ZMCAHA_fake_script)()


wait(18.3)
if game.PlaceId == 4483381587
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Dummy Hub", "LightTheme")

-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Home #1")

-- Main --> Home #1
MainSection:NewToggle("Super-Human", "Use this if your too lazy to use the LocalPlayer", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 128
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 400
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

-- LocalPlayer
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Speed, Jump, And Gravity. (Gravity Coming Soon!)")

-- Player --> LocalPlayer
PlayerSection:NewSlider("WalkSpeed", "Make you go BRRRRRRRRRR", 3500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "Make you go To Da Moon. :O", 1250, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewSlider("Gravity", "Coming Soon!", 0, 0, function(s)
    
end)

-- Misc
local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc")

-- Misc --> Misc
MiscSection:NewButton("Infinite Yield", "It says it in the name, INF YIELD GOES BRRRRRR", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

-- Settings
local Settings = Window:NewTab("Setting")
local SettingsSection = Settings:NewSection("Settings")

-- Setting --> Settings
SettingsSection:NewKeybind("Open/Close", "Close it, Open it, do what ever", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

-- UpdateLog
local Updates = Window:NewTab("Updates")
local UpdatesSection = Updates:NewSection("UpdateLogs")

UpdatesSection:NewLabel("7/27/2022: v0.0.0 Release! :D")
UpdatesSection:NewLabel("7/29/2022: v0.0.1 New loading Screen. Diff scripts for Diff games now. :D")

if game.PlaceId == 155615604
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Dummy Hub", "LightTheme")

-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Home #1")

-- Main --> Home #1
MainSection:NewToggle("Super-Human", "Use this if your too lazy to use the LocalPlayer", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 128
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 400
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

-- LocalPlayer
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Speed, Jump, And Gravity. (Gravity Coming Soon!)")

-- Player --> LocalPlayer
PlayerSection:NewSlider("WalkSpeed", "Make you go BRRRRRRRRRR", 3500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "Make you go To Da Moon. :O", 1250, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewSlider("Gravity", "Coming Soon!", 0, 0, function(s)
    
end)

-- Misc
local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc")

-- Misc --> Misc
MiscSection:NewButton("Infinite Yield", "It says it in the name, INF YIELD GOES BRRRRRR", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MiscSection:NewButton("Septex Admin", "Ayo, New cmds??? ight", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
end)

-- Settings
local Settings = Window:NewTab("Setting")
local SettingsSection = Settings:NewSection("Settings")

-- Setting --> Settings
SettingsSection:NewKeybind("Open/Close", "Close it, Open it, do what ever", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

-- UpdateLog
local Updates = Window:NewTab("Updates")
local UpdatesSection = Updates:NewSection("UpdateLogs")

UpdatesSection:NewLabel("7/27/2022: v0.0.0 Release! :D")
UpdatesSection:NewLabel("7/29/2022: v0.0.1 New loading Screen. Diff scripts for Diff games now. :D")
