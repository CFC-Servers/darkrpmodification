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

TEAM_HITMAN = DarkRP.createJob("Mercenary", {
    color = Color(75, 0, 0, 255),
    model = {
        	"models/player/Group03/Female_01.mdl",
        	"models/player/Group03/Female_02.mdl",
        	"models/player/Group03/Female_03.mdl",
        	"models/player/Group03/Female_04.mdl",
        	"models/player/Group03/Female_06.mdl",
        	"models/player/group03/male_01.mdl",
        	"models/player/Group03/Male_02.mdl",
        	"models/player/Group03/male_03.mdl",
        	"models/player/Group03/Male_04.mdl",
        	"models/player/Group03/Male_05.mdl",
        	"models/player/Group03/Male_06.mdl",
        	"models/player/Group03/Male_07.mdl",
        	"models/player/Group03/Male_08.mdl",
        	"models/player/Group03/Male_09.mdl"},
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
    model = {
        	"models/player/Group03/Female_01.mdl",
        	"models/player/Group03/Female_02.mdl",
        	"models/player/Group03/Female_03.mdl",
        	"models/player/Group03/Female_04.mdl",
        	"models/player/Group03/Female_06.mdl",
        	"models/player/group03/male_01.mdl",
        	"models/player/Group03/Male_02.mdl",
        	"models/player/Group03/male_03.mdl",
        	"models/player/Group03/Male_04.mdl",
        	"models/player/Group03/Male_05.mdl",
        	"models/player/Group03/Male_06.mdl",
        	"models/player/Group03/Male_07.mdl",
        	"models/player/Group03/Male_08.mdl",
        	"models/player/Group03/Male_09.mdl"},
    description = [[With your medical knowledge you work to restore players to full health and revive them with the defibrillator.
        Without a medic, people cannot be healed.
        Left click with the Medical Kit to heal other players.
        Right click with the Medical Kit to heal yourself.]],
    weapons = {"med_kit","weapon_defibrillator"},
    command = "medic",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Citizens",
})

TEAM_POLICE = DarkRP.createJob("Civil Protection", {
    color = Color(25, 25, 170, 255),
    model = {
		"models/player/police.mdl",
		"models/player/police_fem.mdl"},
    description = [[The protector of every citizen that lives in the city.
        You have the power to arrest criminals and protect innocents.
        Hit a player with your arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
        The Battering Ram can also unfreeze frozen props (if enabled).
        Type /wanted <name> to alert the public to the presence of a criminal.]],
    weapons = {"arrest_stick", "unarrest_stick", "m9k_m92beretta", "stunstick", "door_ram", "weaponchecker", "weapon_cuff_police", "weapon_stungun"},
    command = "cp",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.56,
    admin = 0,
    vote = true,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
})

TEAM_CHIEF = DarkRP.createJob("Civil Protection Chief", {
    color = Color(20, 20, 255, 255),
    model = {"models/player/combine_soldier_prisonguard.mdl"},
    description = [[The Chief is the leader of the Civil Protection unit.
        Coordinate the police force to enforce law in the city.
        Hit a player with arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
        Type /wanted <name> to alert the public to the presence of a criminal.
        Type /jailpos to set the Jail Position]],
    weapons = {"arrest_stick", "unarrest_stick", "m9k_m29satan", "stunstick", "door_ram", "weaponchecker", "weapon_cuff_police", "weapon_stungun"},
    command = "chief",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.78,
    admin = 0,
    vote = false,
    hasLicense = true,
    chief = true,
    NeedToChangeFrom = TEAM_POLICE,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
})

TEAM_DEA = DarkRP.createJob("DEA Agent", {
    color = Color(15, 15, 150, 255),
    model = {
		"models/player/police.mdl",
		"models/player/police_fem.mdl"},
    description = [[As a member of the DEA, your job is to be on the lookout for drugs within the city.
	Use your drug sniffer to sniff out some product or an illegal setup.
        Hit a player with your arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
        The Battering Ram can also unfreeze frozen props (if enabled).
        Type /wanted <name> to alert the public to the presence of a criminal.]],
    weapons = {"arrest_stick", "unarrest_stick", "m9k_m92beretta", "stunstick", "door_ram", "weaponchecker", "weapon_cuff_police", "weapon_stungun", "zwf_sniffer"},
    command = "dea",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.56,
    admin = 0,
    vote = false,
    NeedToChangeFrom = TEAM_POLICE,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
})

TEAM_GUARD = DarkRP.createJob("Security Guard", {
    color = Color(175, 255, 0, 255),
    model = {
        	"models/player/Group03/Female_01.mdl",
        	"models/player/Group03/Female_02.mdl",
        	"models/player/Group03/Female_03.mdl",
        	"models/player/Group03/Female_04.mdl",
        	"models/player/Group03/Female_06.mdl",
        	"models/player/group03/male_01.mdl",
        	"models/player/Group03/Male_02.mdl",
        	"models/player/Group03/male_03.mdl",
        	"models/player/Group03/Male_04.mdl",
        	"models/player/Group03/Male_05.mdl",
        	"models/player/Group03/Male_06.mdl",
        	"models/player/Group03/Male_07.mdl",
        	"models/player/Group03/Male_08.mdl",
        	"models/player/Group03/Male_09.mdl"},
    description = [[Get hired to do guard work for businesses or organizations.
	Be sure to know what you're getting into beforehand,
	and what your pay will be.]],
    weapons = {"stunstick"},
    command = "guard",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_GANG = DarkRP.createJob("Gangster", {
    color = Color(75, 75, 75, 255),
    model = {
        	"models/player/Group03/Female_01.mdl",
        	"models/player/Group03/Female_02.mdl",
        	"models/player/Group03/Female_03.mdl",
        	"models/player/Group03/Female_04.mdl",
        	"models/player/Group03/Female_06.mdl",
        	"models/player/group03/male_01.mdl",
        	"models/player/Group03/Male_02.mdl",
        	"models/player/Group03/male_03.mdl",
        	"models/player/Group03/Male_04.mdl",
        	"models/player/Group03/Male_05.mdl",
        	"models/player/Group03/Male_06.mdl",
        	"models/player/Group03/Male_07.mdl",
        	"models/player/Group03/Male_08.mdl",
        	"models/player/Group03/Male_09.mdl"},
    description = [[The lowest person of crime.
        A gangster generally works for the Mobboss who runs the crime family.
        The Mob boss sets your agenda and you follow it or you might be punished.]],
    weapons = {},
    command = "gangster",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Gangsters",
})

TEAM_GUN = DarkRP.createJob("Gun Dealer", {
    color = Color(255, 140, 0, 255),
    model = {
        	"models/player/Group03/Female_01.mdl",
        	"models/player/Group03/Female_02.mdl",
        	"models/player/Group03/Female_03.mdl",
        	"models/player/Group03/Female_04.mdl",
        	"models/player/Group03/Female_06.mdl",
        	"models/player/group03/male_01.mdl",
        	"models/player/Group03/Male_02.mdl",
        	"models/player/Group03/male_03.mdl",
        	"models/player/Group03/Male_04.mdl",
        	"models/player/Group03/Male_05.mdl",
        	"models/player/Group03/Male_06.mdl",
        	"models/player/Group03/Male_07.mdl",
        	"models/player/Group03/Male_08.mdl",
        	"models/player/Group03/Male_09.mdl"},
    description = [[A Gun Dealer is the only person who can sell guns to other people.
        Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
    weapons = {},
    command = "gundealer",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_MAYOR = DarkRP.createJob("Mayor", {
    color = Color(150, 20, 20, 255),
    model = "models/player/breen.mdl",
    description = [[The Mayor of the city creates laws to govern the city.
    If you are the mayor you may create and accept warrants.
    Type /wanted <name>  to warrant a player.
    Type /jailpos to set the Jail Position.
    Type /lockdown initiate a lockdown of the city.
    Everyone must be inside during a lockdown.
    The cops patrol the area.
    /unlockdown to end a lockdown]],
    weapons = {},
    command = "mayor",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 2,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = true,
    category = "Civil Protection",
    PlayerDeath = function(ply)
        if ply:Team() == TEAM_MAYOR then
            ply:changeTeam( TEAM_CITIZEN, true )
            for k,v in pairs( player.GetAll() ) do
                    DarkRP.notify(v, 1, 4, "The mayor has been killed!")
            end
        end
    end,
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
    color = Color(80, 45, 0, 255),
    model = "models/player/corpse1.mdl",
    description = [[The lowest member of society. Everybody laughs at you.
        You have no home.
        Beg for your food and money
        Sing for everyone who passes to get money
        Make your own wooden home somewhere in a corner or outside someone else's door]],
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

TEAM_MOB = DarkRP.createJob("Mob Boss", {
    color = Color(25, 25, 25, 255),
    model = "models/player/gman_high.mdl",
    description = [[The Mob boss is the boss of the criminals in the city.
        With his power he coordinates the gangsters and forms an efficient crime organization.
        He has the ability to break into houses by using a lockpick.
        The Mob boss posesses the ability to unarrest you.]],
    weapons = {"unarrest_stick"},
    command = "mobboss",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.34,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Gangsters",
})

TEAM_BLACKMARKET = DarkRP.createJob("Black Market Dealer", {
    color = Color(150, 70, 0, 255),
	model = {
        	"models/player/Group03/Female_01.mdl",
        	"models/player/Group03/Female_02.mdl",
        	"models/player/Group03/Female_03.mdl",
        	"models/player/Group03/Female_04.mdl",
        	"models/player/Group03/Female_06.mdl",
        	"models/player/group03/male_01.mdl",
        	"models/player/Group03/Male_02.mdl",
        	"models/player/Group03/male_03.mdl",
        	"models/player/Group03/Male_04.mdl",
        	"models/player/Group03/Male_05.mdl",
        	"models/player/Group03/Male_06.mdl",
        	"models/player/Group03/Male_07.mdl",
        	"models/player/Group03/Male_08.mdl",
        	"models/player/Group03/Male_09.mdl"},
    description = [[Sell shady tools and weapons to the populace.
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
        model = {
        	"models/player/Group03/Female_01.mdl",
        	"models/player/Group03/Female_02.mdl",
        	"models/player/Group03/Female_03.mdl",
        	"models/player/Group03/Female_04.mdl",
        	"models/player/Group03/Female_06.mdl",
        	"models/player/group03/male_01.mdl",
        	"models/player/Group03/Male_02.mdl",
        	"models/player/Group03/male_03.mdl",
        	"models/player/Group03/Male_04.mdl",
        	"models/player/Group03/Male_05.mdl",
        	"models/player/Group03/Male_06.mdl",
        	"models/player/Group03/Male_07.mdl",
        	"models/player/Group03/Male_08.mdl",
        	"models/player/Group03/Male_09.mdl"},
        description = [[As a cook, it is your responsibility to feed the other members of your city.
            You can spawn a microwave and sell the food you make:
            /buymicrowave]],
        weapons = {},
        command = "cook",
        max = 0,
        salary = 45,
        admin = 0,
        vote = false,
        hasLicense = false,
        cook = true,
	category = "Citizens"
    })
end

TEAM_STAFF = DarkRP.createJob("Staff-On-Duty", {
    color = Color(0, 128, 128, 255),
    model = {
		"models/player/hostage/hostage_01.mdl",
		"models/player/hostage/hostage_02.mdl",
		"models/player/hostage/hostage_03.mdl",
		"models/player/hostage/hostage_04.mdl"},
    description = [[Staff Job]],
    weapons = {"unarrest_stick", "weaponchecker", "weapon_keypadchecker"},
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
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_HITMAN)
