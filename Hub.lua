local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib'),true))()
Lib.prompt('Hacker information', 'Welcome to soks hub', 2)

local Window = Library.CreateLib("Sok's HUB", "Serpent")
local Tab = Window:NewTab("Local Player")
local test1Section = Tab:NewSection("Local")

test1Section:NewButton("Get BTools", "This button gets you BTools", function()
    Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 3
    Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4
    Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 2
    Lib.prompt('Hacker information', 'You just got BTools', 2)
end)


test1Section:NewButton("Get Infinite Jumps", "This Button gives you infinite Jumps")
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

test1Section:NewSlider("PlayerSpeed", "You're walking speed", 150, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

test1Section:NewSlider("JumpPower", "You're Jump Power", 250, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local Tab = Window:NewTab("Misc")
local test1Section = Tab:NewSection("Misc")

test1Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.End, function()
	Library:ToggleUI()
end)
