local Players = game:GetService("Players")
local PlayerProfileManager = require(script.Parent.Manager)

while true do
    for i,v in pairs(game.Players:GetChildren()) do
        PlayerProfileManager:AddCash(v, 100)
    end
    task.wait(5)
end