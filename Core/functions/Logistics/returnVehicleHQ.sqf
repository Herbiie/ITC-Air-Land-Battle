params ["_vehicle"];
private _heli = [] call H_fnc_getSupplyHeli;
_heli allowDammage false;
_heli setVariable ["H_ready",false,true];
private _group = createVehicleCrew _heli;
{
	_x allowDammage false;
} forEach units _group;
_group setGroupId ["Dustoff 1"];
private _class = typeOf _vehicle;
private _name = getText (configFile >> "CfgVehicles" >> _class >> "displayName");
private _pos = position _vehicle;
private _grid = mapGridPosition _pos;
[leader _group,format ["Command this is Dustoff 1, recovering %1 from grid %2, out.",_name,_grid]] remoteExec ["H_fnc_sideChat",0];
[_heli,_group] spawn H_fnc_resupplyHeliTracker;
private _fuel = fuel _vehicle;
_vehicle setFuel 0;
private _wp1 = _group addWaypoint [_pos,0];
_wp1 setWaypointType "MOVE";
_wp1 setWaypointBehaviour "CARELESS";
_wp1 setWaypointStatements ["true","
	vehicle this setVariable ['H_ready',true,true];
"];
_group setCurrentWaypoint _wp1;

waitUntil {_heli getVariable "H_ready"};

_heli setSlingLoad _vehicle;
private _wp2 = _group addWaypoint [getMarkerPos "motorpool",1];
_wp2 setWaypointType "MOVE";
_wp2 setWaypointBehaviour "CARELESS";
_wp2 setWaypointStatements ["true","
	[this] spawn h_fnc_release;
"];
_group setCurrentWaypoint _wp2;

[leader _group,"Command this is Dustoff 1, returning to base out."] remoteExec ["H_fnc_sideChat",0];

waitUntil {isNull (getSlingLoad _heli)};
_vehicle allowDammage false;
waitUntil {((getPosATL _vehicle # 2 < 2)) || (speed _vehicle == 0)};
_vehicle setVehiclePosition [getMarkerPos "motorpool", [], 40, "NONE"];
_vehicle allowDammage true;
_vehicle setFuel _fuel;

_heli setVehiclePosition [getMarkerPos "supplyHelIPoint", [], 0, "NONE"];
_heli setFuel 1;
_heli allowDammage true;
[leader _group,"Command this is Dustoff 1, returned to base, standing by for further tasking, out."] remoteExec ["H_fnc_sideChat",0];
sleep 1;
{
	_heli deleteVehicleCrew _x;
} forEach crew _heli;
sleep 1;
deleteGroup _group;
_heli setFuel 1;
_heli engineOn false;

["Notification",["Vehicle Returned",format ["%1 has been returned to the motor pool.", _name]]] remoteExec ["BIS_fnc_showNotification",0];

["Notification",["Transit Complete","Helicopter transit is now complete. Supply helicopter ready for tasking."]] remoteExec ["BIS_fnc_showNotification",0];