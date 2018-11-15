// Random Patrols of Randomness! But now on roads...

params ["_unit","_position","_radius"];

private _group = group _unit;
sleep 1;
private _marker = createMarkerLocal ["startpos", _position];
_marker setMarkerTypeLocal "empty";

private _roads = _position nearRoads _radius;
private _pos = position (selectRandom _roads);


private _wp =_group addWaypoint [_pos, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "SAFE";
_wp setWaypointCombatMode "RED";
_wp setWaypointFormation "COLUMN";
_wp setWaypointSpeed "LIMITED";
_wp setWaypointStatements ["true", "[this, getMarkerPos 'startpos', parseNumber format ['%1',_radius]] spawn H_fnc_patrolOnRoad"];

deleteMarkerLocal _marker;
