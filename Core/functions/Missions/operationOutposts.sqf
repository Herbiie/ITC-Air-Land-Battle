params ["_base"];
private _adjective = selectRandom h_alb_opNameA;
private _noun = selectRandom H_alb_opNameB;

private _opname = format ["Operation %1 %2:", _adjective, _noun];
private _task = _opname;

[west,[_task],["
Situation:<br/>
Several insurgent outposts have been identified in the area. The insurgents are clearly gathering for a major attack. To disrupt the attack, the outposts must be destroyed.<br/>
<br/>
Situation Enemy Forces:<br/>
Each outpost will have 6 - 10 insurgents manning defensive positions or carrying out patrols. Insurgents are armed with a mixture of small arms and RPGs.<br/>
<br/>
Situation Friendly Forces:<br/>
As per map.<br/>
<br/>
Mission:<br/>
Destroy the 3x enemy outposts in order to disrupt the upcoming insurgent attack.<br/>
<br/>
Execution:<br/>
Strike team will insert near objectives and destroy enemy forces at each outpost.<br/>
<br/>
Service Support:<br/>
As per SOPs.<br/>
<br/>
Command and Signals:<br/>
As per SOPs.<br/>
",format ["%1 Destroy Insurgent Outposts", _opname],"_taskmarker"],objNull,1,2,true] call BIS_fnc_taskCreate;

	private _pos1 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos1, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos1, [], 20];
	private _nBuilding = _pos1 distance (nearestBuilding _pos1);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20 OR (_pos1 distance getMarkerPos "marker_0" < 500)} do {
    _pos1 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos1, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos1, [], 20];
	private _nBuilding = _pos1 distance (nearestBuilding _pos1);
};

	private _pos2 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos2, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos2, [], 20];
	private _nBuilding = _pos2 distance (nearestBuilding _pos2);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20 OR (_pos2 distance getMarkerPos "marker_0" < 500)} do {
    _pos2 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos2, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos2, [], 20];
	private _nBuilding = _pos2 distance (nearestBuilding _pos2);
};


	private _pos3 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos3, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos3, [], 20];
	private _nBuilding = _pos3 distance (nearestBuilding _pos3);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20 OR (_pos3 distance getMarkerPos "marker_0" < 500)} do {
    _pos3 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos3, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos3, [], 20];
	private _nBuilding = _pos3 distance (nearestBuilding _pos3);
};

private _objType1 = selectRandom [H_fnc_outpost1,H_fnc_outpost2,H_fnc_outpost3,H_fnc_outpost4];

[_pos1] call _objType1;


private _marker1 = createMarker [format ["Location%1", random 1000], _pos1];
_marker1 setMarkerType "hd_objective";
_marker1 setMarkerColor "ColorRed";
_marker1 setMarkerText "Insurgent Outpost";

private _group11 = createGroup east;
[_group11, _pos] call H_fnc_OPFORSquad; 
[leader _group11, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[_group11] call CBA_fnc_taskDefend;

private _group12 = createGroup east;
[_group12, _pos] call H_fnc_OPFORSquad; 
[leader _group12, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[leader _group12, _pos1, 200] spawn H_fnc_patrol; 

private _objType2 = selectRandom [H_fnc_outpost1,H_fnc_outpost2,H_fnc_outpost3,H_fnc_outpost4];

[_pos2] call _objType1;


private _marker2 = createMarker [format ["Location%1", random 1000], _pos2];
_marker2 setMarkerType "hd_objective";
_marker2 setMarkerColor "ColorRed";
_marker2 setMarkerText "Insurgent Outpost";

private _group21 = createGroup east;
[_group2, _pos] call H_fnc_OPFORSquad; 
[leader _group21, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[_group21] call CBA_fnc_taskDefend;

private _group22 = createGroup east;
[_group2, _pos] call H_fnc_OPFORSquad; 
[leader _group22, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[leader _group22, _pos2, 200] spawn H_fnc_patrol; 

private _objType3 = selectRandom [H_fnc_outpost1,H_fnc_outpost2,H_fnc_outpost3,H_fnc_outpost4];

[_pos3] call _objType1;


private _marker3 = createMarker [format ["Location%1", random 1000], _pos3];
_marker3 setMarkerType "hd_objective";
_marker3 setMarkerColor "ColorRed";
_marker3 setMarkerText "Insurgent Outpost";

private _group31 = createGroup east;
[_group31, _pos] call H_fnc_OPFORSquad; 
[leader _group31, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[_group31] call CBA_fnc_taskDefend;

private _group32 = createGroup east;
[_group2, _pos] call H_fnc_OPFORSquad; 
[leader _group32, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[leader _group32, _pos3, 200] spawn H_fnc_patrol;

private _group33 = createGroup east;
[_group2, _pos] call H_fnc_OPFORSquad; 
[leader _group33, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[leader _group33, _pos3, 200] spawn H_fnc_patrol;

[[west,["_task1","_task"],["Destroy Outpost.","Destroy Insurgent Outpost","_task1marker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];

[[west,["_task2","_task"],["Destroy Outpost.","Destroy Insurgent Outpost","_task2marker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];

[[west,["_task3","_task"],["Destroy Outpost.","Destroy Insurgent Outpost","_task3marker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];

private _obj1 = true;
private _obj2 = true;
private _obj3 = true;

while {_obj1 OR _obj2 OR _obj3} do {
	if (({side _x == east && (_x distance getMarkerPos _marker1) < 200} count allUnits) == 0) then {
	_marker1 setMarkerColor "ColorGreen";
	_obj1 = false;
	[["_task1","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];
	};
	
	if (({side _x == east && (_x distance getMarkerPos _marker2) < 200} count allUnits) == 0) then {
	_marker2 setMarkerColor "ColorGreen";
	_obj2 = false;
	[["_task2","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];
	};
	
	if (({side _x == east && (_x distance getMarkerPos _marker3) < 200} count allUnits) == 0) then {
	_marker3 setMarkerColor "ColorGreen";
	_obj3 = false;
	[["_task3","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];
	};
};

[_task,"SUCCEEDED"] call BIS_fnc_taskSetState;


deleteMarker _marker1;
deleteMarker _marker2;
deleteMarker _marker3;
{
	deleteVehicle _x;
} forEach (_pos1 nearObjects 40);
{
	deleteVehicle _x;
} forEach (_pos2 nearObjects 40);
{
	deleteVehicle _x;
} forEach (_pos3 nearObjects 40);
[50, true] remoteExec ["H_fnc_deploypoints",2];
[50, _base, true] remoteExec ["H_fnc_townPoints",2];
