	params ["_base"];
	
	missionActive = true;
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


private _objType = selectRandom [(configfile >> "CfgGroups" >> "Empty" >> "Guerrilla" >> "Camps" >> "CampA"),(configfile >> "CfgGroups" >> "Empty" >> "Guerrilla" >> "Camps" >> "CampB"),(configfile >> "CfgGroups" >> "Empty" >> "Guerrilla" >> "Camps" >> "CampC")];

private _objective = [_pos, sideEmpty, _objType,[],[],[],[],[],random 360] call BIS_fnc_spawnGroup;

private _marker = createMarker [format ["Location%1", random 1000], _pos];
_marker setMarkerType "hd_objective";
_marker setMarkerColor "ColorRed";
_marker setMarkerText "Hostage Location";

private _group1 = [_pos, East, (configfile >> "CfgGroups" >> "Indep" >> "IND_C_F" >> "Infantry" >> "BanditFireTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
[leader _group1, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;

[_group1] call CBA_fnc_taskDefend;

private _group2 = [_pos, East, (configfile >> "CfgGroups" >> "Indep" >> "IND_C_F" >> "Infantry" >> "BanditFireTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
[leader _group2, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;

[leader _group2, _pos, 200] spawn H_fnc_patrol;

private _hostageGroup = createGroup civilian;
private _hostage = _hostageGroup createUnit ["C_journalist_F", _pos, [], 0, "NONE"];
[_hostage, true] call ACE_captives_fnc_setHandcuffed;

[west,["_task"],["A journalist has been taken hostage by the insurgents. Rescue him and take him back to your base.","Rescue Hostage","_taskmarker"],objNull,1,2,true] call BIS_fnc_taskCreate;

private _loop = true;
while {_loop} do {
	if (!alive _hostage) then {
		["_task","FAILED"] call BIS_fnc_taskSetState;
		deleteMarker _marker;
		_loop = false;
	};

	if (_hostage distance _base <50) then {
		["_task","SUCCEEDED"] call BIS_fnc_taskSetState;
		deleteMarker _marker;
		_loop = false;
		deleteVehicle _hostage;
	};
	sleep 3;
};
	missionActive = false;
	[20, true] remoteExec ["H_fnc_deploypoints",2];
	[20, _base, true] remoteExec ["H_fnc_townPoints",2];

sleep 300;
{deleteVehicle _x} forEach units _objective;
{deleteVehicle _x} forEach units _group1;
{deleteVehicle _x} forEach units _group2;