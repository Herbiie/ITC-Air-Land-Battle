params ["_base"];

private _roads = _base nearRoads 1500;
private _pos = position (selectRandom _roads);
private _cancel = false;
while {_pos distance _base < 500 OR (_pos distance getMarkerPos "hqmarker" < 1000)} do {
	if (count _roads == 0) exitWith {_cancel = true};
	_roads deleteAt (_roads find _x);
	private _pos = position (selectRandom _roads);
};

if (_cancel) exitWith {
	["No available roads."] remoteExec ["hint",2];
};

private _objType = selectRandom [H_fnc_roadblock2,H_fnc_roadblock1];

[_pos] call _objType;


private _marker = createMarker [format ["Location%1", random 1000], _pos];
_marker setMarkerType "hd_objective";
_marker setMarkerColor "ColorRed";
_marker setMarkerText "Insurgent Roadblock";

private _group1 = createGroup east;
[_group1, _pos] call H_fnc_OPFORSquad;
[leader _group1, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[_group1] call cba_fnc_taskDefend;

private _group2 = createGroup east;
[_group2, _pos] call H_fnc_OPFORSquad;
[leader _group2, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[leader _group2, _pos, 200, 7, "MOVE", "SAFE", "RED", "LIMITED", "COLUMN", "this call CBA_fnc_searchNearby", [3, 6, 9]] call CBA_fnc_taskPatrol; 

private _adjective = selectRandom h_alb_opNameA;
private _noun = selectRandom H_alb_opNameB;

private _opname = format ["Operation %1 %2:", _adjective, _noun];
private _task = _opname;
[west,[_task],["
Situation:<br/>
The insurgents have set up a roadblock nearby and are extracting taxes from civilians. This roadblock must be removed.<br/>
<br/>
Situation Enemy Forces:<br/>
Insurgents have a small force of 4 or 5 men at the roadblock, with a further fireteam strength patrol in the surrounding area.<br/>
<br/>
Situation Friendly Forces:<br/>
As per map.<br/>
<br/>
Mission:<br/>
Destroy insurgent roadblock in order to protect local nationals.<br/>
<br/>
Execution:<br/>
Strike team will move to roadblock and conduct an assault to destroy it.<br/>
<br/>
Service Support:<br/>
As per SOPs.<br/>
<br/>
Command and Signals:<br/>
As per SOPs.<br/>",format ["%1 Destroy Roadblock", _opname],"_taskmarker"],objNull,1,2,true] call BIS_fnc_taskCreate;

waitUntil {({side _x == east && (_x distance getMarkerPos _marker) < 50} count allUnits) == 0};

[_task,"SUCCEEDED"] call BIS_fnc_taskSetState;

deleteMarker _marker;
	missionActive = false;
	missionNameSpace setVariable ["H_alb_deployPoints",(missionNameSpace getVariable "H_alb_deployPoints")+20,true];
	[20, _base, true] remoteExec ["H_fnc_townPoints",2];
{
	_x setvariable ["H_Allyness",(_x getVariable "H_Allyness")+10,true];
} forEach allPlayers;

sleep 300;
{deleteVehicle _x} forEach units _group1;
{deleteVehicle _x} forEach units _group2;