{
	private _pos = _x # 2;
	private _co = nearestObject [_pos, "B_officer_F"];
	private _fob = (_x # 0) == "FOB";
	[_co,_fob] call H_fnc_addCOOptions;
} forEach H_alb_fobs;

private _civleaders = missionNameSpace getVariable ["H_civleaders",[]];

{
	[_x] call H_fnc_addCivActions;
} forEach _civleaders;

{
	[_x] call H_fnc_addVehicleActions;
} forEach H_alb_westVehicles;

private _startTime = diag_tickTime;
private _startPos = position player;
[player, 1, ["ACE_SelfActions"],H_action_JIPTeleport] call ace_interact_menu_fnc_addActionToObject;
waitUntil {
	((diag_tickTime - _startTime) > 300) || (((player) distance _startPos) > 50) || (((player) distance (leader player)) < 50) 
};
hint "JIP Teleport No Longer Available";

