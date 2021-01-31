params ["_fobpos"];

	
		["fobtask"] call BIS_fnc_deleteTask;
		_callsign = H_alb_platoons select count H_alb_fobs;
		private _fobName = format ["FOB %1", _callsign];
		private _fobmarker = createMarker [format ["%1Marker",_fobName], _fobpos];
		_fobmarker setMarkerShape "ICON";
		_fobmarker setMarkerType "mil_triangle";
		_fobmarker setMarkerColor "ColorBlufor";
		_fobmarker setMarkerText _fobName;
		startingMarkers pushBack _fobmarker;
		
		private _task = format ["setup%1",count H_alb_fobs];
		private _task1 = format ["setup%11",count H_alb_fobs];
		[west,[_task],[format ["Set Up %1", _fobname],format ["Set Up %1", _fobname],_fobmarker],objNull,1,2,true] call BIS_fnc_taskCreate;
		[west,[_task1,_task],[format ["Move supplies to %1", _fobname],format ["Move supplies to %1", _fobname],_fobmarker],objNull,1,2,true] call BIS_fnc_taskCreate;
		
		["Notification",["PB Supplies Ready",format ["Supplies for %1 spawned at %2.", _fobname, mapGridPosition getMarkerPos "carspawn"]]] remoteExec ["BIS_fnc_showNotification",0];
				
		private _crate = H_supplyVehicle createVehicle getMarkerPos "carspawn";
		private _smoke = "SmokeShellBlue_Infinite" createVehicle _fobpos;
		
		waitUntil {((_crate distance _fobpos) < 5) && (speed _crate < 3)};
		{
			_x action ["Eject",vehicle _x];
		} forEach crew _crate;
		
		deleteVehicle _smoke;
		deleteVehicle _crate;
		
		[_task1,"SUCCEEDED"] call BIS_fnc_taskSetState;
		
		[_fobpos, 35] call H_fnc_cones;
		
		private _task2 = format ["setup%12",count H_alb_fobs];
		[west,[_task2,_task],["Move away from the building site.","Move away from the building site.",_fobmarker]] call BIS_fnc_taskCreate;
		
		
		waitUntil {({(_x distance _fobpos) < 36} count allPlayers) == 0};
		
		[_task2,"SUCCEEDED"] call BIS_fnc_taskSetState;
		
		[_fobpos] call H_fnc_fob;
		
		{
			if ((_x distance _fobpos) < 40) then {
				deleteVehicle _x;
			};
		} forEach allMissionObjects "RoadBarrier_small_F";
		
		
		private _group1 = createGroup WEST;
		[_group1, _fobMarker, _fobname, false] call H_fnc_BLUFORSquad;
		
		{
			_x disableai "path";
		} forEach units _group1;
		private _positions = [];
		{
			if ((_x distance _fobpos) < 50) then {
				private _pos1 = [(_x getRelPos [2.7108,229.554]) # 0,(_x getRelPos [2.7108,229.554]) # 1,4.34548];
				_positions pushBack _pos1;
				private _pos2 = [(_x getRelPos [2.82469,124.161]) # 0,(_x getRelPos [2.82469,124.161]) # 1,4.34548];
				_positions pushBack _pos2;				
			};
		} forEach allMissionObjects "Land_Cargo_Patrol_V1_F";
		{
			private _unit = (units _group1) # _forEachIndex;
			_unit setPos _x;
			_unit setUnitPos "UP";
		} forEach _positions;
		
		
		private _group2 = createGroup WEST;
		[_group2, _fobMarker, format ["%1'1", _callsign], true] call H_fnc_BLUFORFireTeam;
		private _group3 = createGroup WEST;
		[_group3, _fobMarker, format ["%1'2", _callsign], true] call H_fnc_BLUFORFireTeam;
		private _group5 = createGroup WEST;
		[_group5, _fobMarker, format ["%1'3", _callsign], true] call H_fnc_BLUFORFireTeam;
		
		if (missionNameSpace getVariable ["H_itcLandEnabled",false]) then {
			private _group4 = createGroup west;
			private _radar1 = "itc_land_COBRA01" createVehicle [(_fobpos select 0)+10.3994, (_fobpos select 1)+10.8008, 0];
			createVehicleCrew _radar1;
			(crew _radar1) joinSilent _group4;
			_radar1 setDir 217.532;
			private _radar2 = "itc_land_COBRA01" createVehicle [(_fobpos select 0)+19, (_fobpos select 1)-11.3994, 0];
			createVehicleCrew _radar2;
			(crew _radar2) joinSilent _group4;
			_radar2 setDir 302.662;
			private _radar3 = "itc_land_COBRA01" createVehicle [(_fobpos select 0)-16.6006, (_fobpos select 1)-11.7998, 0];
			createVehicleCrew _radar3;
			(crew _radar3) joinSilent _group4;
			_radar3 setDir 45.939;
			private _radar4 = "itc_land_COBRA01" createVehicle [(_fobpos select 0)-24, (_fobpos select 1)+9.40039, 0];
			createVehicleCrew _radar4;
			(crew _radar4) joinSilent _group4;
			_radar4 setDir 111.124;
			_radar1 allowDamage false;
			_radar2 allowDamage false;
			_radar3 allowDamage false;
			_radar4 allowDamage false;
			private _siren = "itc_land_loudspeakers" createVehicle _fobpos;
			_radar1 enableSimulation false;
			_radar2 enableSimulation false;
			_radar3 enableSimulation false;
			_radar4 enableSimulation false;
			sleep 2;		
			_radar1 enableSimulation true;
			_radar2 enableSimulation true;
			_radar3 enableSimulation true;
			_radar4 enableSimulation true;
		};
		
		
		//player setPos _fobpos;
		private _respawn = [west,_fobmarker,_fobname] call BIS_fnc_addRespawnPosition;
		
		_fob = ["FOB", _fobname, _fobpos, _fobmarker, _group1, _group2, _group3];
		H_alb_fobs pushBack _fob;
		
		private _cogroup = createGroup west;
		private _copos = [_fobpos, 0, 3, 2, 0, 1, 0, [], [0,0,0]]  call BIS_fnc_findSafePos;
		private _co = _coGroup createUnit ["B_officer_F", _copos, [], 0, "NONE"];
		[_co, missionNameSpace getVariable "H_aiFaction", "OF"] call tb3_fnc_loadout;
		_co disableai "move";
		_co allowDamage false;
		[_co,true] remoteExec ["H_fnc_addCOOptions",0];
		private _box = "B_supplyCrate_F" createVehicle _fobpos;
		clearItemCargoGlobal _box;
		clearMagazineCargoGlobal _box;
		clearWeaponCargoGlobal _box;
		clearBackpackCargoGlobal _box;
		[_box] call H_fnc_supplybox; 
		
		
		
		if ("FOBAttacks" call BIS_fnc_getParamValue == 1) then {
			[_fobmarker] spawn H_fnc_fobattacks;
			[_fobmarker, _fobname] spawn H_fnc_specialmissions;
		};
		
		[_task,"SUCCEEDED"] call BIS_fnc_taskSetState;