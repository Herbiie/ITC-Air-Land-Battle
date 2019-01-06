params ["_applicantID"];
private _profileID = getPlayerUID player;

if (_profileID == _applicantID) then {
	[arty] call H_fnc_setUpArty;
	[mt] call H_fnc_setUpMT;
	[air] call H_fnc_setUpAir;
	[player,1,["ACE_SelfActions","COptions","SubCommander"]] call ace_interact_menu_fnc_removeActionFromObject;
	[player,1,["ACE_SelfActions","COptions","Commander"]] call ace_interact_menu_fnc_removeActionFromObject;
	[player, 1, ["ACE_SelfActions","COptions"],H_action_subcommanderResign] call ace_interact_menu_fnc_addActionToObject;
	hint "You are now a subordinate commander.";
	subCommanders = subCommanders + [_applicantID];
	publicVariable "subCommanders";
};