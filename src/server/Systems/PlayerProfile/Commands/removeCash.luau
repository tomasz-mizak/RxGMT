return {
	Name = "remove-cash";
	Aliases = {};
	Description = "Removes cash from a player's account";
	Group = "Admin";
	Args = {
		{
			Type = "player";
			Name = "to";
			Description = "The player to remove cash from";
		},
		{
			Type = "number";
			Name = "amount";
			Description = "The amount of cash to remove";
		}
	};
}

