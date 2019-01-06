removeAllActions mt;
removeAllActions air;
removeAllActions arty;
[player,1,["ACE_SelfActions","COptions","SubCommanderResign"]] call ace_interact_menu_fnc_removeActionFromObject;
[player, 1, ["ACE_SelfActions","COptions"],H_action_subcommanderRequest] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions","COptions"],H_action_commanderRequest] call ace_interact_menu_fnc_addActionToObject;
subCommanders = subCommanders - [_applicantID];
publicVariable "subCommanders";