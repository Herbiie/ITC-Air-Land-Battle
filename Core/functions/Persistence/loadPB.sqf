params ["_fobpos","_fobname"];

	
		private _spawn = [_fobpos, 0,[
			["Land_Mil_WallBig_4m_F",[-4.0791,-1.9707,-0.0112991],180,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[5.16113,1.30664,-0.0119419],0.858404,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[-4.0791,-5.97852,-0.011301],180,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[5.2207,5.31445,-0.0119419],0.858404,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[-8.06934,-1.94922,-0.0112991],180,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[2.78027,7.85938,-0.0119419],90.8584,1,0,[0,-0],"","",true,false],
			["Land_Mil_WallBig_4m_F",[-1.60059,-8.49023,-0.0122223],270,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[9.14844,1.22656,-0.0141296],0.858404,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[-9.8457,-0.107422,0],271.107,1,0,[0.00142931,-0.0739881],"","",true,false], 
			["Land_HBarrier_1_F",[-9.83203,0.947266,0],271.107,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[-9.85059,-1.19727,0],271.107,1,0,[0.00142931,-0.0739881],"","",true,false],
			["Land_HBarrier_1_F",[-5.01855,8.64648,0],271.107,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[-9.82715,2.03711,0],271.107,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[-9.77051,3.11523,0],271.107,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[-9.76563,4.20508,0],271.107,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[-5.01367,9.73633,0],271.107,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[-9.75195,5.25781,0],271.107,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[-10.5742,-4.45703,-0.012167],90,1,0,[0,-0],"","",true,false], 
			["Land_HBarrier_1_F",[11.1738,0.439453,9.53674e-006],91.2743,1,0,[-0.0739836,-0.00164571],"","",true,false],
			["Land_HBarrier_1_F",[11.166,-0.650391,9.53674e-006],91.2743,1,0,[-0.0739836,-0.00164571],"","",true,false], 
			["Land_HBarrier_1_F",[11.1494,-1.70508,9.53674e-006],91.2743,1,0,[-0.0739836,-0.00164571],"","",true,false], 
			["Land_HBarrier_1_F",[6.31445,-9.39063,0],91.2743,1,0,[0,-0],"","",true,false], 
			["Land_HBarrier_1_F",[11.1416,-2.79297,1.90735e-006],91.2743,1,0,[-0.00164572,0.0739836],"","",true,false], 
			["Land_HBarrier_1_F",[-9.74707,6.34961,0],271.107,1,0,[0,0],"","",true,false],
			["Land_HBarrier_1_F",[11.082,-3.87109,1.90735e-006],91.2743,1,0,[-0.00164572,0.0739836],"","",true,false], 
			["Land_HBarrier_1_F",[-5,10.7891,0],271.107,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[11.6885,3.69141,-0.012619],270.858,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[11.0742,-4.96094,1.90735e-006],91.2743,1,0,[-0.00164572,0.0739836],"","",true,false], 
			["Land_HBarrier_1_F",[6.30566,-10.4805,0],91.2743,1,0,[0,-0],"","",true,false],
			["Land_HBarrier_1_F",[-9.6582,7.52148,0],271.107,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[2.84277,11.8594,-0.0119419],90.8584,1,0,[0,-0],"","",true,false], 
			["Land_HBarrier_1_F",[11.0576,-6.01367,1.90735e-006],91.2743,1,0,[-0.00164572,0.0739836],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[-1.60352,-12.4902,-0.0119419],270,1,0,[0,0],"","",true,false],
			["Land_HBarrier_1_F",[-4.99512,11.8809,0],271.107,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[-9.65332,8.60938,1.90735e-006],271.107,1,0,[-0.00142964,0.0740049],"","",true,false], 
			["Land_HBarrier_1_F",[0.15918,13.0293,0],1.65272,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[1.21289,13.0059,0],1.65272,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[-0.930664,13.0449,0],1.65272,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[6.28906,-11.5332,0],91.2743,1,0,[0,-0],"","",true,false],
			["Land_HBarrier_1_F",[11.0498,-7.10742,0],91.2743,1,0,[0,-0],"","",true,false], 
			["Land_HBarrier_1_F",[2.30273,12.9902,0],1.65272,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[-2.00781,13.1113,0],1.65272,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[-10.6406,-8.4375,-0.011301],90,1,0,[0,-0],"","",true,false], 
			["Land_HBarrier_1_F",[-3.09766,13.127,0],1.65272,1,0,[0,0],"","",true,false], 
			["Land_Cargo_Patrol_V1_F",[-5.75,-12.4668,0],0,1,0,[0,0],"","",true,false], 
			["Land_Cargo_Patrol_V1_F",[6.98828,11.7734,0],180.858,1,0,[0,0],"","",true,false],
			["Land_HBarrier_1_F",[-9.63965,9.66211,1.90735e-006],271.107,1,0,[-0.00142964,0.0740049],"","",true,false], 
			["Land_HBarrier_1_F",[10.957,-8.2793,0],91.2743,1,0,[0,-0],"","",true,false], 
			["Land_HBarrier_1_F",[-0.0683594,-13.7344,0],181.82,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[-1.01953,-13.7129,0],181.82,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[11.8145,7.66992,-0.0126228],270.858,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[-4.15137,13.1504,0],1.65272,1,0,[0,0],"","",true,false],
			["Land_HBarrier_1_F",[1.12402,-13.7578,0],181.82,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[2.21387,-13.7773,0],181.82,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[6.28125,-12.625,0],91.2743,1,0,[0,-0],"","",true,false], 
			["Land_HBarrier_1_F",[-5.24121,13.166,0],1.65272,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[3.29004,-13.8477,0],181.82,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[10.9492,-9.36914,0],91.2743,1,0,[0,-0],"","",true,false], 
			["Land_HBarrier_1_F",[-9.63379,10.7559,1.14441e-005],271.107,1,0,[-0.0740049,-0.00142967],"","",true,false], 
			["Land_HBarrier_1_F",[4.37988,-13.8652,0],181.82,1,0,[0,0],"","",true,false],
			["Land_HBarrier_1_F",[5.43359,-13.8926,0],181.82,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[5.38574,14.3164,-0.0119419],180.858,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[10.9326,-10.4219,0],91.2743,1,0,[0,-0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[-4.10938,-14.9863,-0.0119419],0,1,0,[0,0],"","",true,false], 
			["Land_HBarrier_1_F",[6.52344,-13.9102,0],181.82,1,0,[0,0],"","",true,false],
			["Land_HBarrier_1_F",[10.9238,-11.5137,0],91.2743,1,0,[0,-0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[-10.6455,-12.4336,-0.0140896],90,1,0,[0,-0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[11.8809,11.6699,-0.0137196],270.858,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[-8.10156,-14.9219,-0.0119419],0,1,0,[0,0],"","",true,false], 
			["Land_Mil_WallBig_4m_F",[9.37402,14.1934,-0.0100975],180.858,1,0,[0,0],"","",true,false]
		
			]
		] call BIS_fnc_ObjectsMapper;


		[command, 1] remoteExec ["removeAction",0];		
		private _fobmarker = createMarker [_fobName, _fobpos];
		_fobmarker setMarkerShape "ICON";
		_fobmarker setMarkerType "mil_triangle";
		_fobmarker setMarkerColor "ColorBlufor";
		_fobmarker setMarkerText _fobName;
		private _split = _fobname splitstring " ";
		private _callsign = format ["%1 %2", _split select 1, _split select 2];
		
		private _group1 = createGroup WEST;
		[_group1, _fobmarker, _fobname, false] call H_fnc_BLUFORFireTeam;
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
		[_group2, _fobName, format ["%1'1", _callsign], true] call H_fnc_BLUFORFireTeam;
		
		
		//player setPos _fobpos;
		private _respawn = [west,_fobmarker,_fobname] call BIS_fnc_addRespawnPosition;
		
		
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
		[_co, missionNameSpace getVariable "H_aiFaction", "OF"] call tb3_fnc_Loadout;
		_co disableai "move";
		_co allowDamage false;
		[_co,false] remoteExec ["H_fnc_addCOOptions",0];
		private _box = "B_supplyCrate_F" createVehicle _fobpos;
		clearItemCargoGlobal _box;
		clearMagazineCargoGlobal _box;
		clearWeaponCargoGlobal _box;
		clearBackpackCargoGlobal _box;
		
		
		
		if ("FOBAttacks" call BIS_fnc_getParamValue == 1) then {
			[_fobmarker] spawn H_fnc_fobattacks;
		};