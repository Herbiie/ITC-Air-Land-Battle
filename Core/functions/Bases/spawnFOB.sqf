params ["_fobpos"];

	
		["fobtask"] remoteExec ["BIS_fnc_deleteTask",0];
		_callsign = H_alb_platoons select count H_alb_fobs;
		private _fobName = format ["FOB %1", _callsign];
		private _fobmarker = createMarker [format ["%1Marker",_fobName], _fobpos];
		_fobmarker setMarkerShape "ICON";
		_fobmarker setMarkerType "mil_triangle";
		_fobmarker setMarkerColor "ColorBlufor";
		_fobmarker setMarkerText _fobName;
		startingMarkers = startingmarkers + [_fobmarker];
		publicVariable "startingMarkers";
		
		[[west,["_task"],[format ["Set Up %1", _fobname],format ["Set Up %1", _fobname],"_taskmarker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];
		[[west,["_task1","_task"],[format ["Move supplies to %1", _fobname],format ["Move supplies to %1", _fobname],"_taskmarker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];
		
		["Notification",["PB Supplies Ready",format ["Supplies for %1 spawned at %2.", _fobname, mapGridPosition getMarkerPos "carspawn"]]] remoteExec ["BIS_fnc_showNotification",0];
				
		private _crate = H_supplyVehicle createVehicle getMarkerPos "carspawn";
		private _smoke = "SmokeShellBlue_Infinite" createVehicle _fobpos;
		
		waitUntil {((_crate distance _fobpos) < 5) && (speed _crate < 3)};
		{
			_x action ["Eject",vehicle _x];
		} forEach crew _crate;
		
		deleteVehicle _smoke;
		deleteVehicle _crate;
		
		[["_task1","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];
		
		[_fobpos, 35] call H_fnc_cones;
		
		[[west,["_task2","_task"],["Move away from the building site.","Move away from the building site.","_taskmarker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];
		
		
		waitUntil {({(_x distance _fobpos) < 36} count allPlayers) == 0};
		
		[["_task2","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];
		
		[_fobpos] call H_fnc_fob;
		
		{
			if ((_x distance _fobpos) < 40) then {
				deleteVehicle _x;
			};
		} forEach allMissionObjects "RoadBarrier_small_F";
		
		
		private _group1 = createGroup WEST;
		[_group1, _fobMarker, _fobname, false] call H_fnc_BLUFORSquad;
		[getMarkerPos _fobmarker, nil, units _group1, 30, 0, false, true] call ace_ai_fnc_garrison;
		{
			_x forceSpeed 0;
		} forEach units _group1;
		
		
		private _group2 = createGroup WEST;
		[_group2, _fobMarker, format ["%1'1", _callsign], true] call H_fnc_BLUFORFireTeam;
		private _group3 = createGroup WEST;
		[_group3, _fobMarker, format ["%1'2", _callsign], true] call H_fnc_BLUFORFireTeam;
		private _group5 = createGroup WEST;
		[_group5, _fobMarker, format ["%1'3", _callsign], true] call H_fnc_BLUFORFireTeam;
		
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
		//player setPos _fobpos;
		private _respawn = [west,_fobmarker,_fobname] call BIS_fnc_addRespawnPosition;
		
		_fob = ["FOB", _fobname, _fobpos, _fobmarker, _group1, _group2, _group3];
		H_alb_fobs = H_alb_fobs + [_fob];
		
		private _cogroup = createGroup west;
		private _copos = [_fobpos, 0, 3, 2, 0, 1, 0, [], [0,0,0]]  call BIS_fnc_findSafePos;
		private _co = _coGroup createUnit ["B_officer_F", _copos, [], 0, "NONE"];
		[_co, "OF"] call H_fnc_aiLoadout;
		_co disableai "move";
		_co allowDamage false;
		[_co, ["Request Mission","[_this select 0] spawn H_fnc_sideMissionRandom",nil,1.5,true,true,"","true",5]] remoteExec ["addAction",0];
		[_co, ["Purchase Items", "[] call H_fnc_openShop",nil,1.5,true,true,"","true",5]] remoteExec ["addAction",0];
		[_co, ["Request Operation","[_this select 0] spawn H_fnc_operationRandom",nil,1.5,true,true,"","true",5]] remoteExec ["addAction",0];
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
		
		
		_radar1 enableSimulation false;
		_radar2 enableSimulation false;
		_radar3 enableSimulation false;
		_radar4 enableSimulation false;
		sleep 2;		
		_radar1 enableSimulation true;
		_radar2 enableSimulation true;
		_radar3 enableSimulation true;
		_radar4 enableSimulation true;
		
		[["_task","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];