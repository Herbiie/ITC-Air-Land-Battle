params ["_fobpos"];

	
		["pbtask"] call bis_fnc_deleteTask;
		_callsign = H_alb_platoons select count H_alb_fobs;		
		private _fobName = format ["PB %1", _callsign];
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
		
		[_fobpos, 20] call H_fnc_cones;
		
		private _task2 = format ["setup%12",count H_alb_fobs];
		[west,[_task2,_task],["Move away from the building site.","Move away from the building site.",_fobmarker]] call BIS_fnc_taskCreate;
		
		
		waitUntil {({(_x distance _fobpos) < 21} count allPlayers) == 0};
		
		[_task2,"SUCCEEDED"] call BIS_fnc_taskSetState;
		
		[_fobpos] call H_fnc_pb;
		
		{
			if ((_x distance _fobpos) < 25) then {
				deleteVehicle _x;
			};
		} forEach allMissionObjects "RoadBarrier_small_F";
		
		
		private _group1 = createGroup WEST;
		[_group1, _fobmarker, _fobname, false] call H_fnc_BLUFORFireTeam;
		//[getMarkerPos _fobmarker, nil, units _group1, 30, 0, false, true] call ace_ai_fnc_garrison;
		{
			_x disableai "path";
		} forEach units _group1;
		private _positions = [];
		{
			if ((_x distance _fobpos) < 35) then {
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
		[_group2, _fobmarker, format ["%1'1", _callsign], true] call H_fnc_BLUFORFireTeam;
		
		
		private _respawn = [west,_fobmarker,_fobname] call BIS_fnc_addRespawnPosition;
		
		_fob = ["PB", _fobname, _fobpos, _fobmarker, _group1, _group2];
		H_alb_fobs pushBack _fob;
		
		if (missionNameSpace getVariable ["H_itcLandEnabled",false]) then {
			private _group4 = createGroup west;
			private _radar1 = "itc_land_COBRA01" createVehicle [(_fobpos select 0)+20.2998, (_fobpos select 1)+28.4004, 0];
			createVehicleCrew _radar1;
			(crew _radar1) joinSilent _group4;
			_radar1 setDir 213.751;
			private _radar2 = "itc_land_COBRA01" createVehicle [(_fobpos select 0)-20.5996, (_fobpos select 1)+31.2012, 0];
			createVehicleCrew _radar2;
			(crew _radar2) joinSilent _group4;
			_radar2 setDir 147.687;
			private _radar3 = "itc_land_COBRA01" createVehicle [(_fobpos select 0)-21.5996, (_fobpos select 1)-27.5, 0];
			createVehicleCrew _radar3;
			(crew _radar3) joinSilent _group4;
			_radar3 setDir 36.356;
			private _radar4 = "itc_land_COBRA01" createVehicle [(_fobpos select 0)+16.7002, (_fobpos select 1)-27.6992, 0];
			createVehicleCrew _radar4;
			(crew _radar4) joinSilent _group4;
			_radar4 setDir 331.750;
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
		
		private _cogroup = createGroup west;
		private _co = _coGroup createUnit ["B_officer_F", [(_fobpos select 0)-9.5, (_fobpos select 1)-3.5, 0], [], 0, "NONE"];
		[_co, missionNameSpace getVariable "H_aiFaction", "OF"] call tb3_fnc_loadout;
		_co disableai "move";
		_co allowDamage false;
		[_co,false] remoteExec ["H_fnc_addCOOptions",0];
		private _box = "B_supplyCrate_F" createVehicle _fobpos;
		[_box] call H_fnc_supplybox; 
		
		
		
		if ("FOBAttacks" call BIS_fnc_getParamValue == 1) then {
			[_fobmarker] spawn H_fnc_fobattacks;
		};
		
				
		
		
		[_task,"SUCCEEDED"] call BIS_fnc_taskSetState;