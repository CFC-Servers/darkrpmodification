--[[---------------------------------------------------------------------------
DarkRP Agenda's
---------------------------------------------------------------------------
Agenda's can be set by the agenda manager and read by both the agenda manager and the other teams connected to it.


HOW TO MAKE AN AGENDA:
AddAgenda(Title of the agenda, Manager (who edits it), {Listeners (the ones who just see and follow the agenda)})
---------------------------------------------------------------------------]]
-- Example: AddAgenda("Gangster's agenda", TEAM_MOB, {TEAM_GANG})
-- Example: AddAgenda("Police agenda", TEAM_MAYOR, {TEAM_CHIEF, TEAM_POLICE, TEAM_DEA})

AddAgenda("Kingdom's Agenda", TEAM_KING, {TEAM_QUEEN, TEAM_PRINCE, TEAM_PRINCESS, TEAM_KNIGHT, TEAM_CAPTAIN, TEAM_GUARD})
AddAgenda("Orc's Agenda", TEAM_ORCCHIEF, {TEAM_ORC, TEAM_ORCSMITH, TEAM_ORCHEALER})
AddAgenda("Cult's Agenda", TEAM_CULTLEADER, {TEAM_CULT})
