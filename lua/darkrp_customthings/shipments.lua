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

DarkRP.createShipment("500 Magnum", {
	model = "models/weapons/w_sw_model_500.mdl",
	entity = "m9k_model500",
	price = 5000,
	amount = 10,
	separate = false,
	pricesep = 500,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Revolvers",
})

DarkRP.createShipment("Colt Python", {
	model = "models/weapons/w_colt_python.mdl",
	entity = "m9k_coltpython",
	price = 6000,
	amount = 10,
	separate = false,
	pricesep = 600,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Revolvers",
})

DarkRP.createShipment("HK USP", {
	model = "models/weapons/w_pist_fokkususp.mdl",
	entity = "m9k_usp",
	price = 6000,
	amount = 10,
	separate = true,
	pricesep = 600,
	noship = true,
	allowed = {TEAM_GUN},
	category = "Pistols",
})

DarkRP.createShipment("HK 45C", {
	model = "models/weapons/w_hk45c.mdl",
	entity = "m9k_hk45",
	price = 12000,
	amount = 10,
	separate = true,
	pricesep = 1200,
	noship = true,
	allowed = {TEAM_GUN},
	category = "Pistols",
})

DarkRP.createShipment("Mossberg 590", {
	model = "models/weapons/w_mossberg_590.mdl",
	entity = "m9k_mossberg590",
	price = 8000,
	amount = 10,
	separate = false,
	pricesep = 800,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Shotguns",
})

DarkRP.createShipment("Ithaca M37", {
	model = "models/weapons/w_ithaca_m37.mdl",
	entity = "m9k_ithacam37",
	price = 6000,
	amount = 10,
	separate = false,
	pricesep = 600,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Shotguns",
})

DarkRP.createShipment("M60 MG", {
	model = "models/weapons/w_m60_machine_gun.mdl",
	entity = "m9k_m60",
	price = 20000,
	amount = 10,
	separate = false,
	pricesep = 2000,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Machine Guns",
})

DarkRP.createShipment("M249 LMG", {
	model = "models/weapons/w_m249_machine_gun.mdl",
	entity = "m9k_m249lmg",
	price = 22500,
	amount = 10,
	separate = false,
	pricesep = 2250,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Machine Guns",
})

DarkRP.createShipment("SVT-40", {
	model = "models/weapons/w_svt_40.mdl",
	entity = "m9k_svt40",
	price = 12500,
	amount = 10,
	separate = false,
	pricesep = 1250,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Sniper Rifles",
})

DarkRP.createShipment("Thompson Contender G2", {
	model = "models/weapons/w_g2_contender.mdl",
	entity = "m9k_contender",
	price = 7750,
	amount = 10,
	separate = false,
	pricesep = 775,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Sniper Rifles",
})

DarkRP.createShipment("M24", {
	model = "models/weapons/w_snip_m24_6.mdl",
	entity = "m9k_m24",
	price = 8000,
	amount = 10,
	separate = false,
	pricesep = 800,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Sniper Rifles",
})

DarkRP.createShipment("PSG-1", {
	model = "models/weapons/w_hk_psg1.mdl",
	entity = "m9k_psg1",
	price = 15000,
	amount = 10,
	separate = false,
	pricesep = 1500,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Sniper Rifles",
})

DarkRP.createShipment("HK G3A3", {
	model = "models/weapons/w_hk_g3.mdl",
	entity = "m9k_g3a3",
	price = 10000,
	amount = 10,
	separate = false,
	pricesep = 1000,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Rifles",
})

DarkRP.createShipment("AK-47", {
	model = "models/weapons/w_ak47_m9k.mdl",
	entity = "m9k_ak47",
	price = 15000,
	amount = 10,
	separate = false,
	pricesep = 1500,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Rifles",
})

DarkRP.createShipment("HK 416", {
	model = "models/weapons/w_hk_416.mdl",
	entity = "m9k_m416",
	price = 17500,
	amount = 10,
	separate = false,
	pricesep = 1750,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Rifles",
})

DarkRP.createShipment("HK MP5", {
	model = "models/weapons/w_hk_mp5.mdl",
	entity = "m9k_mp5",
	price = 7500,
	amount = 10,
	separate = false,
	pricesep = 750,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Sub-Machine Guns",
})

DarkRP.createShipment("Uzi", {
	model = "models/weapons/w_uzi_imi.mdl",
	entity = "m9k_uzi",
	price = 7000,
	amount = 10,
	separate = false,
	pricesep = 700,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Sub-Machine Guns",
})

DarkRP.createShipment("Rope", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_cuff_rope",
	price = 7500,
	amount = 10,
	separate = false,
	pricesep = 750,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Rope Leash", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_leash_rope",
	price = 8500,
	amount = 10,
	separate = false,
	pricesep = 850,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Basic Handcuffs", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_cuff_standard",
	price = 12500,
	amount = 10,
	separate = false,
	pricesep = 1250,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Shackles", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_cuff_shackles",
	price = 15000,
	amount = 10,
	separate = false,
	pricesep = 1500,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Elastic Restraint", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_cuff_elastic",
	price = 17500,
	amount = 10,
	separate = false,
	pricesep = 1750,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})
DarkRP.createShipment("Elastic Leash", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_leash_elastic",
	price = 18500,
	amount = 10,
	separate = false,
	pricesep = 1850,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Lockpick", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "lockpick",
	price = 7500,
	amount = 10,
	separate = false,
	pricesep = 750,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Other",
})

DarkRP.createShipment("Keypad Cracker", {
	model = "models/weapons/w_c4_planted.mdl",
	entity = "keypad_cracker",
	price = 7500,
	amount = 10,
	separate = false,
	pricesep = 750,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Other",
})

DarkRP.createShipment("Frag Grenade", {
	model = "models/weapons/w_m61_fraggynade.mdl",
	entity = "m9k_m61_frag",
	price = 10000,
	amount = 10,
	separate = false,
	pricesep = 1000,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Other",
})

DarkRP.createShipment("Sticky Grenade", {
	model = "models/weapons/w_sticky_grenade.mdl",
	entity = "m9k_sticky_grenade",
	price = 15000,
	amount = 10,
	separate = false,
	pricesep = 1500,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Other",
})

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
