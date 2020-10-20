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
    "models/player/group01/female_02.mdl",
    "models/player/group01/female_03.mdl",
    "models/player/group01/female_04.mdl",
    "models/player/group01/female_05.mdl",
    "models/player/group01/female_06.mdl",
    "models/player/group01/male_01.mdl",
    "models/player/group01/male_02.mdl",
    "models/player/group01/male_03.mdl",
    "models/player/group01/male_04.mdl",
    "models/player/group01/male_05.mdl",
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
    "models/player/zombie_classic.mdl",
}

-- The weapon set that all CP are based off of
local BASE_CP_WEAPONS = {
    --[[
	"arrest_stick",
    "unarrest_stick",
	"door_ram",
    "meleearts_spear_harpoon",
    "weaponchecker",
    "weapon_cuff_shackles",
	]]
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
    --[[
	[AMMO.cw_p99] = 120,
    [AMMO.cw_ar15] = 120,
    [AMMO.cw_m3super90] = 120,
    [AMMO.cw_mp5] = 120,
    [AMMO.cw_deagle] = 120
	]]
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

TEAM_PEASANT = DarkRP.createJob("Peasant", {
    color = Color(20, 150, 20, 255),

    model = {
        "models/player/martin/medieval2019_playermodels/group03/villager_female_01.mdl",
        "models/player/martin/medieval2019_playermodels/group03/villager_female_02.mdl",
        "models/player/martin/medieval2019_playermodels/group03/villager_female_06.mdl",
		"models/player/martin/medieval2019_playermodels/elfe_fem01.mdl",
        "models/player/martin/medieval2019_playermodels/group03/villager_male_04.mdl",
        "models/player/martin/medieval2019_playermodels/group03/villager_male_06.mdl",
        "models/player/martin/medieval2019_playermodels/group03/villager_male_07.mdl",
		"models/models/frey/frey.mdl",
        "models/player/martin/medieval2019_playermodels/group03/villager_male_08.mdl",
		"models/player/martin/medieval2019_playermodels/group03/villager_male_09.mdl",
    },

    description = [[You don't have a specific role in life. Live your day how you want to live it.]],
    weapons = {},
    command = "peasant",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Peasants",
})

TEAM_BARD = DarkRP.createJob("Bard", {
    color = Color(100, 0, 0, 255),

    model = {
        "models/player/martin/medieval2019_playermodels/barde01_dandelion.mdl",
    },

    description = [[Bards are masters at playing the lute. Either make money with your songs or play for the love of it.]],
    weapons = {
		"rpgguitar"
	},
    command = "bard",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Peasants",
})

if not DarkRP.disabledDefaults["modules"]["hungermod"] then
    TEAM_COOK = DarkRP.createJob("Cook", {
        color = Color(238, 99, 99, 255),

    model = {
        "models/player/martin/medieval2019_playermodels/group05/villager_female_01.mdl",
        "models/player/martin/medieval2019_playermodels/group05/villager_female_02.mdl",
        "models/player/martin/medieval2019_playermodels/group05/villager_female_06.mdl",
        "models/player/martin/medieval2019_playermodels/group05/villager_male_04.mdl",
        "models/player/martin/medieval2019_playermodels/group05/villager_male_06.mdl",
        "models/player/martin/medieval2019_playermodels/group05/villager_male_07.mdl",
        "models/player/martin/medieval2019_playermodels/group05/villager_male_08.mdl",
		"models/player/martin/medieval2019_playermodels/group05/villager_male_09.mdl",
    },

        description = [[As a cook, it is your responsibility to feed the other members of your city.]],
        weapons = {},
        command = "cook",
        max = 4,
        salary = 45,
        admin = 0,
        vote = false,
        hasLicense = false,
        cook = true,
        category = "Peasants"
    })
end

TEAM_ASSASSIN = DarkRP.createJob("Assassin", {
    color = Color(25, 25, 25, 255),

    model = {
	"models/player/martin/2020_assassins/assassin_female01.mdl",
	"models/player/martin/2020_assassins/assassin_female02.mdl",
	"models/player/martin/2020_assassins/assassin_female06.mdl",
	"models/player/martin/2020_assassins/assassin_male04.mdl",
	"models/player/martin/2020_assassins/assassin_male06.mdl",
	"models/player/martin/2020_assassins/assassin_male07.mdl",
	"models/player/martin/2020_assassins/assassin_male08.mdl",
	"models/player/martin/2020_assassins/assassin_male09.mdl",
	},

    description = [[Get yourself a gun and get hired for jobs.
    Get paid to participate in raids, guard the Mob Boss, or for simple hits.
    Just be careful not to get caught by the cops.]],

    weapons = {
		"meleearts_blade_shiv"
	},
    command = "assassin",
    max = 1,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
})

TEAM_MEDIC = DarkRP.createJob("Doctor", {
    color = Color(45, 80, 80, 255),

    model = {
		"models/player/plague_doktor/PLAYER_Plague_Doktor.mdl",
	},

    description = [[With your medical knowledge you work to restore the people of the kingdom back to full health.]],

    weapons = {
        "med_kit",
    },

    command = "doctor",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Peasants",
})

TEAM_THUG = DarkRP.createJob("Thug", {
    color = Color(75, 75, 75, 255),

    model = {
        "models/player/martin/medieval2019_playermodels/mercenaire05_ves01.mdl",
		"models/player/martin/medieval2019_playermodels/mercenaire04_eskel01.mdl",
		"models/player/martin/medieval2019_playermodels/mercenaire03_hrmb01.mdl",
		"models/models/beskha/beskha.mdl",
		"models/player/martin/medieval2019_playermodels/mercenaire01_vengarl.mdl",
		"models/player/martin/medieval2019_playermodels/elfe_hom01.mdl",
		"models/player/martin/medieval2019_playermodels/forgeron_new01.mdl",
    },

    description = [[Thief, Mercenary, Bandit, Revolutionary.
	Whatever you are, you're up to no good.]],
    weapons = {},
    command = "thug",
    max = 6,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
})

TEAM_BLACKSMITH = DarkRP.createJob("Blacksmith", {
    color = Color(255, 150, 0, 255),

    model = {
	"models/player/martin/medieval2019_playermodels/marchand01_djikstra.mdl",
	"models/player/martin/medieval2019_playermodels/marchand02_menge.mdl",
	},

    description = [[Blacksmiths sell weapons to the people of the realm.]],

    weapons = {},
    command = "blacksmith",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Peasants",
})

TEAM_BLACKMARKET = DarkRP.createJob("Black Market Dealer", {
    color = Color(125, 75, 0, 255),

    model = {
        "models/player/martin/medieval2019_playermodels/mercenaire02_roche.mdl",
    },

    description = [[Black Market Dealers have an assortment of less than legal goods to sell.]],
    weapons = {},
    command = "blackmarket",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
})

TEAM_MERCHANT = DarkRP.createJob("Elven Merchant", {
    color = Color(0, 175, 125, 255),

    model = {
        "models/player/martin/camp_vlt/maire_femfinalver02.mdl",
		"models/player/martin/camp_vlt/maire_malefinalver01.mdl",
		"models/player/martin/medieval2019_playermodels/elfe_noble_m01.mdl",
    },

    description = [[You've come from the faraway lands of Elfland to sell exotic goods.]],
    weapons = {},
    command = "elvenmerchant",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Peasants",
})

-- == GUARDS == --
TEAM_GUARD = DarkRP.createJob("Guard", {
    color = Color(0, 0, 200, 255),

    model = {
        "models/player/martin/campbleu/infanterie01_male04.mdl",
        "models/player/martin/campbleu/infanterie01_male06.mdl",
		"models/player/martin/campbleu/infanterie01_male07.mdl",
		"models/player/martin/campbleu/infanterie01_male08.mdl",
		"models/player/martin/campbleu/infanterie01_male09.mdl",
    },

    description = [[The protector of the kingdom and its people.
The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
The Battering Ram can also unfreeze frozen props (if enabled).
Type /wanted <name> to alert the public to the presence of a criminal.]],

    weapons = {
		--"arrest_stick",
		--"unarrest_stick",
		"door_ram",
		"meleearts_spear_harpoon",
		--"weaponchecker",
		"weapon_cuff_shackles",
    },
    command = "guard",
    max = 6,
    salary = GAMEMODE.Config.normalsalary * 1.56,
    admin = 0,
    vote = true,
    hasLicense = true,
    ammo = BASE_CP_AMMO,
    category = "Guards",
})

TEAM_CAPTAIN = DarkRP.createJob("Captain of the Guard", {
    color = Color(0, 0, 150, 255),

    model = {
        "models/player/martin/campbleu/seigneur_bleuArmure_final_V1.mdl"
    },

    description = [[The leader of the Guard.
Coordinate the guardsmen to enforce the law in the kingdom.
The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
Type /wanted <name> to alert the public to the presence of a criminal.]],

    --[[
	weapons = baseCpWeapons({
        also = {
			"meleearts_spear_spartan",
        },
        except = {
			"meleearts_spear_harpoon",
        }
    }),
	]]
	weapons = {
		"arrest_stick",
		"unarrest_stick",
		"door_ram",
		"meleearts_spear_spartan",
		"weaponchecker",
		"weapon_cuff_shackles",
    },
    command = "captain",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.78,
    admin = 0,
    vote = false,
    hasLicense = true,
    chief = true,
	NeedToChangeFrom = TEAM_GUARD,
    ammo = BASE_CP_AMMO,
    category = "Guards",
})

TEAM_KNIGHT = DarkRP.createJob("Knight", {
    color = Color(75, 0, 200, 255),

    model = {
        "models/player/martin/camp_vlt/templar02_wings.mdl",
    },

    description = [[Knights are the noble warriors of the kingdom.
They are responsible for protecting the royal family.]],

    weapons = {
		--"arrest_stick",
		--"unarrest_stick",
		--"door_ram",
		"meleearts_spear_basic",
		--"weaponchecker",
    },
    command = "knight",
    max = 3,
    salary = GAMEMODE.Config.normalsalary * 1.78,
    admin = 0,
    vote = false,
    hasLicense = true,
	NeedToChangeFrom = TEAM_GUARD,
    ammo = BASE_CP_AMMO,
    category = "Guards",
})

-- == ROYAL FAMILY == --
TEAM_KING = DarkRP.createJob("King", {
    color = Color(50, 0, 50, 255),

    model = {
	"models/player/martin/camprouge/seigneurrouge_v1.mdl",
    },

    description = [[You are the Lord of the realm. It is your duty to protect your realm and lineage, by any means necessary.]],

    weapons = {"meleearts_blade_greatsword"},
    command = "king",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 3,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = true,
    category = "Royalty",
	PlayerDeath = function(ply)
        if ply:Team() == TEAM_KING then
            ply:changeTeam( TEAM_PEASANT, true )
            for k,v in pairs( player.GetAll() ) do
                DarkRP.notify(v, 1, 4, "The king has been killed!")
            end
        end
    end,
})

TEAM_QUEEN = DarkRP.createJob("Queen", {
    color = Color(100, 0, 100, 255),

    model = {
	"models/player/martin/medieval2019_playermodels/elfe_noble_f01.mdl",
    },

    description = [[You are the illustrious Queen of the kingdom.]],

    weapons = {},
    command = "queen",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 2,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = false,
    category = "Royalty",
	PlayerDeath = function(ply)
        if ply:Team() == TEAM_QUEEN then
            ply:changeTeam( TEAM_PEASANT, true )
            for k,v in pairs( player.GetAll() ) do
                DarkRP.notify(v, 1, 4, "The queen has been killed!")
            end
        end
    end,
})

TEAM_PRINCE = DarkRP.createJob("Prince", {
    color = Color(75, 0, 75, 255),

    model = {
	"models/models/gared/gared.mdl",
	"models/models/duncan/duncan.mdl",
    },

    description = [[You are the crown prince, next in line to be King. Make a name for yourself in the kingdom, and prove yourself worthy to take the throne.]],

    weapons = {},
    command = "prince",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 2,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = false,
    category = "Royalty",
	PlayerDeath = function(ply)
        if ply:Team() == TEAM_PRINCE then
            ply:changeTeam( TEAM_PEASANT, true )
            for k,v in pairs( player.GetAll() ) do
                DarkRP.notify(v, 1, 4, "The prince has been killed!")
            end
        end
    end,	
})

TEAM_PRINCESS = DarkRP.createJob("Princess", {
    color = Color(125, 0, 125, 255),

    model = {
	"models/models/cersei/cersei.mdl",
	"models/models/elaena/elaena.mdl",
    },

    description = [[You are a noble princess of the royal family.]],

    weapons = {},
    command = "princess",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 2,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = false,
    category = "Royalty",
	PlayerDeath = function(ply)
        if ply:Team() == TEAM_PRINCESS then
            ply:changeTeam( TEAM_PEASANT, true )
            for k,v in pairs( player.GetAll() ) do
                DarkRP.notify(v, 1, 4, "The princess has been killed!")
            end
        end
    end,
})
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_PEASANT
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_GUARD] = true,
    [TEAM_CAPTAIN] = true,
    [TEAM_KING] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_ASSASSIN)
