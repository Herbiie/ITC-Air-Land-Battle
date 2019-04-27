params ["_base"];

locationPositions = [];
	
{
	private _distance = (_x select 1)  distance _base;
	locationPositions pushback [_distance, _x];
} forEach H_alb_locations;
	
locationPositions sort true;
	
private _nearestLocation = locationPositions select 0;
private _locationArray = _nearestLocation select 1;
private _position = _locationArray select 1;

private _pos = [_position, 0, 300, 0, 0, 45, 0]  call BIS_fnc_findSafePos;
private _nBuilding = _pos distance (nearestBuilding _pos);

while {(_nBuilding > 5)} do {
	_pos = [_position, 0, 300, 0, 0, 45, 0]  call BIS_fnc_findSafePos;
	_nBuilding = _pos distance (nearestBuilding _pos);
};

private _adjective = selectRandom h_alb_opNameA;
private _noun = selectRandom H_alb_opNameB;
private _opname = format ["Operation %1 %2:", _adjective, _noun];
private _task = _opname;
[west,[_task],["Situation:<br/>
Insurgents are now occupying the area of a local town, highlighted in red on the map.<br/>
<br/>
Situation Enemy Forces:<br/>
The insurgents are in squad + strength.<br/>
<br/>
Situation Friendly Forces:<br/>
As per map.<br/>
<br/>
Mission:<br/>
Clear the red area and destroy any insurgents present.<br/>
<br/>
Execution:<br/>
Strike team will insert near objective and destroy enemy forces in the shaded area.<br/>
<br/>
Service Support:<br/>
As per SOPs.<br/>
<br/>
Command and Signals:<br/>
As per SOPs.<br/>",format ["%1 Clear Area", _opname],"_taskmarker"],objNull,1,2,true] call BIS_fnc_taskCreate;


private _group1 = createGroup east;
[_group1, _pos] call H_fnc_OPFORSquad;
[leader _group1, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[_group1] call CBA_fnc_taskDefend;
private _group2 = createGroup east;
private _secondTeam = selectRandom [H_fnc_OPFORSquad,H_fnc_OPFORFireteam];
[_group2, _pos] call _secondTeam;
[leader _group2, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[_group2] call CBA_fnc_taskDefend;

private _marker = createMarker [format ["Location%1", random 1000], _pos];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerColor "ColorRed";
_marker setMarkerSize [50, 50];
_marker setMarkerAlpha 0.75;
private _marker2 = createMarker [format ["Location%1", random 1000], _pos];
_marker2 setMarkerType "hd_objective";
_marker2 setMarkerColor "ColorRed";
_marker2 setMarkerText "Insurgent Control";

waitUntil {({side _x == EAST && (_x distance getMarkerPos _marker2) < 50} count allUnits) == 0};

[_task,"SUCCEEDED"] call BIS_fnc_taskSetState;
deleteMarker _marker;
deleteMarker _marker2;
[20, true] remoteExec ["H_fnc_deploypoints",2];
[20, _base, true] remoteExec ["H_fnc_townPoints",2];
{
	_x setvariable ["H_Allyness",(_x getVariable "H_Allyness")+10,true];
} forEach allPlayers;
