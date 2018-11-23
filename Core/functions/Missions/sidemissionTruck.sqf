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


private _group1 = [_pos, East, (configfile >> "CfgGroups" >> "Indep" >> "IND_C_F" >> "Infantry" >> "BanditFireTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
[leader _group1, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[_group1] call CBA_fnc_taskDefend;

private _group2 = [_pos, East, (configfile >> "CfgGroups" >> "Indep" >> "IND_C_F" >> "Infantry" >> "BanditFireTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
[leader _group2, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
[leader _group2, _pos, 200] spawn H_fnc_patrol;

_obj = "I_G_Offroad_01_repair_F" createVehicle _pos; 

private _markerpos = [[[position _obj, 190]],[]] call BIS_fnc_randomPos;
private _marker = createMarker [format ["Location%1", random 1000], _markerpos];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerColor "ColorRed";
_marker setMarkerSize [200, 200];

[[west,["_task"],["Intelligence have discovered that the insurgents are using a camp somewhere asa s upply point. They are using a 4x4 utility vehicle. Find it and destroy it.","Find and Destroy Insurgent Utility Vehicle","_taskmarker"],objNull,1,2,true], BIS_fnc_taskCreate] remoteExec ["call",0];

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