--[[---------------------------------------------------------------------------
DarkRP custom vehicles
---------------------------------------------------------------------------

This file contains your custom vehicles.
This file should also contain vehicles from DarkRP that you edited.

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:Vehicles

If you want to keep the vehicle code and not comment it out you can add a vehicle to the "DarkRP.disabledDefaults["vehicles"]" section
in the disabled_defaults.lua in the "darkrp_config" folder

Add vehicles under the following line:
---------------------------------------------------------------------------]]

DarkRP.createVehicle({
	name = "charger12poltdm",
	label = "Dodge Charger SRT8 2012 Police",
	model = "models/tdmcars/emergency/dod_charger12.mdl",
	angle = Angle(0, 0, 0),
	price = 2000,
	allowed = {TEAM_POLICE, TEAM_CHIEF}
})
