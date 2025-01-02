print("Hello world, from server!")

-- This is a script you would create in ServerScriptService, for example.
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Cmdr = require(ReplicatedStorage.Libs.Cmdr)

Cmdr:RegisterDefaultCommands() -- This loads the default set of commands that Cmdr comes with. (Optional)
-- Cmdr:RegisterCommandsIn(script.Parent.CmdrCommands) -- Register commands from your own folder. (Optional)

-- Register hooks
Cmdr:RegisterHooksIn(script.Parent.Server.Hooks)

-- Register additional commands
Cmdr:RegisterCommandsIn(script.Parent.Server.Systems.PlayerProfile.Commands)