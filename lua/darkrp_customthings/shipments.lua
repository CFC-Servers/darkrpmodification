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

DarkRP.createShipment("Battle Axe", {
	model = "models/models/danguyen/grognakaxe.mdl",
	entity = "meleearts_axe_battleaxe",
	price = 4500,
	amount = 5,
	separate = false,
	pricesep = 900,
	noship = false,
	allowed = {TEAM_BLACKSMITH},
	category = "Weapons",
})

DarkRP.createShipment("Quiver of Arrows", {
	model = "models/weapons/w_quiver.mdl",
	entity = "huntingbow_quiver",
	price = 250,
	amount = 5,
	separate = true,
	pricesep = 50,
	noship = true,
	category = "Other",
})

DarkRP.createShipment("Zweihander", {
	model = "models/models/danguyen/great_flammenschwert.mdl",
	entity = "meleearts_blade_greatsword",
	price = 5000,
	amount = 5,
	separate = false,
	pricesep = 1000,
	noship = false,
	allowed = {TEAM_BLACKSMITH},
	category = "Weapons",
})

DarkRP.createShipment("Yari", {
	model = "models/models/danguyen/silver_knight_spear.mdl",
	entity = "meleearts_spear_basic",
	price = 4750,
	amount = 5,
	separate = false,
	pricesep = 950,
	noship = false,
	allowed = {TEAM_BLACKSMITH},
	category = "Weapons",
})

DarkRP.createShipment("Spear", {
	model = "models/models/danguyen/spartan_spear.mdl",
	entity = "meleearts_spear_spartan",
	price = 4750,
	amount = 5,
	separate = false,
	pricesep = 950,
	noship = false,
	allowed = {TEAM_BLACKSMITH},
	category = "Weapons",
})

DarkRP.createShipment("Hatchet", {
	model = "models/models/danguyen/hatchet.mdl",
	entity = "meleearts_axe_hatchet",
	price = 3500,
	amount = 5,
	separate = false,
	pricesep = 700,
	noship = false,
	allowed = {TEAM_BLACKSMITH},
	category = "Weapons",
})

DarkRP.createShipment("Cleaver", {
	model = "models/models/danguyen/cleaver.mdl",
	entity = "meleearts_axe_crafted",
	price = 2500,
	amount = 5,
	separate = false,
	pricesep = 500,
	noship = false,
	allowed = {TEAM_BLACKSMITH},
	category = "Weapons",
})

DarkRP.createShipment("Sickle", {
	model = "models/models/danguyen/w_gms_sickle.mdl",
	entity = "meleearts_blade_sickle",
	price = 2000,
	amount = 5,
	separate = false,
	pricesep = 400,
	noship = false,
	allowed = {TEAM_BLACKSMITH},
	category = "Weapons",
})

DarkRP.createShipment("Bow", {
	model = "models/weapons/w_huntingbow.mdl",
	entity = "weapon_huntingbow",
	price = 3250,
	amount = 5,
	separate = false,
	pricesep = 650,
	noship = false,
	allowed = {TEAM_BLACKSMITH},
	category = "Weapons",
})

DarkRP.createShipment("Shiv", {
	model = "models/models/danguyen/knife_shank.mdl",
	entity = "meleearts_blade_shiv",
	price = 1500,
	amount = 5,
	separate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_BLACKSMITH},
	category = "Weapons",
})

DarkRP.createShipment("Harpoon", {
	model = "models/props_junk/harpoon002a.mdl",
	entity = "meleearts_spear_harpoon",
	price = 1250,
	amount = 5,
	separate = false,
	pricesep = 250,
	noship = false,
	allowed = {TEAM_BLACKSMITH},
	category = "Weapons",
})

DarkRP.createShipment("Nunchucks", {
	model = "models/models/danguyen/w_nunchucks.mdl",
	entity = "meleearts_staff_nunchucks",
	price = 4000,
	amount = 5,
	separate = false,
	pricesep = 800,
	noship = false,
	allowed = {TEAM_MERCHANT},
	category = "Weapons",
})

DarkRP.createShipment("Bo Staff", {
	model = "models/models/danguyen/staff.mdl",
	entity = "meleearts_staff_bamboo",
	price = 3750,
	amount = 5,
	separate = false,
	pricesep = 750,
	noship = false,
	allowed = {TEAM_MERCHANT},
	category = "Weapons",
})

DarkRP.createShipment("Katana", {
	model = "models/models/danguyen/hattori.mdl",
	entity = "meleearts_blade_katana",
	price = 7000,
	amount = 5,
	separate = false,
	pricesep = 1400,
	noship = false,
	allowed = {TEAM_MERCHANT},
	category = "Weapons",
})

DarkRP.createShipment("Rope Restraint", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_cuff_rope",
	price = 2750,
	amount = 5,
	separate = false,
	pricesep = 550,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Rope Leash", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_leash_rope",
	price = 3750,
	amount = 5,
	separate = false,
	pricesep = 750,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Shackles", {
	model = "models/weapons/w_toolgun.mdl",
	entity = "weapon_cuff_shackles",
	price = 5250,
	amount = 5,
	separate = false,
	pricesep = 1050,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Restraints",
})

DarkRP.createShipment("Lockpick", {
	model = "models/weapons/w_crowbar.mdl",
	entity = "lockpick",
	price = 1500,
	amount = 5,
	separate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_BLACKMARKET},
	category = "Other",
})
