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

DarkRP.createEntity("Weapons Bench", {
	ent = "bcrafting_weaponsbench",
	model = "models/workshop/workbench/workbench_weapons.mdl",
	price = 500,
	max = 1,
	cmd = "buyweaponsbench",
	allowed = {TEAM_GUN},
})

DarkRP.createEntity("Crafting Bench", {
	ent = "bcrafting_generalbench",
	model = "models/workshop/workbench/workbench.mdl",
	price = 500,
	max = 1,
	cmd = "buycraftingbench",
	allowed = {TEAM_BLACKMARKET},
})

DarkRP.createEntity("Printer", { 
    ent = "tierp_printer", 
    model = "models/freeman/money_printer.mdl", 
    price = 3000, 
    max = 2, 
    cmd = "buytierprinter" 
}) 
 
DarkRP.createEntity("Printer Battery", { 
    ent = "tierp_battery", 
    model = "models/freeman/giant_battery.mdl", 
    price = 500, 
    max = 2, 
    cmd = "buytierbattery" 
}) 
