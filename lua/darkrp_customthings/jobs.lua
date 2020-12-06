--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]

-- CFC Config Section

-- All human models used for most jobs
local ALL_HUMAN_MODELS = {
    "models/player/group01/female_01.mdl",
    "models/player/group01/male_01.mdl",
    "models/player/group01/female_02.mdl",
    "models/player/group01/male_02.mdl",
    "models/player/group01/female_03.mdl",
    "models/player/group01/male_03.mdl",
    "models/player/group01/female_04.mdl",
    "models/player/group01/male_04.mdl",
    "models/player/group01/female_05.mdl",
    "models/player/group01/male_05.mdl",
    "models/player/group01/female_06.mdl",
    "models/player/group01/male_06.mdl",
    "models/player/group01/male_07.mdl",
    "models/player/group01/male_08.mdl",
    "models/player/group01/male_09.mdl",
    "models/player/alyx.mdl",
    "models/player/arctic.mdl",
    "models/player/barney.mdl",
    "models/player/breen.mdl",
    "models/player/eli.mdl",
    "models/player/gasmask.mdl",
    "models/player/gman_high.mdl",
    "models/player/guerilla.mdl",
    "models/player/kleiner.mdl",
    "models/player/leet.mdl",
    "models/player/magnusson.mdl",
    "models/player/monk.mdl",
    "models/player/mossman.mdl",
    "models/player/odessa.mdl",
    "models/player/p2_chell.mdl",
    "models/player/riot.mdl",
    "models/player/soldier_stripped.mdl",
    "models/player/swat.mdl",
    "models/player/urban.mdl",
}

-- The weapon set that all CP are based off of
local BASE_CP_WEAPONS = {
    "arrest_stick",
    "unarrest_stick",
    "cw_p99",
    "stunstick",
    "door_ram",
    "weaponchecker",
    "weapon_cuff_police",
    "weapon_stungun",
}

-- Ammo types
local AMMO = {
    cw_p99 = 52,
    cw_ar15 = 45,
    cw_m3super90 = 42,
    cw_mp5 = 52,
    cw_deagle = 41
}

-- Ammo that all CP spawn with
local BASE_CP_AMMO = {
    [AMMO.cw_p99] = 45,
    [AMMO.cw_ar15] = 90,
    [AMMO.cw_m3super90] = 24,
    [AMMO.cw_mp5] = 60,
    [AMMO.cw_deagle] = 21
}

-- Helper function to return base + extras - exceptions
local function tableMod( base, data )
    local new = table.Merge( base, data.also or {} )

    for _, exception in pairs( data.except or {} ) do
        table.RemoveByValue( new, exception )
    end

    return new
end

local function baseCpWeapons( data )
    return tableMod( BASE_CP_WEAPONS, data or {} )
end

local function allHumanModels( data )
    return tableMod( ALL_HUMAN_MODELS, data or {} )
end

TEAM_CITIZEN = DarkRP.createJob("Citizen", {
    color = Color(20, 150, 20, 255),

    model = allHumanModels({
        also = {
        },
        except = {
        }
    }),

    description = [[You don't have a specific role in life. Live your day how you want to live it.]],
    weapons = {},
    command = "citizen",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

TEAM_MECHANIC = DarkRP.createJob("Mechanic", {
    color = Color(30, 200, 100, 255),

    model = allHumanModels({
        also = {
        },
        except = {
        }
    }),

    description = [[You are a master of all things car. Use your special repair tool to keep people on the road.]],
    weapons = {
        "weapon_simrepair"
    },
    command = "mechanic",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

TEAM_HITMAN = DarkRP.createJob("Mercenary", {
    color = Color(75, 0, 0, 255),

    model = allHumanModels({
        also = {
        },
        except = {
        }
    }),

    description = [[Get yourself a gun and get hired for jobs.
    Get paid to participate in raids, guard the Mob Boss, or for simple hits.
    Just be careful not to get caught by the cops.]],

    weapons = {},
    command = "mercenary",
    max = 1,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Gangsters",
})

TEAM_MEDIC = DarkRP.createJob("Medic", {
    color = Color(47, 79, 79, 255),

    model = allHumanModels({
        also = {
        },
        except = {
        }
    }),

    description = [[With your medical knowledge you work to restore players to full health bring them back from the brink.]],

    weapons = {
        "med_kit",
        "weapon_defibrillator"
    },

    command = "medic",
    max = 4,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Citizens",
})

-- == POLICE == --
TEAM_POLICE = DarkRP.createJob("Police Officer", {
    color = Color(25, 25, 170, 255),

    model = {
        "models/player/police.mdl",
        "models/player/police_fem.mdl"
    },

    description = [[The protector of every the city and its people.
    Hit a player with your arrest baton to put them in jail.
    The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
    The Battering Ram can also unfreeze frozen props (if enabled).
    Type /wanted <name> to alert the public to the presence of a criminal.]],

	weapons = {
		"weapon_cuff_police",
		"weapon_stungun",
		"unarrest_stick",
		"arrest_stick",
		"cw_p99",
		"stunstick",
		"door_ram",
    },

    command = "cp",
    max = 7,
    salary = GAMEMODE.Config.normalsalary * 1.56,
    admin = 0,
    vote = true,
    hasLicense = true,
    ammo = BASE_CP_AMMO,
    category = "Civil Protection",
})

TEAM_DEA = DarkRP.createJob("DEA Agent", {
    color = Color(15, 15, 150, 255),

    model = {
        "models/player/combine_soldier.mdl",
    },

    description = [[As a member of the DEA, your job is to be on the lookout for drugs within the city.
    Use your drug sniffer to sniff out some product or an illegal setup.
    Hit a player with your arrest baton to put them in jail.
    The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
    The Battering Ram can also unfreeze frozen props (if enabled).
    Type /wanted <name> to alert the public to the presence of a criminal.]],

 	weapons = {
		"weapon_cuff_police",
		"weapon_stungun",
		"unarrest_stick",
		"arrest_stick",
		"cw_deagle",
		"stunstick",
		"door_ram",
		"zwf_sniffer",
    },

    command = "dea",
    max = 2,
    salary = GAMEMODE.Config.normalsalary * 1.56,
    admin = 0,
    vote = true,
    hasLicense = true,
    ammo = BASE_CP_AMMO,
	NeedToChangeFrom = TEAM_POLICE,
    category = "Civil Protection",
})

TEAM_CHIEF = DarkRP.createJob("Chief of Police", {
    color = Color(20, 20, 255, 255),

    model = {
        "models/player/combine_soldier_prisonguard.mdl"
    },

    description = [[The Chief is the leader of city Police.
    Coordinate the police force to enforce law in the city.
    Hit a player with arrest baton to put them in jail.
    Bash a player with a stunstick and they may learn to obey the law.
    The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
    Type /wanted <name> to alert the public to the presence of a criminal.
    Type /jailpos to set the Jail Position]],

	weapons = {
		"weapon_cuff_police",
		"weapon_stungun",
		"unarrest_stick",
		"arrest_stick",
		"cw_deagle",
		"stunstick",
		"door_ram",
    },

    command = "chief",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.78,
    admin = 0,
    vote = true,
    hasLicense = true,
    chief = true,
	NeedToChangeFrom = TEAM_POLICE,
    ammo = BASE_CP_AMMO,
    category = "Civil Protection",
})

TEAM_GANG = DarkRP.createJob("Gangster", {
    color = Color(75, 75, 75, 255),

    model = allHumanModels({
        also = {
        },
        except = {
        }
    }),

    description = [[A connoisseur of crime. Strike out on your own, or try to join or form a criminal organization.]],
    weapons = {},
    command = "gangster",
    max = 8,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Gangsters",
})

TEAM_GUN = DarkRP.createJob("Gun Dealer", {
    color = Color(255, 140, 0, 255),

    model = allHumanModels({
        also = {
        },
        except = {
        }
    }),

    description = [[A Gun Dealer is the only person who can sell guns to other people.
    Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],

    weapons = {},
    command = "gundealer",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_MAYOR = DarkRP.createJob("Mayor", {
    color = Color(150, 20, 20, 255),

    model = allHumanModels({
        also = {
        },
        except = {
        }
    }),

    description = [[The Mayor of the city creates laws to govern the city.
    The computer in your office will allow you to manage the city, it's laws, and the police force.]],

    weapons = {},
    command = "mayor",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 2,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = true,
    category = "Civil Protection",
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
    color = Color(80, 45, 0, 255),
    model = "models/player/corpse1.mdl",
    description = [[You're homeless and out of a job.
    Set up a makeshift home somewhere and try to make some money.]],
    weapons = {"weapon_bugbait"},
    command = "hobo",
    max = 0,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    hobo = true,
    category = "Citizens",
})

TEAM_BLACKMARKET = DarkRP.createJob("Black Market Dealer", {
    color = Color(150, 70, 0, 255),

    model = allHumanModels({
        also = {
        },
        except = {
        }
    }),

    description = [[Sell shady tools to the populace.
    Watch out for cops, or try and buy them off.]],
    weapons = {},
    command = "blackmarket",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Gangsters",
})

if not DarkRP.disabledDefaults["modules"]["hungermod"] then
    TEAM_COOK = DarkRP.createJob("Cook", {
        color = Color(238, 99, 99, 255),

        model = allHumanModels({
            also = {
            },
            except = {
            }
        }),

        description = [[As a cook, it is your responsibility to feed the other members of your city.]],
        weapons = {},
        command = "cook",
        max = 4,
        salary = 45,
        admin = 0,
        vote = false,
        hasLicense = false,
        cook = true,
        category = "Citizens"
    })
end

TEAM_DRUG = DarkRP.createJob("Drug Dealer", {
    color = Color(175, 175, 0, 255),

    model = allHumanModels({
        also = {
        },
        except = {
        }
    }),

    description = [[As a skilled chemist, you supply drugs to the city's populace.]],
    weapons = {},
    command = "drug",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Gangsters",
})

TEAM_STAFF = DarkRP.createJob("Staff-On-Duty", {
    color = Color(0, 128, 128, 255),
    model = {
		"models/player/hostage/hostage_01.mdl",
		"models/player/hostage/hostage_02.mdl",
		"models/player/hostage/hostage_03.mdl",
		"models/player/hostage/hostage_04.mdl"},
    description = [[Staff Job]],
    weapons = {"weaponchecker", "weapon_keypadchecker"},
    command = "staff",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
	customCheck = function(ply) return table.HasValue( {"moderator", "admin", "superadmin", "owner"}, ply:GetUserGroup() ) end,
    category = "Other",
})

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
    [TEAM_DEA] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_HITMAN)
