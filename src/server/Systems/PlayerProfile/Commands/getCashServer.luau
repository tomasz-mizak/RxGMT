
local PlayerProfileManager = require(script.Parent.Parent.Manager)

return function (context, player)
	local cash = PlayerProfileManager:GetCash(player)
	if not cash then
		return "Cannot get cash of player"
	end
	return `Cash of {player.Name} is {cash}`
end