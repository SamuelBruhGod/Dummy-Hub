local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Dummy Hub", "LightTheme")
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

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
Section:NewKeybind("Open/Close", "Close it, Open it, do what ever", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

-- UpdateLog
local Updates = Window:NewTab("Updates")
local UpdatesSection = Updates:NewSection("UpdateLogs")

UpdatesSection:NewLabel("7/27/2022: Release! :D")
