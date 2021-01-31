params ["_location","_position"];

private _marker = createMarker [_location, _position];
		_marker setMarkerShape "ICON";
		_marker setMarkerType "mil_marker";
		_marker setMarkerColor "ColorRed";
[_location,_position] spawn H_fnc_setuplocation;