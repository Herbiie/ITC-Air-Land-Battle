	params ["_base"];
	

	private _pos = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20 OR (_pos distance getMarkerPos "marker_0" < 500)} do {
    _pos = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};


private _objType = selectRandom [H_fnc_hq1,H_fnc_hq2];

[_pos] call _objType;


private _marker = createMarker [format ["Location%1", random 1000], _pos];
_marker setMarkerType "hd_objective";
_marker setMarkerColor "ColorRed";
_marker setMarkerText "Insurgent Outpost";

private _group1 = createGroup east;
[_group1, _pos] call H_fnc_OPFORSquad;
[leader _group1, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[_group1] call CBA_fnc_taskDefend;

private _group2 = createGroup east;
[_group2, _pos] call H_fnc_OPFORSquad;
[leader _group2, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[leader _group2, _pos, 200] spawn H_fnc_patrol;

private _commander =  _group1 createUnit ["O_G_Soldier_F", _pos, [], 0, "NONE"];
[_commander,H_enFaction,"OF"] call tb3_fLoadout;	
_commander disableAI "move";

private _adjective = selectRandom h_alb_opNameA;
private _noun = selectRandom H_alb_opNameB;

private _opname = format ["Operation %1 %2:", _adjective, _noun];
[[west,["_task"],["Situation:<br/>
An insurgent outpost has been identified at the location marked on the map.<br/>
<br/>
Situation Enemy Forces:<br/>
The outpost will have 6 - 10 insurgents manning defensive positions or carrying out patrols. Insurgents are armed with a mixture of small arms and RPGs.<br/>
<br/>
Situation Friendly Forces:<br/>
As per map.<br/>
<br/>
Mission:<br/>
Destroy the enemy outpost at the marker in order to disrupt insurgent activity.<br/>
<br/>
Execution:<br/>
Strike team will insert near objective and destroy enemy forces at the outpost.<br/>
<br/>
Service Support:<br/>
As per SOPs.<br/>
<br/>
Command and Signals:<br/>
As per SOPs.<br/>",format ["%1 Destroy Outpost", _opname],"_taskmarker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];

waitUntil {(_commander distance _base < 50) OR !(alive _commander)};

if (alive _commander) then {
	["_task","SUCCEEDED"] remoteExec ["BIS_fnc_taskSetState",0];

	deleteMarker _marker;
		missionActive = false;
		[20, true] remoteExec ["H_fnc_deploypoints",2];
		[20, _base, true] remoteExec ["H_fnc_townPoints",2];

	sleep 300;
	{deleteVehicle _x} forEach units _group1;
	{deleteVehicle _x} forEach units _group2;

	{
		_x addScore 10;
	} forEach allPlayers;
} else {
	["_task","FAILED"] remoteExec ["BIS_fnc_taskSetState",0];
};