params ["_applicantID","_applicantName"];
[] spawn H_fnc_radio;
private _playerID = getPlayerUID player;
if (_playerID == currentCommander select 0) then {
	["Notification",["Sub-Commander Application",format ["%1 wishes to be a subordinate commander.",_applicantName]]] call BIS_fnc_showNotification;
	private _accept = ["subcommanderAccept",format ["Accept %1 as subordinate commander", _applicantName],"",{[_applicantID] call H_fnc_acceptSubordinate},{true}] call ace_interact_menu_fnc_createAction;
	private _reject = ["subcommanderReject",format ["Reject %1 as subordinate commander", _applicantName],"",{[_applicantID] call H_fnc_rejectSubordinate},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions","COptions"],_accept] call ace_interact_menu_fnc_addActionToObject;
	[player, 1, ["ACE_SelfActions","COptions"],_reject] call ace_interact_menu_fnc_addActionToObject;
};