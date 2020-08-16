--EFFECT
UPGRADE.Base = "clothes"
UPGRADE.Name = "Weight Distribution Frame";
UPGRADE.Desc = "Special mounts distribute the carried load more evenly across the body.";

UPGRADE.IconPage = 5
UPGRADE.IconX = 14
UPGRADE.IconY = 15

UPGRADE.CarryAdd = 5

UPGRADE.PropertiesTooltip = {
	{
		IconX = 6,
		IconY = 3,
		Text = "+5kg Carrying Capacity.",
	},
}

--CLASS
UPGRADE.Item = {
    suit_io7 = true,
}

--TIER
UPGRADE.RequiredItems = {
	{ "basic_toolkit", 1, false },
	{ "parts_suit", 1, true },
};