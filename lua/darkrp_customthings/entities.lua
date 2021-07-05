--[[---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomEntityFields

Add entities under the following line:
---------------------------------------------------------------------------]]





-----------VV WEAPONS VV--------------------------------------------]]
DarkRP.createShipment("G17", {  
    model = "models/weapons/nen/glock 17/w_pist_glock17.mdl",
    entity = "cw_nen_glock17",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_GUN},
	category = "Semi-Auto Handguns",
})
DarkRP.createShipment("XR9", {  
    model = "models/weapons/bobs_burgers/w_pist_boberg.mdl",
    entity = "cw_boberg",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_GUN},
	category = "Semi-Auto Handguns",
})
DarkRP.createShipment("AMP", {  
    model = "models/weapons/automag/w_pist_auto.mdl",
    entity = "cw_automag",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_GUN},
	category = "Semi-Auto Handguns",
})

DarkRP.createShipment("G18", {  
    model = "models/cw2_g18/w_dmg_glock.mdl",
    entity = "cw_g18",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_GUN},
	category = "Full-Auto Handguns",
})
DarkRP.createShipment("MAC11", {  
    model = "models/weapons/w_cst_mac11.mdl",
    entity = "cw_mac11",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_GUN},
	category = "Full-Auto Handguns",
})

DarkRP.createShipment("Serbu", {  
    model = "models/weapons/cw2_super_shorty.mdl",
    entity = "cw_shorty",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_GUN},
	category = "Shotguns",
})
DarkRP.createShipment("M3", {  
    model = "models/weapons/w_cstm_m3super90.mdl",
    entity = "cw_m3super90",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_GUN},
	category = "Shotguns",
})

DarkRP.createShipment("SV98", {  
    model = "models/weapons/w_snip_scout.mdl",
    entity = "cw_sv98",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_GUN},
	category = "Rifles",
})
DarkRP.createShipment("AR15", {  
    model = "models/weapons/w_rif_m4a1.mdl",
    entity = "cw_ar15",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_GUN},
	category = "Rifles",
})

DarkRP.createShipment("Flashbang", {  
    model = "models/weapons/w_eq_flashbang.mdl",
    entity = "cw_flash_grenade",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_GUN},
	category = "Thrown",
})
DarkRP.createShipment("Molotov", {  
    model = "models/props_junk/garbage_glassbottle003a.mdl",
    entity = "weapon_nmrih_molotov",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_BLACKMARKET},
	category = "Thrown",
})
DarkRP.createShipment("IED", {  
    model = "models/props_junk/cardboard_box004a.mdl",
    entity = "weapon_ied",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_BLACKMARKET},
	category = "Thrown",
})

DarkRP.createShipment("Saiga12", {  
    model = "models/weapons/w_rif_galil.mdl",
    entity = "cw_saiga12k_official",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_BLACKMARKET},
	category = "Illegal Guns",
})
DarkRP.createShipment("AK12", {  
    model = "models/cw2/rifles/w_cw2_ak12.mdl",
    entity = "cw_ak12_tactical",
    price = 5600,
    amount = 5,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_BLACKMARKET},
	category = "Illegal Guns",
})

DarkRP.createShipment("Garbage", {  
    model = "models/props_junk/Shoe001a.mdl",
    entity = "weapon_angryhobo",
    price = 300,
    amount = 2,
    separate = false,
    pricesep = 800,
    noship = false,
    allowed = {TEAM_HOBO},
	category = "Fun",
})

--------------VV DRUGS VV-------------------------------------------------------------]]

DarkRP.createEntity("Aspirine", {
    ent = "durgz_aspirin",
    model = "models/w_models/weapons/w_eq_painpills.mdl",
    price = 225,
    max = 10,
    cmd = "buyaspirine",
	allowed = {TEAM_DRUG,TEAM_MEDIC},
})
DarkRP.createEntity("Weed", {
    ent = "durgz_weed",
    model = "models/katharsmodels/contraband/jointjes/jointjes.mdl",
    price = 225,
    max = 10,
    cmd = "buyweed",
	allowed = {TEAM_DRUG},
})
DarkRP.createEntity("Speed", {
    ent = "durgz_meth",
    model = "models/katharsmodels/contraband/metasync/blue_sky.mdl",
    price = 225,
    max = 10,
    cmd = "buymeth",
	allowed = {TEAM_DRUG},
})
DarkRP.createEntity("Shrooms", {
    ent = "durgz_mushroom",
    model = "models/katharsmodels/contraband/zak_wiet/zak_wiet.mdl",
    price = 225,
    max = 10,
    cmd = "buyshrooms",
	allowed = {TEAM_DRUG},
})
DarkRP.createEntity("Acid", {
    ent = "durgz_lsd",
    model = "models/jaanus/aspirin.mdl",
    price = 225,
    max = 10,
    cmd = "buyacid",
	allowed = {TEAM_DRUG},
})
DarkRP.createEntity("Coke", {
    ent = "durgz_cocaine",
    model = "models/srcocainelab/cocainebrick.mdl",
    price = 225,
    max = 10,
    cmd = "buycoke",
	allowed = {TEAM_DRUG},
})
DarkRP.createEntity("Morphine", {
    ent = "darky_syringe",
    model = "models/katharsmodels/syringe_out/syringe_out.mdl",
    price = 225,
    max = 10,
    cmd = "buymorphine",
	allowed = {TEAM_DRUG},
})

--------------VV MISC VV-------------------------------------------------------------]]




if not DarkRP.disabledDefaults["modules"]["hungermod"] then
    DarkRP.createEntity("Microwave", {
        ent = "microwave",
        model = "models/props_c17/tv_monitor01.mdl",
        price = 400,
        max = 4,
        cmd = "buyoven2",
        allowed = TEAM_COOK
    })
end
DarkRP.createCategory{
    name = "Other",
    categorises = "entities",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "vehicles",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}
