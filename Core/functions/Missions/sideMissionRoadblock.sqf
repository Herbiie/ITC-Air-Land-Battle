params ["_base"];

private _roads = _base nearRoads 1500;
private _pos = position (selectRandom _roads);
while {_pos distance _base < 500 OR (_pos distance getMarkerPos "marker_0" < 500)} do {
	private _roads = _base nearRoads 1500;
	private _pos = position (selectRandom _roads);
};

private _objType = selectRandom [H_fnc_roadblcok2,H_fnc_roadblock1];

[_pos] call _objType;


private _marker = createMarker [format ["Location%1", random 1000], _pos];
_marker setMarkerType "hd_objective";
_marker setMarkerColor "ColorRed";
_marker setMarkerText "Insurgent Roadblock";

private _group1 = [_pos, East, (configfile >> "CfgGroups" >> "Indep" >> "IND_C_F" >> "Infantry" >> "BanditFireTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
[leader _group1, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[_group1] call CBA_fnc_taskDefend;

private _group2 = [_pos, East, (configfile >> "CfgGroups" >> "Indep" >> "IND_C_F" >> "Infantry" >> "BanditFireTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
[leader _group2, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[leader _group2, _pos, 200] spawn H_fnc_patrol; 

[[west,["_task"],["An insurgent outpost has been identified - Destroy it!","Destroy Outpost","_taskmarker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];

waitUntil {({side _x == east && (_x distance getMarkerPos _marker) < 200} count allUnits) == 0};

[["_task","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];

deleteMarker _marker;
	missionActive = false;
	[20, true] remoteExec ["H_fnc_deploypoints",2];
	[20, _base, true] remoteExec ["H_fnc_townPoints",2];

sleep 300;
{deleteVehicle _x} forEach units _group1;
{deleteVehicle _x} forEach units _group2;