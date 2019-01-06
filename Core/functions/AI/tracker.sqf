params ["_unit"];

private _group = group _unit;
private _callsign = groupID group _unit;
private _side = side _unit;

sleep 0.1;
private _marker = createmarker [_callsign, _unit];
switch (_side) do {
case WEST: {_marker setMarkerType "b_inf"};
case INDEPENDENT: {_marker setMarkerType "n_inf"};
};

private _size = format ["%1size", _callsign];
private _unitSize = createmarker [_size, _unit];
_unitsize setMarkerType "group_1";
_unitsize setMarkerText _callsign;

while {count units _group > 0} do {
	sleep 0.5;
	_marker setMarkerPos position leader _group;
	_unitsize setMarkerPos position  leader _group;
};

deleteMarker _marker;
deleteMarker _unitsize;