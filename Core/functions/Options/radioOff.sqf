radioNotifications = false;
[player,1,["ACE_SelfActions","ALBOptions","RadioOff"]] call ace_interact_menu_fnc_removeActionFromObject;
[player, 1, ["ACE_SelfActions","ALBOptions"],H_action_radioOn] call ace_interact_menu_fnc_addActionToObject;
