--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]

DarkRP.createShipment("Health Vial", {
	model = "models/healthvial.mdl",
	entity = "item_healthvial",
	price = 7500,
	amount = 10,
	separate = false,
	pricesep = 750,
	noship = false,
	allowed = {TEAM_MEDIC},
	category = "Other",
})

DarkRP.createShipment("M1911", {
	model = "models/weapons/cw_pist_m1911.mdl",
	entity = "cw_m1911",
	price = 7650,
	amount = 10,
	separate = true,
	pricesep = 1700,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Pistols",
})

DarkRP.createShipment("MR96", {
	model = "models/weapons/w_357.mdl",
	entity = "cw_mr96",
	price = 8325,
	amount = 10,
	separate = false,
	pricesep = 925,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Pistols",
})

DarkRP.createShipment("P99", {
	model = "models/weapons/w_pist_p228.mdl",
	entity = "cw_p99",
	price = 9225,
	amount = 10,
	separate = false,
	pricesep = 1025,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Pistols",
})

DarkRP.createShipment("Deagle", {
	model = "models/weapons/w_pist_deagle.mdl",
	entity = "cw_deagle",
	price = 10800,
	amount = 10,
	separate = true,
	pricesep = 3600,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Pistols",
})

DarkRP.createShipment("Remington 870", {
	model = "models/weapons/cw2_super_shorty.mdl",
	entity = "cw_shorty",
	price = 12600,
	amount = 10,
	separate = false,
	pricesep = 1400,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Shotguns",
})

DarkRP.createShipment("Benelli M3", {
	model = "models/weapons/w_cstm_m3super90.mdl",
	entity = "cw_m3super90",
	price = 16200,
	amount = 10,
	separate = false,
	pricesep = 1800,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Shotguns",
})

DarkRP.createShipment("MAC-11", {
	model = "models/weapons/w_cst_mac11.mdl",
	entity = "cw_mac11",
	price = 12150,
	amount = 10,
	separate = false,
	pricesep = 1350,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Sub-Machine Guns",
})

DarkRP.createShipment("HK MP5", {
	model = "models/weapons/w_smg_mp5.mdl",
	entity = "cw_mp5",
	price = 15300,
	amount = 10,
	separate = false,
	pricesep = 1700,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Sub-Machine Guns",
})

DarkRP.createShipment("UMP .45", {
	model = "models/weapons/w_smg_ump45.mdl",
	entity = "cw_ump45",
	price = 16650,
	amount = 10,
	separate = false,
	pricesep = 1850,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Sub-Machine Guns",
})

DarkRP.createShipment("AK-74", {
	model = "models/weapons/w_rif_ak47.mdl",
	entity = "cw_ak74",
	price = 21150,
	amount = 10,
	separate = false,
	pricesep = 2350,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Rifles",
})

DarkRP.createShipment("AR-15", {
	model = "models/weapons/w_rif_m4a1.mdl",
	entity = "cw_ar15",
	price = 21825,
	amount = 10,
	separate = false,
	pricesep = 2425,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Rifles",
})

DarkRP.createShipment("FN SCAR-H", {
	model = "models/cw2/rifles/w_scarh.mdl",
	entity = "cw_scarh",
	price = 24750,
	amount = 10,
	separate = false,
	pricesep = 2750,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Rifles",
})

DarkRP.createShipment("M14 EBR", {
	model = "models/weapons/w_cstm_m14.mdl",
	entity = "cw_m14",
	price = 27900,
	amount = 10,
	separate = false,
	pricesep = 3100,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Rifles",
})

DarkRP.createShipment("M249", {
	model = "models/weapons/cw2_0_mach_para.mdl",
	entity = "cw_m249_official",
	price = 31950,
	amount = 10,
	separate = false,
	pricesep = 3550,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Machine Guns",
})

DarkRP.createShipment("Rope Restraint", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_cuff_rope",
	price = 4950,
	amount = 10,
	separate = false,
	pricesep = 550,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Rope Leash", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_leash_rope",
	price = 6750,
	amount = 10,
	separate = false,
	pricesep = 750,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Basic Handcuffs", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_cuff_standard",
	price = 6750,
	amount = 10,
	separate = false,
	pricesep = 750,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Shackles", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_cuff_shackles",
	price = 9450,
	amount = 10,
	separate = false,
	pricesep = 1050,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Elastic Restraint", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_cuff_elastic",
	price = 5400,
	amount = 10,
	separate = false,
	pricesep = 600,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Elastic Leash", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_leash_elastic",
	price = 5400,
	amount = 10,
	separate = false,
	pricesep = 600,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Lockpick", {
	model = "models/weapons/w_crowbar.mdl",
	entity = "lockpick",
	price = 2700,
	amount = 10,
	separate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Other",
})

DarkRP.createShipment("Keypad Cracker", {
	model = "models/weapons/w_c4_planted.mdl",
	entity = "keypad_cracker",
	price = 2250,
	amount = 10,
	separate = false,
	pricesep = 250,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Other",
})
