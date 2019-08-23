params ["_location","_position"];

private _locationName = str _location;
private _marker = createMarker [_locationName, _position];
		_marker setMarkerShape "ICON";
		_marker setMarkerType "mil_marker";
		_marker setMarkerColor "ColorRed";
[_location,_position] spawn H_fnc_setuplocation;