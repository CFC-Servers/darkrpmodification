--[[---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua#L111

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomEntityFields

Add entities under the following line:
---------------------------------------------------------------------------]]

DarkRP.createEntity("Money Printer", {
    ent = "money_printer",
    model = "models/props_c17/consolebox01a.mdl",
    price = 1000,
    max = 2,
    cmd = "buymoneyprinter"
})

DarkRP.createEntity("Close Range Sights", {
	ent = "cw_attpack_sights_cqb",
	model = "models/Items/BoxSRounds.mdl",
	price = 450,
	max = 3,
	cmd = "buyclosesights",
	allowed = {TEAM_GUN},
	category = "Attachments",
})

DarkRP.createEntity("Mid-Range Sights", {
	ent = "cw_attpack_sights_midrange",
	model = "models/Items/BoxSRounds.mdl",
	price = 500,
	max = 3,
	cmd = "buymidsights",
	allowed = {TEAM_GUN},
	category = "Attachments",
})

DarkRP.createEntity("Long-Range Sights", {
	ent = "cw_attpack_sights_longrange",
	model = "models/Items/BoxSRounds.mdl",
	price = 550,
	max = 3,
	cmd = "buylongsights",
	allowed = {TEAM_GUN},
	category = "Attachments",
})

DarkRP.createEntity("Sniper Sights", {
	ent = "cw_attpack_sights_sniper",
	model = "models/Items/BoxSRounds.mdl",
	price = 600,
	max = 3,
	cmd = "buysnipersights",
	allowed = {TEAM_GUN},
	category = "Attachments",
})

DarkRP.createEntity("Suppressors", {
	ent = "cw_attpack_suppressors",
	model = "models/Items/BoxSRounds.mdl",
	price = 400,
	max = 3,
	cmd = "buysuppressors",
	allowed = {TEAM_GUN},
	category = "Attachments",
})

DarkRP.createEntity("Printer", { 
    ent = "tierp_printer", 
    model = "models/freeman/money_printer.mdl", 
    price = 3000, 
    max = 2, 
    cmd = "buytierprinter" 
}) 

DarkRP.createEntity("9x19mm Ammo", {
	ent = "cw_ammo_9x19",
	model = "models/Items/BoxMRounds.mdl",
	price = 72,
	max = 3,
	cmd = "buy9x19",
	category = "Ammo",
})

DarkRP.createEntity("9x17mm Ammo", {
	ent = "cw_ammo_9x17",
	model = "models/Items/BoxMRounds.mdl",
	price = 75,
	max = 3,
	cmd = "buy9x17",
	category = "Ammo",
})

DarkRP.createEntity("45 .ACP Ammo", {
	ent = "cw_ammo_45acp",
	model = "models/Items/BoxMRounds.mdl",
	price = 85,
	max = 3,
	cmd = "buy45acp",
	category = "Ammo",
})

DarkRP.createEntity("5.45x39mm Ammo", {
	ent = "cw_ammo_545x39",
	model = "models/Items/BoxMRounds.mdl",
	price = 180,
	max = 3,
	cmd = "buy545x39",
	category = "Ammo",
})

DarkRP.createEntity("5.56x45mm Ammo", {
	ent = "cw_ammo_556x45",
	model = "models/Items/BoxMRounds.mdl",
	price = 200,
	max = 3,
	cmd = "buy556x45",
	category = "Ammo",
})

DarkRP.createEntity("7.62x51mm Ammo", {
	ent = "cw_ammo_762x51",
	model = "models/Items/BoxMRounds.mdl",
	price = 210,
	max = 3,
	cmd = "buy762x51",
	category = "Ammo",
})

DarkRP.createEntity(".44 Magnum Ammo", {
	ent = "cw_ammo_44magnum",
	model = "models/Items/BoxMRounds.mdl",
	price = 50,
	max = 3,
	cmd = "buy44magnum",
	category = "Ammo",
})

DarkRP.createEntity("12 Guage Ammo", {
	ent = "cw_ammo_12gauge",
	model = "models/Items/BoxMRounds.mdl",
	price = 80,
	max = 3,
	cmd = "buy12guage",
	category = "Ammo",
})
