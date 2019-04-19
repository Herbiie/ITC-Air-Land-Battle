params ["_toggle"];

if (_toggle) then {
	[player, 1, ["ACE_SelfActions"],H_action_voteOptions] call ace_interact_menu_fnc_addActionToObject;
	[player, 1, ["ACE_SelfActions","VOptions"],H_action_voteYes] call ace_interact_menu_fnc_addActionToObject;
	[player, 1, ["ACE_SelfActions","VOptions"],H_action_voteNo] call ace_interact_menu_fnc_addActionToObject;
} else {
	[player,1,["ACE_SelfActions","VOptions","VYes"]] call ace_interact_menu_fnc_removeActionFromObject;
	[player,1,["ACE_SelfActions","VOptions","VNo"]] call ace_interact_menu_fnc_removeActionFromObject;
	[player,1,["ACE_SelfActions","VOptions"]] call ace_interact_menu_fnc_removeActionFromObject;
};