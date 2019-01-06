	params ["_base"];
	
	missionActive = true;
	private _pos = [_base, 300, 1500, 25, 0, 10, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20 OR (_pos distance getMarkerPos "marker_0" < 500)} do {
    _pos = [_base, 300, 1500, 25, 0, 10, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};

private _objType = selectRandom [H_fnc_depot1,H_fnc_depot2,H_fnc_depot3];

[_pos] call _objType;

private _objective = [_pos, sideEmpty, _objType,[],[],[],[],[],random 360] call BIS_fnc_spawnGroup;


private _group1 = createGroup east;
[_group1, _pos] call H_fnc_OPFORSquad;
[leader _group1, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[_group1] call CBA_fnc_taskDefend;

private _group2 = createGroup east;
[_group2, _pos] call H_fnc_OPFORSquad;
[leader _group2, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[leader _group2, _pos, 200] spawn H_fnc_patrol;

_obj = "I_G_Offroad_01_repair_F" createVehicle _pos; 

private _markerpos = [[[position _obj, 190]],[]] call BIS_fnc_randomPos;
private _marker = createMarker [format ["Location%1", random 1000], _markerpos];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerColor "ColorRed";
_marker setMarkerSize [200, 200];

private _adjective = selectRandom h_alb_opNameA;
private _noun = selectRandom H_alb_opNameB;

private _opname = format ["Operation %1 %2:", _adjective, _noun];
[[west,["_task"],["
Situation:<br/>
Intelligence have discovered that the insurgents are using a camp somewhere in the red area as a supply point. They are using a 4x4 utility vehicle. Find it and destroy it.<br/>
<br/>
Situation Enemy Forces:<br/>
Insurgents have a small force of 4 or 5 men at the camp, with a further fireteam strength patrol in the surrounding area.<br/>
<br/>
Situation Friendly Forces:<br/>
As per map.<br/>
<br/>
Mission:<br/>
Destroy insurgent utility vehicle in order to disrupt insurgent activity.<br/>
<br/>
Execution:<br/>
Strike team will move to insurgent camp and conduct a raid to destroy insurgent utility vehicle.<br/>
<br/>
Service Support:<br/>
As per SOPs.<br/>
<br/>
Command and Signals:<br/>
As per SOPs.<br/>",format ["%1 Find and Destroy Insurgent Utility Vehicle", _opname],"_taskmarker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];

waitUntil {!alive _obj};


[["_task","SUCCEEDED"], BIS_fnc_taskSetState] remoteExec ["call",0];

deleteMarker _marker;
	missionActive = false;
	[20, true] remoteExec ["H_fnc_deploypoints",2];
	[20, _base, true] remoteExec ["H_fnc_townPoints",2];

sleep 300;
{deleteVehicle _x} forEach units _objective;
{deleteVehicle _x} forEach units _group1;
{deleteVehicle _x} forEach units _group2;