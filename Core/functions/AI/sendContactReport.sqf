params ["_soldier"];

private _markerpos = position _soldier;
private _time = dayTime;
private _time24 = [_time,"HH:MM"] call BIS_fnc_timeToString;
private _callsign = groupID group _soldier;
private _markerText = format ["TIC - CS: %1 - %2", _callsign, _time24];
private _grid = mapGridPosition _soldier;
private _markerName = random 9000;

private _contact = createMarker [format ["%1", _markerName], _markerpos];
_contact setMarkerType "mil_warning";
_contact setMarkerText _markerText;
_contact setMarkerSize [0.5, 0.5];
_contact setMarkerColor "ColorRed";
_contact setMarkerAlpha 0.75;
startingMarkers = startingmarkers + [_contact];
publicVariable "startingMarkers";

[] spawn H_fnc_radio;
[_soldier, format ["Command this is %1, troops in contact at grid reference %2, %1 is engaging, out.", _callsign, _grid]]  remoteExec ["sideChat", 0]; 


private _a = 0;
while {_a < 300} do {
	sleep 5;
	private _group = group _soldier;
	private _leader = leader _group;
	if ({(_leader knowsAbout _x >= 1) && (side _x == east)} count allUnits == 0) then {
		[] spawn H_fnc_radio;
		[_leader, format ["Command this is %1, %1 is no longer in contact, out.", _callsign]]  remoteExec ["sideChat", 0];
		_a = 300;
	};
	_a = _a + 5;
};

deleteMarker _contact;