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
	name = "Peasants",
	categorises = "jobs",
	startExpanded = true,
	color = Color(0, 107, 0, 255),
	sortOrder = 1
}

DarkRP.createCategory{
	name = "Royalty",
	categorises = "jobs",
	startExpanded = true,
	color = Color(75, 0, 75, 255),
	sortOrder = 200
}

DarkRP.createCategory{
	name = "Guards",
	categorises = "jobs",
	startExpanded = true,
	color = Color(0, 0, 150, 255),
	sortOrder = 103
}

DarkRP.createCategory{
	name = "Other",
	categorises = "jobs",
	startExpanded = true,
	color = Color(0, 0, 0, 255),
	sortOrder = 102
}

DarkRP.createCategory{
	name = "Criminals",
	categorises = "jobs",
	startExpanded = true,
	color = Color(50, 50, 50, 255),
	sortOrder = 100
}

DarkRP.createCategory{
	name = "Orcs",
	categorises = "jobs",
	startExpanded = true,
	color = Color(0, 50, 0, 255),
	sortOrder = 101
}

DarkRP.createCategory{
	name = "Cultists",
	categorises = "jobs",
	startExpanded = true,
	color = Color(50, 0, 0, 255),
	sortOrder = 102
}

DarkRP.createCategory{
	name = "Weapons",
	categorises = "shipments",
	startExpanded = true,
	color = Color(0, 107, 0, 255),
}

DarkRP.createCategory{
    name = "Exports",
    categorises = "entities",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
	 canSee = fp{fn.Id, true},
	 sortOrder = 99,
}

DarkRP.createCategory{
    name = "Food",
    categorises = "entities",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
	 canSee = fp{fn.Id, true},
	 sortOrder = 100,
}

DarkRP.createCategory{
    name = "Restraints",
    categorises = "shipments",
    startExpanded = true,
    color = Color(150, 70, 0, 255),
	 canSee = fp{fn.Id, true},
	 sortOrder = 98,
}
