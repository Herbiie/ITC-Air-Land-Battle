// Random Patrols of Randomness!

params ["_unit","_position","_radius"];

private _group = group _unit;
private _pos = [_position, 10, _radius, 2, 0, 1, 0, [], [0,0,0]]  call BIS_fnc_findSafePos;
sleep 1;

private _wp =_group addWaypoint [_pos, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "SAFE";
_wp setWaypointCombatMode "RED";
_wp setWaypointFormation "COLUMN";
_wp setWaypointSpeed "LIMITED";
_wp setWaypointStatements ["true", format ["[this, %1, %2] spawn H_fnc_patrol; deleteMarkerLocal 'startpos'", _position, _radius]];

