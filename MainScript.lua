-- Thanks for useing andrews gui
--verison 1.0
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Prison Life Gui", "Sentinel")
local Tab = Window:NewTab("Items")
local Tab2 = Window:NewTab("Main")
local Tab3 = Window:NewTab("Player")
local Section = Tab:NewSection("Items")
local Section2 = Tab2:NewSection("Main")
local Section3 = Tab3:NewSection("Player")
local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver["M9"].ITEMPICKUP
local A_2 = game:GetService("Workspace")["Prison_ITEMS"].giver["AK-47"].ITEMPICKUP
local A_3 = game:GetService("Workspace")["Prison_ITEMS"].giver["Remington 870"].ITEMPICKUP
local Event = game:GetService("Workspace").Remote.ItemHandler
Section:NewButton("Give pistol", "Gives a Pistol", function()
    print("Pistol given")
    Event:InvokeServer(A_1)
end)
Section:NewButton("Give AK-47", "Give AK-47", function()
    print("AK-47 given")
    Event:InvokeServer(A_2)
end)
Section:NewButton("Give Shotgun", "Gives Shotgun", function()
    print("Shotgun given")
    Event:InvokeServer(A_3)
end)
Section2:NewButton("Change Team", "Change team to netural", function()
    print("Changed Team")
    game.Players.LocalPlayer.Team = netural
end)
Section2:NewButton("Infite Yield", "Infite Yield idk what else to say", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
Section3:NewSlider("Walkspeed", "Walkspeed idk what else", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section3:NewSlider("jumpower", "Jumpower", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
