params ["_applicantID"];
private _profileID = getPlayerUID player;

if (_profileID == _applicantID) then {
	player setRank "Sergeant";
	[arty,H_Arty_vehicles] call H_fnc_setUpOfficer;
	[mt,H_MT_vehicles] call H_fnc_setUpOfficer;
	[air,H_Air_vehicles] call H_fnc_setUpOfficer;
	[sup] call H_fnc_setUpSupply;
	[player,1,["ACE_SelfActions","COptions","SubCommander"]] call ace_interact_menu_fnc_removeActionFromObject;
	[player,1,["ACE_SelfActions","COptions","Commander"]] call ace_interact_menu_fnc_removeActionFromObject;
	[player, 1, ["ACE_SelfActions","COptions"],H_action_subcommanderResign] call ace_interact_menu_fnc_addActionToObject;
	_playerName = profileName;
	["Notification",["New Sub-Commander",format ["%1 is now a sub-commander.", _playerName]]] remoteExec ["BIS_fnc_showNotification",0];
	subCommanders = subCommanders + [_applicantID];
	publicVariable "subCommanders";
};