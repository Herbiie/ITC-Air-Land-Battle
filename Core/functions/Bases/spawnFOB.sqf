params ["_fobpos"];

	
		["fobtask"] remoteExec ["BIS_fnc_deleteTask",0];
		[_fobpos] call H_fnc_fob;
		[command, 1] remoteExec ["removeAction",0];		
		private _fobName = format ["FOB %1", (count fobs) + 1];
		private _fobmarker = createMarker [_fobName, _fobpos];
		_fobmarker setMarkerShape "ICON";
		_fobmarker setMarkerType "mil_triangle";
		_fobmarker setMarkerColor "ColorBlufor";
		_fobmarker setMarkerText _fobName;
		
		_callsign = platoons select count fobs;
		
		private _group1 = [_fobpos, west, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
		[getMarkerPos _fobmarker, nil, units _group1, 30, 0, false, true] call ace_ai_fnc_garrison;
		[leader _group1, _fobname, false, _fobmarker] spawn H_fnc_aiSetup;
		{
			_x forceSpeed 0;
		} forEach units _group1;
		
		private _group2 = [_fobpos, west, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
		[leader _group2, format ["%1'1", _callsign], true, _fobmarker] spawn H_fnc_aiSetup;
		
		private _group3 = [_fobpos, west, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
		[leader _group3, format ["%1'2", _callsign], true, _fobmarker] spawn H_fnc_aiSetup;
		
		private _group5 = [_fobpos, west, (configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
		[leader _group5, format ["%1'3", _callsign], true, _fobmarker] spawn H_fnc_aiSetup;
		
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
		private _respawn = [west,_fobpos,_fobname] call BIS_fnc_addRespawnPosition;
		
		_fob = [_fobname, _fobpos, _fobmarker, _group1, _group2, _group3];
		fobs = fobs + [_fob];
		
		private _cogroup = createGroup west;
		private _copos = [_fobpos, 0, 3, 2, 0, 1, 0, [], [0,0,0]]  call BIS_fnc_findSafePos;
		private _co = _coGroup createUnit ["B_officer_F", _copos, [], 0, "NONE"];
		_co disableai "move";
		_co allowDamage false;
		[_co, ["Request Side Mission","[_this select 0] spawn H_fnc_sideMissionRandom",nil,1.5,true,true,"","true",5]] remoteExec ["addAction",0];
		[_co, ["Show Deployment Points","[] remoteExec [""H_fnc_showpoints"",2]",nil,1.5,true,true,"","true",5]] remoteExec ["addAction",0];
		private _box = "B_supplyCrate_F" createVehicle _fobpos;
		clearItemCargoGlobal _box;
		clearMagazineCargoGlobal _box;
		clearWeaponCargoGlobal _box;
		clearBackpackCargoGlobal _box;
		[[_box]] remoteExec ["H_fnc_arsenal",0]; 
		
		
		
		if ("FOBAttacks" call BIS_fnc_getParamValue == 1) then {
			[_fobmarker] spawn H_fnc_fobattacks;
			[_fobmarker, _fobname] spawn H_fnc_specialmissions;
		};
		
		deploypoints = deploypoints - 500;
		
		_radar1 enableSimulation false;
		_radar2 enableSimulation false;
		_radar3 enableSimulation false;
		_radar4 enableSimulation false;
		sleep 2;		
		_radar1 enableSimulation true;
		_radar2 enableSimulation true;
		_radar3 enableSimulation true;
		_radar4 enableSimulation true;
