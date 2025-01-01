local Manager = {}

Manager.Profiles = {}

function Manager:AddCash(player: Player, amount: number)
    
    if typeof(amount) ~= 'number' or amount <= 0 then
        error(`Invalid amount to add to player's balance.`)
    end

    local profile = Manager.Profiles[player]
    
    if profile == nil then
        error(`Player {player.Name} does not have a profile.`)
        return
    end

    profile.Data.Cash += amount

    print(`Added {amount} to {player.Name}'s balance.`)

end

function Manager:RemoveCash(player: Player, amount: number)
    
    if typeof(amount) ~= 'number' or amount <= 0 then
        error(`Invalid amount to remove from player's balance.`)
    end

    local profile = Manager.Profiles[player]
    
    if profile == nil then
        error(`Player {player.Name} does not have a profile.`)
        return
    end

    if profile.Data.Cash - amount < 0 then
        error(`Player {player.Name} does not have enough cash to remove {amount}.`)
        return
    end

    profile.Data.Cash -= amount

    print(`Removed {amount} from {player.Name}'s balance.`)

end

function Manager:GetCash(player: Player): number

    local profile = Manager.Profiles[player]
    
    if profile == nil then
        error(`Player {player.Name} does not have a profile.`)
        return
    end

    return profile.Data.Cash

end

function Manager:IsCashEnough(player: Player, amount: number): boolean

    local profile = Manager.Profiles[player]
    
    if profile == nil then
        error(`Player {player.Name} does not have a profile.`)
        return
    end

    return profile.Data.Cash >= amount

end

return Manager