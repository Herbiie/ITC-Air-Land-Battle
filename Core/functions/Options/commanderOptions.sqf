[player,1,["ACE_SelfActions","COptions","Commander"]] call ace_interact_menu_fnc_removeActionFromObject;
[player,1,["ACE_SelfActions","COptions","SubCommander"]] call ace_interact_menu_fnc_removeActionFromObject;
[command] call H_fnc_setUpCommand;
[arty,H_Arty_vehicles] call H_fnc_setUpOfficer;
[mt,H_MT_vehicles] call H_fnc_setUpOfficer;
[air,H_Air_vehicles] call H_fnc_setUpOfficer;
[arm] call H_fnc_setUpArmourer;
[sup] call H_fnc_setUpSupply;
[player, 1, ["ACE_SelfActions","COptions"],H_action_saveMission] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions","COptions"],H_action_saveMissionExit] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions","COptions"],H_action_commanderResign] call ace_interact_menu_fnc_addActionToObject;