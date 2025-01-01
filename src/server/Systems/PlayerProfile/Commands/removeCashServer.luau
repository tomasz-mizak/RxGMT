
local PlayerProfileManager = require(script.Parent.Parent.Manager)

return function (context, player, amount)
	PlayerProfileManager:RemoveCash(player, amount)
end