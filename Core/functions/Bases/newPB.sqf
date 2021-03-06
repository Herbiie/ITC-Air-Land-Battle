if ((missionNameSpace getVariable "H_alb_deploypoints") >= 100) then {
	openMap [true, false];
	addMissionEventHandler ["MapSingleClick", {
		params ["_units", "_pos", "_alt", "_shift"];
		removeAllMissionEventHandlers "MapSingleClick";
		createPB = false;
		publicVariable "createPB";
		private _marker = createMarker ["TempMarker", _pos];
		_position = getMarkerPos _marker;
		deleteMarker _marker;
		private _fobpos = [_position, 0, 100, 35, 0, 0.3, 0, [], [[0,0,0],[0,0,0]]]  call BIS_fnc_findSafePos;
		private _nearRoad = [_fobpos, 35] call BIS_fnc_nearestRoad;
		while {!isNull _nearRoad} do {
			_fobpos = [_position, 0, 100, 35, 0, 0.3, 0, [], [[0,0,0],[0,0,0]]]  call BIS_fnc_findSafePos;
			_nearRoad = [_fobpos, 35] call BIS_fnc_nearestRoad;
		};
		
		if (_fobpos isEqualTo [0,0,0]) then { 
			hint "This location is not valid, either due to objects or roads in the way, or a slope.";
			[]  call H_fnc_newPB;
		} else {
			[_fobpos] remoteExec ["H_fnc_spawnPB",2];
			missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")-100,true];
			["Notification",["PB Deployed",format ["PB ready for deployment at %1.<br/>%2 Deployment Points Remaining.", mapGridPosition _fobpos, (missionNameSpace getVariable "H_alb_deploypoints")]]] remoteExec ["BIS_fnc_showNotification",0];
			openMap [false, false];
			};
		}];
} else {
	hint "Not enough points.";
};