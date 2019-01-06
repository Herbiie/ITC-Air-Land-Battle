params ["_base"];
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

_wp = _group1 addWaypoint [getMarkerPos _base, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "AWARE";
_wp setWaypointCombatMode "RED";
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "NORMAL";

waitUntil {
	count units _group1 == 0;
};
