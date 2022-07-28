-- Gui to Lua
-- Version: 3.2

-- Instances:

local Loading = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local DummyHubv000 = Instance.new("TextLabel")
local LoadingRing = Instance.new("ImageLabel")

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

DummyHubv000.Name = "Dummy Hub v0.0.0"
DummyHubv000.Parent = Background
DummyHubv000.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DummyHubv000.BackgroundTransparency = 1.000
DummyHubv000.Position = UDim2.new(0.169780776, 0, 0.344291508, 0)
DummyHubv000.Size = UDim2.new(0, 148, 0, 69)
DummyHubv000.Font = Enum.Font.SourceSans
DummyHubv000.Text = "Dummy Hub v0.0.0"
DummyHubv000.TextColor3 = Color3.fromRGB(255, 255, 255)
DummyHubv000.TextScaled = true
DummyHubv000.TextSize = 14.000
DummyHubv000.TextWrapped = true

LoadingRing.Name = "LoadingRing"
LoadingRing.Parent = Background
LoadingRing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingRing.BackgroundTransparency = 1.000
LoadingRing.Position = UDim2.new(0.00448430516, 0, 0.00348437577, 0)
LoadingRing.Size = UDim2.new(0, 222, 0, 223)
LoadingRing.Image = "rbxassetid://4965945816"

-- Scripts:

local function NAXRYDD_fake_script() -- DummyHubv000.LocalScript 
	local script = Instance.new('LocalScript', DummyHubv000)

	wait(15)
	script.Parent:TweenSize(UDim2.new(0,0,0,0),"Out","Sine",1)
	
end
coroutine.wrap(NAXRYDD_fake_script)()
local function GDRQLX_fake_script() -- LoadingRing.LocalScript 
	local script = Instance.new('LocalScript', LoadingRing)

	wait(15)
	script.Parent:TweenSize(UDim2.new(0,0,0,0),"Out","Sine",1)
	
end
coroutine.wrap(GDRQLX_fake_script)()
local function UUDCCG_fake_script() -- Background.LocalScript 
	local script = Instance.new('LocalScript', Background)

	wait(15)
	script.Parent:TweenSize(UDim2.new(0,0,0,0),"Out","Sine",1)
end
coroutine.wrap(UUDCCG_fake_script)()
local function RQJJS_fake_script() -- Loading. 
	local script = Instance.new('LocalScript', Loading)

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
coroutine.wrap(RQJJS_fake_script)()


wait(15.8)
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
