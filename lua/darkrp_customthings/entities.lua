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

DarkRP.createEntity("Fine-Tuned Money Printer", {
	ent = "finetuned_printer",
	model = "models/props_c17/consolebox01a.mdl",
	price = 2000,
	max = 1,
	cmd = "buyftprinter",
	category = "Printers",
})

DarkRP.createEntity("Budget Money Printer", {
	ent = "budget_printer",
	model = "models/props_c17/consolebox05a.mdl",
	price = 600,
	max = 1,
	cmd = "buybudgetprinter",
	category = "Printers",
})

DarkRP.createEntity("Money Printer", {
    ent = "money_printer",
    model = "models/props_c17/consolebox01a.mdl",
    price = 1000,
    max = 1,
    cmd = "buymoneyprinter",
	category = "Printers",
})
