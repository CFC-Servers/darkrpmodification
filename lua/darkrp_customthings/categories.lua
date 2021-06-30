--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
http://wiki.darkrp.com/index.php/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]
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
    name = "Law-Breakers", --jobs based on criminal activity
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

------------------------------------

DarkRP.createCategory{
	name = "Pistols",
	categorises = "shipments",
	startExpanded = true,
	color = Color(0, 107, 0, 255),
}
DarkRP.createCategory{
	name = "Machine Guns",
	categorises = "shipments",
	startExpanded = true,
	color = Color(0, 107, 0, 255),
}
DarkRP.createCategory{
	name = "Sub-Machine Guns",
	categorises = "shipments",
	startExpanded = true,
	color = Color(0, 107, 0, 255),
}
DarkRP.createCategory{
	name = "Sniper Rifles",
	categorises = "shipments",
	startExpanded = true,
	color = Color(0, 107, 0, 255),
}
DarkRP.createCategory{
	name = "Revolvers",
	categorises = "shipments",
	startExpanded = true,
	color = Color(0, 107, 0, 255),
}

DarkRP.createCategory{
    name = "Printers",
    categorises = "entities",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
	 canSee = fp{fn.Id, true},
	 sortOrder = 99,
}

DarkRP.createCategory{
    name = "Restraints",
    categorises = "shipments",
    startExpanded = true,
    color = Color(150, 70, 0, 255),
	 canSee = fp{fn.Id, true},
	 sortOrder = 98,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "jobs",
    startExpanded = true,
    color = Color(10, 10, 10, 255),
	 canSee = fp{fn.Id, true},
	 sortOrder = 101,
}

DarkRP.createCategory{
    name = "Attachments",
    categorises = "entities",
    startExpanded = true,
    color = Color(255, 140, 0, 255),
	 canSee = fp{fn.Id, true},
	 sortOrder = 100,
}

DarkRP.createCategory{
    name = "Ammo",
    categorises = "entities",
	startExpanded = true,
    color = Color(255, 140, 0, 255),
	canSee = fp{fn.Id, true},
	 sortOrder = 98,
}
