
local PlayerProfileManager = require(script.Parent.Parent.Manager)

return function (context, player, amount)
	local profile = PlayerProfileManager.Profiles[player]
	if not profile then return end


	print(`Before: {profile.Data.Cash}`)
	profile.Data.Cash += amount
	print(`After: {profile.Data.Cash}`)

	return "Added " .. amount .. " to " .. player.Name .. "'s balance."
end