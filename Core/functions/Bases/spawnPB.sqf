params ["_fobpos"];

	
		["pbtask"] remoteExec ["BIS_fnc_deleteTask",0];
		[_fobpos] call H_fnc_pb;
		_callsign = H_alb_platoons select count H_alb_fobs;		
		private _fobName = format ["PB %1", _callsign];
		private _fobmarker = createMarker [format ["%1Marker",_fobName], _fobpos];
		_fobmarker setMarkerShape "ICON";
		_fobmarker setMarkerType "mil_triangle";
		_fobmarker setMarkerColor "ColorBlufor";
		_fobmarker setMarkerText _fobName;
		
		private _group1 = createGroup WEST;
		[_group1, _fobMarker, _fobname, false] call H_fnc_BLUFORFireTeam;
		[getMarkerPos _fobmarker, nil, units _group1, 30, 0, false, true] call ace_ai_fnc_garrison;
		{
			_x forceSpeed 0;
		} forEach units _group1;
		
		private _group2 = createGroup WEST;
		[_group2, _fobMarker, format ["%1'1", _callsign], true] call H_fnc_BLUFORFireTeam;
		
		
		//player setPos _fobpos;
		private _respawn = [west,_fobmarker,_fobname] call BIS_fnc_addRespawnPosition;
		
		_fob = ["PB", _fobname, _fobpos, _fobmarker, _group1, _group2];
		H_alb_fobs = H_alb_fobs + [_fob];
		
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
		
		private _cogroup = createGroup west;
		private _co = _coGroup createUnit ["B_officer_F", [(_fobpos select 0)-9.5, (_fobpos select 1)-3.5, 0], [], 0, "NONE"];
		[_co, "OF"] call H_fnc_aiLoadout;
		_co disableai "move";
		_co allowDamage false;
		[_co, ["Request Mission","[_this select 0] spawn H_fnc_sideMissionRandom",nil,1.5,true,true,"","true",5]] remoteExec ["addAction",0];
		[_co, ["Purchase Items", "[] call H_fnc_openShop",nil,1.5,true,true,"","true",5]] remoteExec ["addAction",0];
		private _box = "B_supplyCrate_F" createVehicle _fobpos;
		[_box] call H_fnc_supplybox; 
		
		
		
		if ("FOBAttacks" call BIS_fnc_getParamValue == 1) then {
			[_fobmarker] spawn H_fnc_fobattacks;
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