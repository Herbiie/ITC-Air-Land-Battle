radioNotifications = true;
[player,1,["ACE_SelfActions","ALBOptions","RadioOn"]] call ace_interact_menu_fnc_removeActionFromObject;
[player, 1, ["ACE_SelfActions","ALBOptions"],H_action_radioOff] call ace_interact_menu_fnc_addActionToObject;