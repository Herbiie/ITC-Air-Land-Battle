params ["_position","_time","_attacks"];

sleep _time/3;
private _a = 0;
while {_a < _attacks} do {
	_a = _a + 1;
	private _attackType = selectRandom ["Fireteam","Squad","Mortar"];
	switch (_attackType) do {
		case "Fireteam": {
			private _pos = [_position, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
			private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
			private _closeObjects = count nearestObjects [_pos, [], 20];
			private _nBuilding = _pos distance (nearestBuilding _pos);
			while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
				_pos = [_position, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
				_nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
				_closeObjects = count nearestObjects [_pos, [], 20];
				_nBuilding = _pos distance (nearestBuilding _pos);
			};

			private _group = [_pos, East, (configfile >> "CfgGroups" >> "Indep" >> "IND_C_F" >> "Infantry" >> "BanditFireTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
			[leader _group, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
			_wp = _group addWaypoint [_position, 0];
			_wp setWaypointType "MOVE";
			_wp setWaypointBehaviour "AWARE";
			_wp setWaypointCombatMode "RED";
			_wp setWaypointFormation "WEDGE";
			_wp setWaypointSpeed "NORMAL";
		};
		
		case "Squad": {
			private _pos = [_position, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
			private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
			private _closeObjects = count nearestObjects [_pos, [], 20];
			private _nBuilding = _pos distance (nearestBuilding _pos);
			while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
				_pos = [_position, 300, 600, 5, 0, 20, 0]  call BIS_fnc_findSafePos;
				_nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
				_closeObjects = count nearestObjects [_pos, [], 20];
				_nBuilding = _pos distance (nearestBuilding _pos);
			};

			private _group = [_pos, East, (configfile >> "CfgGroups" >> "Indep" >> "IND_C_F" >> "Infantry" >> "BanditCombatGroup"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
			[leader _group, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
			_wp = _group addWaypoint [_position, 0];
			_wp setWaypointType "MOVE";
			_wp setWaypointBehaviour "AWARE";
			_wp setWaypointCombatMode "RED";
			_wp setWaypointFormation "WEDGE";
			_wp setWaypointSpeed "NORMAL";
		};
		
		case "Mortar": {
			private _pos = [_position, 500, 1000, 5, 0, 10, 0]  call BIS_fnc_findSafePos;
			private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
			private _closeObjects = count nearestObjects [_pos, [], 20];
			private _nBuilding = _pos distance (nearestBuilding _pos);
			while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
				_pos = [_position, 500, 1000, 5, 0, 10, 0]  call BIS_fnc_findSafePos;
				_nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
				_closeObjects = count nearestObjects [_pos, [], 20];
				_nBuilding = _pos distance (nearestBuilding _pos);
			};
			private _mortar = "I_Mortar_01_F" createVehicle _pos;
			createVehicleCrew _mortar;
			private _group = createGroup east;
			(crew _mortar) joinSilent _group;
			sleep 3;
			private _target = [[[_position, 150]],[[_position, 30]]] call BIS_fnc_randomPos;
			private _rounds = round random 3;
			_mortar doArtilleryFire [_target, "8Rnd_82mm_Mo_shells", _rounds];
			
			sleep _time;
			deleteVehicle _mortar;
		};
		
		
	};
	sleep _time + random 50;

}; 