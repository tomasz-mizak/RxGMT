return {
	Name = "add-cash";
	Aliases = {};
	Description = "Adds cash to a player's account";
	Group = "Admin";
	Args = {
		{
			Type = "player";
			Name = "to";
			Description = "The player to add cash to";
		},
		{
			Type = "number";
			Name = "amount";
			Description = "The amount of cash to add";
		}
	};
}

