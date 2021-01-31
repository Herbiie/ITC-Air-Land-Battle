params ["_position","_time","_attacks"];

private _a = 0;
while {_a < _attacks} do {
	_a = _a + 1;
	private _attackType = selectRandom ["Fireteam","Fireteam","Fireteam","Mortar"];
	switch (_attackType) do {
		case "Fireteam": {
			private _pos = [_position, 200, 500, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
			private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
			private _closeObjects = count nearestObjects [_pos, [], 20];
			private _nBuilding = _pos distance (nearestBuilding _pos);
			while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
				_pos = [_position, 200, 500, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
				_nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
				_closeObjects = count nearestObjects [_pos, [], 20];
				_nBuilding = _pos distance (nearestBuilding _pos);
			};

			private _group1 = createGroup east;
			[_group1, _pos] call H_fnc_OPFORFireteam; 
			[leader _group1, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
			_wp = _group1 addWaypoint [_position, 0];
			_wp setWaypointType "MOVE";
			_wp setWaypointBehaviour "AWARE";
			_wp setWaypointCombatMode "RED";
			_wp setWaypointFormation "WEDGE";
			_wp setWaypointSpeed "NORMAL";
			
			private _pos2 = [_position, 200, 500, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
			private _nearRoad = [_pos2, 50] call BIS_fnc_nearestRoad;
			private _closeObjects = count nearestObjects [_pos2, [], 20];
			private _nBuilding = _pos2 distance (nearestBuilding _pos2);
			while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
				_pos2 = [_position, 200, 500, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
				_nearRoad = [_pos2, 50] call BIS_fnc_nearestRoad;
				_closeObjects = count nearestObjects [_pos2, [], 20];
				_nBuilding = _pos2 distance (nearestBuilding _pos2);
			};

			private _group2 = createGroup east;
			[_group2, _pos] call H_fnc_OPFORFireteam; 
			[leader _group2, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
			_wp2 = _group2 addWaypoint [_position, 0];
			_wp2 setWaypointType "MOVE";
			_wp2 setWaypointBehaviour "AWARE";
			_wp2 setWaypointCombatMode "RED";
			_wp2 setWaypointFormation "WEDGE";
			_wp2 setWaypointSpeed "NORMAL";
			
			private _pos3 = [_position, 200, 500, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
			private _nearRoad = [_pos3, 50] call BIS_fnc_nearestRoad;
			private _closeObjects = count nearestObjects [_pos3, [], 20];
			private _nBuilding = _pos3 distance (nearestBuilding _pos3);
			while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
				_pos3 = [_position, 200, 500, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
				_nearRoad = [_pos3, 50] call BIS_fnc_nearestRoad;
				_closeObjects = count nearestObjects [_pos3, [], 20];
				_nBuilding = _pos3 distance (nearestBuilding _pos3);
			};

			private _group3 = createGroup east;
			[_group3, _pos] call H_fnc_OPFORFireteam; 
			[leader _group3, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
			_wp3 = _group3 addWaypoint [_position, 0];
			_wp3 setWaypointType "MOVE";
			_wp3 setWaypointBehaviour "AWARE";
			_wp3 setWaypointCombatMode "RED";
			_wp3 setWaypointFormation "WEDGE";
			_wp3 setWaypointSpeed "NORMAL";
		};
		
		case "Mortar": {
			private _tempMarker = createMarker ["tempMarker",_position];
			[_tempMarker] spawn H_fnc_mortarAttack;
			[] spawn {
				sleep 30;
				deleteMarker "tempMarker";
			};
		};
		
		
	};
	sleep _time + random 60;

}; 