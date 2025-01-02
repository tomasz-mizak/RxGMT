-- [[ Dependencies ]] --

local ProfileStore = require(game.ServerScriptService.Libs.ProfileStore)
local Template = require(script.Parent.Template)
local Manager = require(script.Parent.Manager)
local Players = game:GetService("Players")

-- [[ Definitions ]] --

local ProfileStore = ProfileStore.New("PlayerProfile", Template)

-- [[ Functions ]] --

local function PlayerAdded(player)
	-- Start a profile session for this player's data:

	local profile = ProfileStore:StartSessionAsync(`{player.UserId}`, {
		Cancel = function()
			return player.Parent ~= Players
		end,
	})

	-- Handling new profile session or failure to start it:

	if profile ~= nil then
		profile:AddUserId(player.UserId) -- GDPR compliance
		profile:Reconcile() -- Fill in missing variables from PROFILE_TEMPLATE (optional)

		profile.OnSessionEnd:Connect(function()
			Manager.Profiles[player] = nil
			player:Kick(`Profile session end - Please rejoin`)
		end)

		if player.Parent == Players then
			Manager.Profiles[player] = profile
			print(`Profile loaded for {player.DisplayName}!`)
			-- EXAMPLE: Grant the player 100 coins for joining:
			profile.Data.Cash += 100
		-- You should set "Cash" in PROFILE_TEMPLATE and use "Profile:Reconcile()",
		-- otherwise you'll have to check whether "Data.Cash" is not nil
		else
			-- The player has left before the profile session started
			profile:EndSession()
		end
	else
		-- This condition should only happen when the Roblox server is shutting down
		player:Kick(`Profile load fail - Please rejoin`)
	end
end

function PlayerRemoving(player)
	local profile = Manager.Profiles[player]
	if profile ~= nil then
		profile:EndSession()
	end
end

-- In case Players have joined the server earlier than this script ran:
for _, player in Players:GetPlayers() do
	task.spawn(PlayerAdded, player)
end

-- [[ Connections ]] --

Players.PlayerAdded:Connect(PlayerAdded)
Players.PlayerRemoving:Connect(PlayerRemoving)