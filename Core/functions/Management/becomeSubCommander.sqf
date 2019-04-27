params ["_applicant"];
private _applicantID = getPlayerUID _applicant;
if (_applicantID in subCommanders) then {
	Hint "This player is already a sub-commander.";
} else {
	if (player == _applicant) then {
		player setRank "Sergeant";
		[arty,H_Arty_vehicles] call H_fnc_setUpOfficer;
		[mt,H_MT_vehicles] call H_fnc_setUpOfficer;
		[air,H_Air_vehicles] call H_fnc_setUpOfficer;
		[sup] call H_fnc_setUpSupply;
		[player, 1, ["ACE_SelfActions","COptions"],H_action_subcommanderResign] call ace_interact_menu_fnc_addActionToObject;
		_playerName = profileName;
		["Notification",["New Sub-Commander",format ["%1 is now a sub-commander.", _playerName]]] remoteExec ["BIS_fnc_showNotification",0];
		subCommanders = subCommanders + [_applicantID];
		publicVariable "subCommanders";
	};
};