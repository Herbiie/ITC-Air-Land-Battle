[player, 1, ["ACE_SelfActions"],H_action_commanderOptions] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions"],H_action_missionOptions] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions","COptions"],H_action_commanderRequest] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions","ALBOptions"],H_action_radioOff] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions","ALBOptions"],H_action_checkCommand] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions","ALBOptions"],H_action_checkDeploy] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions","ALBOptions"],H_action_checkXP] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions","ALBOptions"],H_action_savePlayer] call ace_interact_menu_fnc_addActionToObject;

[player, 0, ["ACE_MainActions"],H_action_subordinateOptions] call ace_interact_menu_fnc_addActionToObject;

