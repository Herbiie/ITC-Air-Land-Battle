params ["_base","_fobname"];

	[] spawn H_fnc_radio;
	[command, "All units this is command, Priority message, break."]  remoteExec ["sideChat", 0];
	sleep 3;
	[command, "I continue, a large force of insurgents is assembling with the intent to overrun one of our FOBs, break."]  remoteExec ["sideChat", 0];
	sleep 3;
	[command, format ["I continue, the insurgents' most likely target is %1, break.", _fobname]]  remoteExec ["sideChat", 0];
	sleep 3;
	[command, format ["I continue, all available units are to move to %1 ASAP to assist with the defence, break.", _fobname]]  remoteExec ["sideChat", 0];
	sleep 3;
	[command, "I continue, the insurgent attack is expected in 15 minutes [real world], all units acknowledge."]  remoteExec ["sideChat", 0];
	sleep 3;
	
	_attackTime = daytime + (0.25*("TimeAcceleration" call BIS_fnc_getParamValue));
	_attackTime24 = [_attacktime,"HH:MM"] call BIS_fnc_timeToString;
	
	
	[[west,["_task1"],[format [format ["A large force of insurgents is gathering to attack %1. All units are to return to base to assist with the defence. The attack is expected at %1", _fobname], _attackTime24],"Defend Camp Rogain","_taskmarker"],objNull,1,2,true], BIS_fnc_taskCreate] remoteExec ["call",0];
	
	//sleep 810;
	private _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
    _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};

private _group1 = createGroup east;
[_group1, _pos] call H_fnc_OPFORFireteam; 
[leader _group1, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
_wp = _group1 addWaypoint [getMarkerPos _base, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "AWARE";
_wp setWaypointCombatMode "RED";
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "NORMAL";
	
	private _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
    _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};

private _group2 = createGroup east;
[_group2, _pos] call H_fnc_OPFORSquad; 
[leader _group2, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
_wp = _group2 addWaypoint [getMarkerPos _base, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "AWARE";
_wp setWaypointCombatMode "RED";
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "NORMAL";
	
	private _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
    _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};

private _group3 = createGroup east;
[_group3, _pos] call H_fnc_OPFORSquad; 
[leader _group3, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
_wp = _group3 addWaypoint [getMarkerPos _base, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "AWARE";
_wp setWaypointCombatMode "RED";
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "NORMAL";

sleep 300;
	
	private _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
    _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};

private _group4 = createGroup east;
[_group4, _pos] call H_fnc_OPFORSquad; 
[leader _group4, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
_wp = _group4 addWaypoint [getMarkerPos _base, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "AWARE";
_wp setWaypointCombatMode "RED";
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "NORMAL";
	
	private _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
    _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};

private _group5 = createGroup east;
[_group5, _pos] call H_fnc_OPFORSquad; 
[leader _group5, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
_wp = _group5 addWaypoint [getMarkerPos _base, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "AWARE";
_wp setWaypointCombatMode "RED";
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "NORMAL";
	
	private _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
    _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};
private _group6 = createGroup east;
[_group6, _pos] call H_fnc_OPFORSquad; 
[leader _group6, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;

_wp = _group6 addWaypoint [getMarkerPos _base, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "AWARE";
_wp setWaypointCombatMode "RED";
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "NORMAL";

sleep 600;
	
	private _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
    _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};
private _group7 = createGroup east;
[_group7, _pos] call H_fnc_OPFORSquad; 
[leader _group7, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;

_wp = _group7 addWaypoint [getMarkerPos _base, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "AWARE";
_wp setWaypointCombatMode "RED";
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "NORMAL";
	
	private _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
    _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};

private _group8 = createGroup east;
[_group8, _pos] call H_fnc_OPFORSquad; 
[leader _group8, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
_wp = _group8 addWaypoint [getMarkerPos _base, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "AWARE";
_wp setWaypointCombatMode "RED";
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "NORMAL";
	
	private _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
    _pos = [getMarkerPos _base, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};

private _group9 = createGroup east;
[_group9, _pos] call H_fnc_OPFORSquad; 
[leader _group9, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
_wp = _group9 addWaypoint [getMarkerPos _base, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "AWARE";
_wp setWaypointCombatMode "RED";
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "NORMAL";



waitUntil {
	count (units _group1 + units _group2 + units _group3 + units _group4  + units _group5 + units _group6 + units _group7 + units _group8 + units _group9) < 10;
};

	sleep 3;
	[] spawn H_fnc_radio;
	[command, "All units,the insurgent force is severely weakened, recommend conducting clearance patrols of the surrounding area, out."]  remoteExec ["sideChat", 0];
	[["_task1","SUCCEEDED"], BIS_fnc_taskSetState] remoteExec ["call",0];
	sleep 1;
	[[west,["_task2"],["There are only few insurgents left, push into the surrounding area and clear them out.","Conduct Clearance Patrols","_taskmarker"],objNull,1,2,true], BIS_fnc_taskCreate] remoteExec ["call",0];

waitUntil {
	count units _group1 == 0;
	count units _group2 == 0;
	count units _group3 == 0;
	count units _group4 == 0;
	count units _group5 == 0;
	count units _group6 == 0;
	count units _group7 == 0;
	count units _group8 == 0;
	count units _group9 == 0;
};

	sleep 3;
	[["_task2","SUCCEEDED"], BIS_fnc_taskSetState] remoteExec ["call",0];
	[] spawn H_fnc_radio;
	[command, format ["All units, %1 is now secure, return to normal duties, out.", _fobname]]  remoteExec ["sideChat", 0];
	missionNameSpace setVariable ["H_alb_deployPoints",(missionNameSpace getVariable "H_alb_deployPoints")+40,true];
	[40, getMarkerPos _base, true] remoteExec ["H_fnc_townPoints",2];


