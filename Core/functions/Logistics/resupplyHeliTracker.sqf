params ["_heli","_group"];
private _marker = createMarker ["heliMarker",getPos _heli];
_marker setMarkerType "b_air";
private _unitSize = createmarker ["heliMarkerSize", getPos _heli];
_unitsize setMarkerType "group_1";
_unitsize setMarkerText "Dustoff 1";
while {count units _group > 0} do {
	_marker setMarkerPos position _heli;
	_unitsize setMarkerPos position _heli;
	sleep 0.5;
};

deleteMarker _marker;
deleteMarker _unitsize;