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
    color = Color(155, 255, 155, 255),
    model = {
        "models/kayf/humans/group01/male_01.mdl",
        "models/kayf/humans/group01/male_02.mdl",
        "models/kayf/humans/group01/male_05.mdl",
        "models/kayf/humans/group02/male_03.mdl",
        "models/kayf/humans/group01/male_07.mdl",
        "models/kayf/humans/group02/male_06.mdl",
		"models/dawson/obese_male_deluxe_edition/obese_male_gregory_01.mdl",
		"models/kayf/humans/group01/female_02.mdl",
        "models/kayf/humans/group01/female_03.mdl",
        "models/kayf/humans/group02/female_03.mdl",
        "models/kayf/humans/group02/female_02.mdl",
		"models/kayf/humans/group02/female_06.mdl",
    },
    description = [[Citizens are normal people, nothing special and make up the majority of the server.

-Income and Salary-
   $50/10min
  
-Special Commands-
   None
   
-Abilities-
   None
  
]],
    weapons = {"weapon_fists"},
    command = "citizen",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Civilians",
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

TEAM_MEDIC = DarkRP.createJob("Rescue", {
    color = Color(255, 114, 0, 255),
    model = {
        "models/player/kerry/medic/medic_01.mdl",
        "models/player/kerry/medic/medic_03.mdl",
        "models/player/kerry/medic/medic_06.mdl",
        "models/player/kerry/medic/medic_04_f.mdl",
        "models/player/kerry/medic/medic_05_f.mdl",
        "models/player/kerry/medic/medic_03_f.mdl",
    },
    description = [[Rescue is there to help people. You'll find work by healing people and putting out fires, some of which may be arson.

-Income and Salary-
   $200/10min
   Any profits from services
  
-Special Commands-
   None
   
-Abilities-
   Can heal people
   Can put out fires
   Can sell morphine syringes
  
]],
    weapons = {"med_kit","weapon_extinguisher"},
    command = "medic",
    max = 3,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Government",
})

TEAM_MOB = DarkRP.createJob("Kingpin", {
    color = Color(172,0,255, 255),
    model = {
        "models/humans/group10/male_08.mdl",
        "models/humans/group10/male_03.mdl",
        "models/humans/group10/female_02.mdl",
        "models/humans/group10/female_07.mdl",
    },
    description = [[The kingpin is the boss of the criminal underworld. Employ an army of underlings to do your dirty work and run your very own crime empire. Keep yourself protected at all times, as some people may be interested in taking you out.

-Income and Salary-
   $600/10min
   Any profits from rackets
  
-Special Commands-
   /agenda - Sets gang agenda
   /addagenda - Adds line to gang agenda
   
-Abilities-
   You have a forged gun license
   Break people out of jail
   People may want to work for you
  
]],
    weapons = {"lockpick","cw_shorty", "unarrest_stick"},
    command = "mobboss",
    max = 1,
    salary = 600,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Law-Breakers",
	ammo = {
        ["12 Gauge Rounds"] = 60,
    },
	NeedToChangeFrom = TEAM_GANG,
})

-- == POLICE == --
TEAM_POLICE = DarkRP.createJob("Law Enforcement", {
    color = Color(0, 140, 255, 255),
    model = {
        "models/kerry/player/police_usa/male_04.mdl",
        "models/kerry/player/police_usa/male_05.mdl",
        "models/kerry/player/police_usa/male_06.mdl",
		"models/kerry/player/police_usa/male_03.mdl",
        "models/kerry/player/police_usa/male_01.mdl",
    },
    description = [[Law enforcement have the authority to uphold the law, whether that be by issuing fines, arresting criminals, or killing armed psychos.

-Income and Salary-
   $200/10min
   Cash reward for destroying printers
   
-Special Commands-
   /wanted <PLAYER> - Sets that player as Wanted (needed to arrest)
   /warrant <PLAYER> - Requests a warrant to search player's property
   /agenda - Sets shared police agenda
   /addagenda - Adds line to shared police agenda
   
-Abilities-
   Can issue tickets
   Can make arrests
   Can search people
   
]],
    weapons = {"arrest_stick", "unarrest_stick", "cw_nen_glock17", "stunstick", "door_ram", "weaponchecker"},
    command = "cp",
    max = 6,
    salary = 250,
    admin = 0,
    vote = true,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Government",
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

TEAM_CHIEF = DarkRP.createJob("Federal Agent", {
    color = Color(0, 36, 195, 255),
     model = {
        "models/fbi_pack/fbi_05.mdl",
        "models/fbi_pack/fbi_06.mdl",
        "models/fbi_pack/fbi_01.mdl",
        "models/fbi_pack/fbi_03.mdl",
    },
    description = [[Federal Agents are mainly in charge of high-risk criminals and drug crime.

-Income and Salary-
   $400/10min
  
-Special Commands-
   /wanted <PLAYER> - Sets that player as Wanted (needed to arrest)
   /warrant <PLAYER> - Requests a warrant to search player's property
   /agenda - Sets shared police agenda
   /addagenda - Adds line to shared police agenda
   
-Abilities-
   Can issue tickets
   Can make arrests
   Can search people
  
]],
    weapons = {"arrest_stick", "unarrest_stick", "cw_mp7_official", "stunstick", "door_ram", "weaponchecker"},
    command = "chief",
    max = 2,
    salary = 400,
    admin = 0,
    vote = true,
    hasLicense = true,
    chief = true,
    NeedToChangeFrom = TEAM_POLICE,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Government",
})

TEAM_GANG = DarkRP.createJob("Criminal", {
    color = Color(164,0,235, 255),
    model = {
        "models/kayf/humans/group01/male_01.mdl",
        "models/kayf/humans/group01/male_02.mdl",
        "models/kayf/humans/group01/male_05.mdl",
        "models/kayf/humans/group01/male_07.mdl",
		"models/dawson/obese_male_deluxe_edition/obese_male_gregory_01.mdl",
		"models/ms13/slow_1.mdl",
        "models/ms13/slow_2.mdl",
		"models/ms13/slow_3.mdl",
		"models/deepalley/alley_thug.mdl",
        "models/kayf/humans/group01/female_03.mdl",
        "models/kayf/humans/group02/female_02.mdl",
		"models/kayf/humans/group02/female_06.mdl",
    },
    description = [[You are a career criminal. You often choose the less-than-legal route to get rich. In between running from the cops you make a living by robbing those you deem weaker than you.

-Income and Salary-
   $50/10min
   Any profits from criminal activity
  
-Special Commands-
   None
   
-Abilities-
   None
  
]],
    weapons = {lockpick},
    command = "gangster",
    max = 4,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Law-Breakers",
})

TEAM_GUN = DarkRP.createJob("Arms Dealer", {
    color = Color(255, 255, 0, 255),
    model = {
        "models/humans/group10/male_08.mdl",
        "models/humans/group10/male_03.mdl",
		"models/Player/betaconscript.mdl",
		"models/ms13/slow_1.mdl",
        "models/ms13/slow_2.mdl",
		"models/ms13/slow_3.mdl",
		"models/humans/group10/female_02.mdl",
        "models/humans/group10/female_07.mdl",
    },
    description = [[Arms dealers sell weapons to those who have the cash to buy. With such a popular product, you'll have no trouble finding business opportunities.

-Income and Salary-
   $100/10min
   Any profits from sales
  
-Special Commands-
   None
   
-Abilities-
   Can sell weapons
   Can sell ammunition
  
]],
    weapons = {},
    command = "gundealer",
    max = 2,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Vendors",
})

TEAM_MAYOR = DarkRP.createJob("Mayor", {
    color = Color(0, 255, 255, 255),
   model = {
        "models/humans/group10/male_08.mdl",
        "models/humans/group10/male_03.mdl",
        "models/humans/group10/female_02.mdl",
        "models/humans/group10/female_07.mdl",
    },
    description = [[You are the elected official of the city. Being such an important person you may find yourself with a price on your head. Stay protected at all times, as you will lose your job upon death.

-Income and Salary-
   $800/10min
  
-Special Commands-
   /wanted <PLAYER> - Sets that player as Wanted (needed to arrest)
   /warrant <PLAYER> - Requests a warrant to search player's property
   /agenda - Sets shared police agenda
   /addagenda - Adds line to shared police agenda
   
-Abilities-
   Can edit laws
   Can issue licenses
   Can accept or veto warrants
  
]],
    weapons = {},
    command = "mayor",
    max = 1,
    salary = 800,
    admin = 0,
    vote = true,
    hasLicense = true,
    mayor = true,
    category = "Government",
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
    color = Color(202,179,31,255),
   model = {       
        "models/player/corpse1.mdl",
		"models/player/eli.mdl",
        "models/jessev92/player/l4d/m9-hunter.mdl",
	},
    description = [[Hobos are the lowest members of society. You have no regular income and no safe housing, taking it day by day.

-Income and Salary-
   $0/10min
  
-Special Commands-
   None
   
-Abilities-
   Can sell garbage
]],
    weapons = {"weapon_angryhobo"},
    command = "hobo",
    max = 5,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    hobo = true,
    category = "Civilians",
})

TEAM_BLACKMARKET = DarkRP.createJob("Black Market", {
    color = Color(55, 55, 55, 255),
    model = {       
        "models/kayf/humans/group01/male_05.mdl",
        "models/kayf/humans/group01/male_07.mdl",
		"models/ms13/slow_1.mdl",
        "models/ms13/slow_2.mdl",
		"models/ms13/slow_3.mdl",
		"models/Player/betaconscript.mdl",
		"models/humans/group10/female_02.mdl",
        "models/humans/group10/female_07.mdl",
    },
    description = [[Black Market dealers sell merchandise that is highly illegal. You'll no doubt make good money with the right people.

-Income and Salary-
   $50/10min
   Any profits from sales
  
-Special Commands-
   None
   
-Abilities-
   Can sell explosives
   Can sell printers
   Can sell assault weapons
  
]],
    weapons = {},
    command = "blackmarket",
    max = 1,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Law-Breakers",
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
    color = Color(55, 55, 55, 255),
    model = {
        "models/kayf/humans/group01/male_01.mdl",
        "models/kayf/humans/group01/male_02.mdl",
        "models/kayf/humans/group01/male_05.mdl",
        "models/kayf/humans/group01/male_07.mdl",
		"models/dawson/obese_male_deluxe_edition/obese_male_gregory_01.mdl",
		"models/ms13/slow_1.mdl",
        "models/ms13/slow_2.mdl",
		"models/ms13/slow_3.mdl",
		"models/jessev92/player/l4d/m9-hunter.mdl",
		"models/deepalley/alley_thug.mdl",
        "models/kayf/humans/group01/female_03.mdl",
        "models/kayf/humans/group02/female_02.mdl",
		"models/kayf/humans/group02/female_06.mdl",
    },
    description = [[Drug dealers peddle the good stuff.

-Income and Salary-
   $50/10min
   Any profits from sales
  
-Special Commands-
   None
   
-Abilities-
   Can sell drugs
  
]],
    weapons = {},
    command = "drugdealer",
    max = 4,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Law-Breakers",
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
