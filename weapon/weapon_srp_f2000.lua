ITEM.Name = "FN F2000"
ITEM.Desc = "A futuristic Belgian weapon made of lightweight synthetics and a modular design. Ergonomic, easy to maintain, and stylish. Fires 5.56x45mm."
ITEM.Model = "models/weapons/tfa_ins2/fn_2000/w_fn_2000.mdl"
ITEM.WeaponClass = "tfa_ins2_fn_2000"
ITEM.Weight = 4
ITEM.SafetyPos = Vector(0,0,0)
ITEM.SafetyAng = Angle(-12.4, 0, 0)
ITEM.JamChance = 0.0003
ITEM.DegradeRate = 0.18
ITEM.FOV 			= 10;
ITEM.CamPos 		= Vector( 100, 100, 25 );
ITEM.LookAt 		= Vector( 0, 0, 1 );
ITEM.SelfRepairCondition = 70
ITEM.AmmoType = "556x45"
ITEM.License = "C"
ITEM.BulkPrice = 210000
ITEM.Vars = {
	Equipped = false,
	CurrentAttachments = {},
	Upgrades = {
		generic_opt_mount = true,
	},
	Durability = 100,
	Clip1 = 0,
};
