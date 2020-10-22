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

--[[
DarkRP.createEntity("Money Printer", {
    ent = "money_printer",
    model = "models/props_c17/consolebox01a.mdl",
    price = 1000,
    max = 2,
    cmd = "buymoneyprinter",
})
]]

DarkRP.createEntity("Bananas", {
    ent = "eoti_food_bananas",
    model = "models/food/bananas/banana_regime.mdl",
    price = 25,
    max = 10,
    cmd = "buybananas",
	allowed = {TEAM_COOK},
	category = "Food",
})

DarkRP.createEntity("Bread", {
    ent = "eoti_food_bread",
    model = "models/food/bread/bread.mdl",
    price = 60,
    max = 10,
    cmd = "buybread",
	allowed = {TEAM_COOK},
	category = "Food",
})

DarkRP.createEntity("Cider Ale", {
    ent = "eoti_food_ciderale",
    model = "models/props_junk/garbage_glassbottle003a.mdl",
    price = 55,
    max = 10,
    cmd = "buyciderale",
	allowed = {TEAM_COOK},
	category = "Food",
})

DarkRP.createEntity("Smoked Ham", {
    ent = "eoti_food_ham",
    model = "models/food/ham/ham.mdl",
    price = 250,
    max = 10,
    cmd = "buyham",
	allowed = {TEAM_COOK},
	category = "Food",
})

DarkRP.createEntity("Dark Lager", {
    ent = "eoti_food_lager",
    model = "models/food/lager/mn_pitcher.mdl",
    price = 145,
    max = 10,
    cmd = "buylager",
	allowed = {TEAM_COOK},
	category = "Food",
})

DarkRP.createEntity("Meat Pie", {
    ent = "eoti_food_pie",
    model = "models/food/pie/pie.mdl",
    price = 175,
    max = 10,
    cmd = "buymeatpie",
	allowed = {TEAM_COOK},
	category = "Food",
})

DarkRP.createEntity("Fish", {
    ent = "eoti_food_rawfish",
    model = "models/food/fish/hanged_fishes.mdl",
    price = 95,
    max = 10,
    cmd = "buyfish",
	allowed = {TEAM_COOK},
	category = "Food",
})

DarkRP.createEntity("Ribs", {
    ent = "eoti_food_ribs",
    model = "models/food/ribs/ribs_cooked.mdl",
    price = 140,
    max = 10,
    cmd = "buyribs",
	allowed = {TEAM_COOK},
	category = "Food",
})

DarkRP.createEntity("Magic Wine", {
    ent = "eoti_food_winepitcher",
    model = "models/food/winepitcher/winepitcher.mdl",
    price = 380,
    max = 10,
    cmd = "buymagicwine",
	allowed = {TEAM_MERCHANT},
	category = "Food",
})

DarkRP.createEntity("Blood Ale", {
    ent = "eoti_food_bloodale",
    model = "models/food/potion/life_potion.mdl",
    price = 325,
    max = 5,
    cmd = "buybloodale",
	allowed = {TEAM_CULTLEADER},
	category = "Food",
})

DarkRP.createEntity("Smoked Baby", {
    ent = "eoti_food_smoked_baby",
    model = "models/food/smoked_baby/cr_wickerdoll.mdl",
    price = 220,
    max = 5,
    cmd = "buysmokedbaby",
	allowed = {TEAM_CULTLEADER},
	category = "Food",
})

DarkRP.createEntity("Chieftan's Feast", {
    ent = "eoti_food_boarhead",
    model = "models/roastboar/roastboar.mdl",
    price = 1090,
    max = 2,
    cmd = "buychieftansfeast",
	allowed = {TEAM_ORCCHIEF},
	category = "Food",
})
