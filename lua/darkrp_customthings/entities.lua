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
