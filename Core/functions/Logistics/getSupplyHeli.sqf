private _pos = getMarkerPos "supplyHeliPoint";
private _nearestHeli = nearestObject [_pos,"Helicopter"];
if (_nearestHeli == objNull) exitWith {objNull};
private _distance = _nearestHeli distance _pos;
if (_distance > 20) exitWith {objNull};
_nearestHeli 