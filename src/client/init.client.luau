
-- [[ Dependencies ]] --

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Cmdr = require(ReplicatedStorage:WaitForChild("CmdrClient"))

-- [[ Configuration ]] --

Cmdr:SetActivationKeys({ Enum.KeyCode.F2 })

game.Players.LocalPlayer.CameraMaxZoomDistance = 20