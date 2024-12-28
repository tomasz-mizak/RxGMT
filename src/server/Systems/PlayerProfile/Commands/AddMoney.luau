return {
	Name = "add-money";
	Aliases = {"add-money"};
	Description = "Adds money to a player's account";
	Group = "Admin";
	Args = {
		{
			Type = "player";
			Name = "to";
			Description = "The player to add money to";
		},
		{
			Type = "number";
			Name = "amount";
			Description = "The amount of money to add";
		}
	};
}