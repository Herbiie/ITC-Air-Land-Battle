sleep 1;
_action = ["Teleport","Teleport To SL","",{[player] call H_fnc_teleportToSL},{true}] call ace_interact_menu_fnc_createAction;
		[player, 1, ["ACE_SelfActions"],_action] call ace_interact_menu_fnc_addActionToObject;
		
sleep 4;

hint "Use Self-Interact to Teleport to SL";

sleep 150;

hint "Teleport will be removed in 30 Seconds.";

sleep 30;

[player,1,["ACE_MainActions","Teleport"]] call ace_interact_menu_fnc_removeActionFromObject;