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

DarkRP.createShipment("Morphine", {
	model = "models/weapons/darky_m/w_imsyringe.mdl",
	entity = "darky_syringe",
	price = 500,
	amount = 5,
	separate = false,
	pricesep = 500,
	noship = false,
	allowed = {TEAM_MEDIC},
	category = "Fun",
})


DarkRP.createShipment("Lockpick", {
	model = "models/weapons/w_crowbar.mdl",
	entity = "lockpick",
	price = 2700,
	amount = 10,
	separate = true,
	pricesep = 300,
	noship = true,
	allowed = {TEAM_BLACKMARKET},
	category = "Other",
})

DarkRP.createShipment("Keypad Cracker", {
	model = "models/weapons/w_c4_planted.mdl",
	entity = "keypad_cracker",
	price = 2250,
	amount = 10,
	separate = true,
	pricesep = 250,
	noship = true,
	allowed = {TEAM_BLACKMARKET},
	category = "Other",
})
