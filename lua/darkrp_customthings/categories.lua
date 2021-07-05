--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
https://darkrp.miraheze.org/wiki/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


----------------V JOBS V-----------------------------------------------------------]]

DarkRP.createCategory{
    name = "Civilians", --normal civilian jobs
    categorises = "jobs", 
    startExpanded = true, 
    color = Color(50, 200, 50, 255), 
    canSee = function(ply) return true end, 
    sortOrder = 100, 
}
DarkRP.createCategory{
    name = "Government", --government jobs
    categorises = "jobs", 
    startExpanded = true, 
    color = Color(50, 50, 200, 255), 
    canSee = function(ply) return true end, 
    sortOrder = 112, 
}
DarkRP.createCategory{
    name = "Law-Breakers", --jobs for people who arent very nice
    categorises = "jobs", 
    startExpanded = true, 
    color = Color(200, 50, 50, 255), 
    canSee = function(ply) return true end, 
    sortOrder = 107, 
}
DarkRP.createCategory{
    name = "Vendors", --jobs that legally sell goods
    categorises = "jobs", 
    startExpanded = true, 
    color = Color(200, 200, 50, 255), 
    canSee = function(ply) return true end, 
    sortOrder = 104, 
}

-------------V WEAPONS V----------

DarkRP.createCategory{
    name = "Semi-Auto Handguns", 
    categorises = "shipments", 
    startExpanded = true, 
    color = Color(84, 210, 0, 255), 
    canSee = function(ply) return true end, 
    sortOrder = 100, 
}
DarkRP.createCategory{
    name = "Full-Auto Handguns", 
    categorises = "shipments", 
    startExpanded = true, 
    color = Color(55, 25, 211, 255), 
    canSee = function(ply) return true end, 
    sortOrder = 105, 
}
DarkRP.createCategory{
    name = "Shotguns", 
    categorises = "shipments", 
    startExpanded = true, 
    color = Color(255, 123, 0, 255), 
    canSee = function(ply) return true end, 
    sortOrder = 110, 
}
DarkRP.createCategory{
    name = "Rifles", 
    categorises = "shipments", 
    startExpanded = true, 
    color = Color(211, 0, 0, 255), 
    canSee = function(ply) return true end, 
    sortOrder = 115, 
}
DarkRP.createCategory{
    name = "Illegal Guns", 
    categorises = "shipments", 
    startExpanded = true, 
    color = Color(55, 55, 55, 255), 
    canSee = function(ply) return true end, 
    sortOrder = 125, 
}
DarkRP.createCategory{
    name = "Thrown", 
    categorises = "shipments", 
    startExpanded = true, 
    color = Color(255,106,232, 255), 
    canSee = function(ply) return true end, 
    sortOrder = 120, 
}
DarkRP.createCategory{
    name = "Fun", 
    categorises = "shipments", 
    startExpanded = true, 
    color = Color(131,0,255, 255), 
    canSee = function(ply) return true end, 
    sortOrder = 125, 
}
