
local PlayerProfileManager = require(script.Parent.Parent.Manager)

return function (context, player, amount)
	PlayerProfileManager:AddCash(player, amount)
end