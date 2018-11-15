
openMap [true, false];
addMissionEventHandler ["MapSingleClick", {
	params ["_units", "_pos", "_alt", "_shift"];
	removeAllMissionEventHandlers "MapSingleClick";
	[createFOB, false] remoteExec ["=",2];
	private _marker = createMarker ["TempMarker", _pos];
	_position = getMarkerPos _marker;
	deleteMarker _marker;
	private _fobpos = [_position, 0, 100, 25, 0, 0.3, 0, [], [[0,0,0],[0,0,0]]]  call BIS_fnc_findSafePos;
    private _nearRoad = [_fobpos, 35] call BIS_fnc_nearestRoad;
	while {!isNull _nearRoad} do {
		_fobpos = [_position, 0, 100, 25, 0, 0.3, 0, [], [[0,0,0],[0,0,0]]]  call BIS_fnc_findSafePos;
		_nearRoad = [_fobpos, 35] call BIS_fnc_nearestRoad;
	};
	
	if (_fobpos isEqualTo [0,0,0]) then { 
		["This location is not valid, either due to objects in the way or a slope."] remoteExec ["hint",0];
			[]  call H_fnc_newFOB;
	} else {
	_fobpos remoteExec ["H_fnc_spawnFOB",2];
	};
	}];
