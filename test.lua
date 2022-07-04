local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local Win1 = DiscordLib:Window("YouTube Tutorial") -- Title/Name

local Tab1 = Win1:Server("Tab1 (Ofc)", "") -- Server/Tab

local Chann1 = Tab1:Channel("Channel(1)") -- Channel 0_0

Chann1:Button("Click Me!", function()
DiscordLib:Notification("Notification", "Clicked", "Okay!") -- The Scirpt The Button Executes
end)

Chann1:Seperator() -- Keep This If You Want To

Chann1:Toggle("Toggle",false, function(bool)
print(bool) -- Script The Toggle Executes
end)

local sldr = Chann1:Slider("Slide me!", 0, 1000, 400, function(t) -- A Slider
print(t) -- Script The Slider Executes
end)

local drop = Chann1:Dropdown("Pick me!",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(bool) -- A DropDown
print(bool) -- You Know 0_o
end)

Chann1:Label("Tutorial By GamingScripter.") -- A Label (Ofc)
