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
TCBDealer.settings.storeDistance = 400
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

TCBDealer.dealerSpawns["rp_southside"] = {
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

--[[---------------------------------------------------------
	Vehicles - http://facepunch.com/showthread.php?t=1481400 / https://www.youtube.com/watch?v=WSTBFk6nX6k
-----------------------------------------------------------]]
TCBDealer.vehicleTable["sim_fphys_mw_cop_1st"] = {
	price = 0,
	customCheck = function(ply) return table.HasValue({TEAM_POLICE, TEAM_CHIEF, TEAM_DEA}, ply:Team()) end,
	CustomCheckFailMsg = "This vehicle is only available to police officers",
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
	price = 3000,
}

TCBDealer.vehicleTable["sim_fphys_pwvan"] = {
	price = 4000,
}

TCBDealer.vehicleTable["sim_fphys_pwhatchback"] = {
	price = 5000,
}

TCBDealer.vehicleTable["sim_fphys_pwmoskvich"] = {
	price = 6000,
}

TCBDealer.vehicleTable["sim_fphys_pwvolga"] = {
	price = 7000,
}

TCBDealer.vehicleTable["sim_fphys_pwtrabant"] = {
	price = 8000,
}

TCBDealer.vehicleTable["sim_fphys_pwtrabant02"] = {
	price = 8000,
}

TCBDealer.vehicleTable["sim_fphys_pwavia"] = {
	price = 10000,
}
