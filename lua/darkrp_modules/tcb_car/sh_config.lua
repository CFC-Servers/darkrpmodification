/*---------------------------------------------------------------------------
	
	Creator: TheCodingBeast - TheCodingBeast.com
	This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. 
	To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/
	
---------------------------------------------------------------------------*/

--[[---------------------------------------------------------
	Variables
-----------------------------------------------------------]]
TCBDealer = TCBDealer or {}

TCBDealer.settings = {}
TCBDealer.dealerSpawns = {}
TCBDealer.vehicleTable = {}

--[[---------------------------------------------------------
	Version
-----------------------------------------------------------]]
TCBDealer.version = 1.4

--[[---------------------------------------------------------
	Settings
-----------------------------------------------------------]]
TCBDealer.settings.testDriveLength = 20
TCBDealer.settings.salePercentage = 50
TCBDealer.settings.storeDistance = 1000
TCBDealer.settings.sellDistance = 1000
TCBDealer.settings.colorPicker = true
TCBDealer.settings.randomColor = false
TCBDealer.settings.checkSpawn = false
TCBDealer.settings.autoEnter = false
TCBDealer.settings.precache = true
TCBDealer.settings.debug = false

TCBDealer.settings.frameTitle = "TCB"

--[[---------------------------------------------------------
	Dealer Spawns
-----------------------------------------------------------]]
TCBDealer.dealerSpawns["rp_downtown_tits_v2"] = {
	{
		pos = Vector(868, -1074, -132),
		ang = Angle(0, 90, 0),
		mdl = "models/Humans/Group01/male_07.mdl",

		spawns = {
			{
				pos = Vector(577.191833, -1320.794434, -131.968750),
				ang = Angle(0, 90, 0)
			},
			{
				pos = Vector(1127.045898, -1308.534058, -131.968750),
				ang = Angle(0, -90, 0)
			},

		}
	}
}

TCBDealer.dealerSpawns["rp_southside_day"] = {
	{
		pos = Vector(-7583, 1600, 32.031250),
		ang = Angle(0, 0, 0),
		mdl = "models/Humans/Group01/male_07.mdl",

		spawns = {
			{
				pos = Vector(-6967, 1058, 24.031250),
				ang = Angle(0, 180, 0)
			},
			{
				pos = Vector(-7405, 1060, 24.031250),
				ang = Angle(0, 0, 0)
			},

		}
	}
}

TCBDealer.dealerSpawns["rp_downtown_evilmelon_v1"] = {
	{
		pos = Vector(1774, -1518, 49.031250),
		ang = Angle(0, 90, 0),
		mdl = "models/Humans/Group01/male_07.mdl",

		spawns = {
			{
				pos = Vector(1843, -1341, 41.031250),
				ang = Angle(0, 90, 0)
			},
			{
				pos = Vector(1664, -1341, 41.031250),
				ang = Angle(0, -90, 0)
			},

		}
	}
}

TCBDealer.dealerSpawns["rp_chilltown_v1"] = {
	{
		pos = Vector(-4780, 321, 640.031250),
		ang = Angle(0, 180, 0),
		mdl = "models/Humans/Group01/male_07.mdl",

		spawns = {
			{
				pos = Vector(-4672, -18, 640.030640),
				ang = Angle(0, 180, 0)
			},
			{
				pos = Vector(-4672, -318, 640.030640),
				ang = Angle(0, -90, 0)
			},

		}
	}
}

--[[---------------------------------------------------------
	Vehicles - http://facepunch.com/showthread.php?t=1481400 / https://www.youtube.com/watch?v=WSTBFk6nX6k
-----------------------------------------------------------]]
TCBDealer.vehicleTable["sim_fphys_mw_cop_1st"] = {
	price = 0,
	customCheck = function(ply) return table.HasValue({TEAM_POLICE, TEAM_CHIEF, TEAM_DEA}, ply:Team()) end,
	CustomCheckFailMsg = "This vehicle is only available to police officers",
}

TCBDealer.vehicleTable["sim_fphys_combineapc"] = {
	price = 0,
	customCheck = function(ply) return table.HasValue({TEAM_DEA}, ply:Team()) end,
	CustomCheckFailMsg = "This vehicle is only available to DEA Agents",
}

TCBDealer.vehicleTable["sim_fphys_mobscot"] = {
	price = 750,
}

TCBDealer.vehicleTable["sim_fphys_rnsw"] = {
	price = 1500,
}

TCBDealer.vehicleTable["sim_fphys_van"] = {
	price = 2000,
}

TCBDealer.vehicleTable["sim_fphys_pwzaz"] = {
	price = 5000,
}

TCBDealer.vehicleTable["sim_fphys_pwvan"] = {
	price = 10000,
}

TCBDealer.vehicleTable["sim_fphys_pwhatchback"] = {
	price = 15000,
}

TCBDealer.vehicleTable["sim_fphys_pwmoskvich"] = {
	price = 20000,
}

TCBDealer.vehicleTable["sim_fphys_pwvolga"] = {
	price = 25000,
}

TCBDealer.vehicleTable["sim_fphys_pwtrabant"] = {
	price = 30000,
}

TCBDealer.vehicleTable["sim_fphys_pwtrabant02"] = {
	price = 30000,
}

TCBDealer.vehicleTable["sim_fphys_pwavia"] = {
	price = 40000,
}

TCBDealer.vehicleTable["sim_fphys_v8elite"] = {
	price = 75000,
}

TCBDealer.vehicleTable["sim_fphys_dukes"] = {
	price = 125000,
}
