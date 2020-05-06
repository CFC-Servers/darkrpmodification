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

--[[---------------------------------------------------------
	Vehicles - http://facepunch.com/showthread.php?t=1481400 / https://www.youtube.com/watch?v=WSTBFk6nX6k
-----------------------------------------------------------]]
TCBDealer.vehicleTable["f100tdm"] = {
	price = 8000,
}

TCBDealer.vehicleTable["focussvttdm"] = {
	price = 24000,
}

TCBDealer.vehicleTable["mustanggttdm"] = {
	price = 52000,
}

TCBDealer.vehicleTable["hon_crxsirtdm"] = {
	price = 10000,
}

TCBDealer.vehicleTable["s2000tdm"] = {
	price = 24000,
}

TCBDealer.vehicleTable["miuracontdm"] = {
	price = 60000,
}

TCBDealer.vehicleTable["gallardotdm"] = {
	price = 120000,
}

TCBDealer.vehicleTable["reventonrtdm"] = {
	price = 160000,
}

TCBDealer.vehicleTable["mer300seltdm"] = {
	price = 42000,
}

TCBDealer.vehicleTable["mere63tdm"] = {
	price = 50000,
}

TCBDealer.vehicleTable["mer_slrtdm"] = {
	price = 140000,
}

TCBDealer.vehicleTable["f350tdm"] = {
	price = 30000,
}
