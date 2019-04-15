params ["_fobpos","_fobname"];

	
		private _spawn = [_fobpos, 0,[
	 ["Land_HBarrier_1_F",[-0.104492,-8.21387,1.52588e-005],225.865,1,0,[-0.108327,-0.00162099],"","",true,false], 
	["Land_HBarrier_1_F",[6.37207,5.83887,0],0.0248203,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[0.661133,-9.0166,1.52588e-005],225.865,1,0,[-0.108327,-0.00162099],"","",true,false], 
	["Land_HBarrier_1_F",[-4.40039,8.09473,0],229.139,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[7.45605,5.83496,0],0.0248203,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[1.36133,-9.82227,1.52588e-005],225.865,1,0,[-0.108327,-0.00162099],"","",true,false], 
	["Land_HBarrier_1_F",[8.52148,5.8584,0],0.0248203,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-5.25586,8.94727,0],229.139,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[2.14746,-10.5977,1.52588e-005],225.865,1,0,[-0.108327,-0.00162099],"","",true,false], 
	["Land_HBarrier_1_F",[9.64746,5.80371,0],0.0248203,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-5.9873,9.77051,0],229.139,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-10.3496,-5.54492,0],182.739,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[2.88281,-11.4141,1.52588e-005],225.581,1,0,[-0.108333,-0.00108499],"","",true,false], 
	["Land_HBarrier_1_F",[10.7676,5.82715,0],0.0248203,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-6.72754,10.665,0],229.139,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-11.4297,-5.47656,0],182.739,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[2.70703,-12.7266,1.14441e-005],272.325,1,0,[-0.0734464,-0.0796425],"","",true,false],
	 ["Land_HBarrier_1_F",[-12.5537,-5.38086,0],182.739,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-7.41016,11.5156,0],229.139,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[2.65039,-13.8369,1.14441e-005],272.325,1,0,[-0.0734464,-0.0796425],"","",true,false], 
	["Land_HBarrier_1_F",[-13.6514,-5.36035,0],182.739,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[-7.6709,12.7637,0],272.808,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[2.62012,-14.9561,1.14441e-005],272.325,1,0,[-0.0734464,-0.0796425],"","",true,false], 
	["Land_HBarrier_1_F",[-14.7598,-5.36328,0],182.739,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-7.61426,13.9033,0],272.808,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[2.61133,-16.1455,1.14441e-005],272.325,1,0,[-0.0739578,-0.00300256],"","",true,false], 
	["Land_HBarrier_1_F",[-7.50293,15.043,0],272.808,1,0,[0,0],"","",true,false],
	["Land_HBarrierBig_F",[15.7383,6.29395,0],178.683,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_1_F",[2.55859,-17.2568,1.14441e-005],272.325,1,0,[-0.0739578,-0.00300256],"","",true,false], 
	["Land_Cargo_Patrol_V1_F",[7.43555,-16.4561,0],0.604775,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-7.42188,16.1523,0],272.808,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[2.55469,-18.376,1.14441e-005],272.325,1,0,[-0.0739578,-0.00300256],"","",true,false], 
	["Land_HBarrier_1_F",[-7.33887,17.2891,0],272.808,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[2.85156,-19.2891,1.90735e-006],359.003,1,0,[-0.00128822,-0.0740075],"","",true,false], 
	["Land_HBarrier_1_F",[3.93555,-19.2734,1.90735e-006],359.003,1,0,[-0.00128822,-0.0740075],"","",true,false], 
	["Land_HBarrier_1_F",[-7.20117,18.4346,0],92.7601,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_1_F",[5,-19.2314,1.90735e-006],359.003,1,0,[-0.00128822,-0.0740075],"","",true,false], 
	["Land_Cargo_Patrol_V1_F",[-12.0967,16.5508,0],181.04,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[6.1416,-19.2168,3.8147e-006],359.003,1,0,[-0.00128822,-0.0740075],"","",true,false], 
	["Land_HBarrier_1_F",[7.22559,-19.2012,3.8147e-006],359.003,1,0,[-0.00128822,-0.0740075],"","",true,false],
	["Land_HBarrierBig_F",[-19.8359,-5.40918,0],0.823011,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-7.49023,19.3496,0],179.438,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_1_F",[8.29004,-19.1592,1.90735e-006],359.003,1,0,[-0.00128822,-0.0740075],"","",true,false], 
	["Land_HBarrier_1_F",[1.63281,20.96,0],269.638,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[-8.5752,19.3428,0],179.438,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_1_F",[9.41699,-19.1934,3.8147e-006],359.003,1,0,[-0.00128822,-0.0740075],"","",true,false], 
	["Land_HBarrier_1_F",[-6.3623,-20.5361,0],92.5281,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_1_F",[-9.63965,19.3086,0],179.438,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_1_F",[10.5352,-19.1494,0],359.003,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-10.7813,19.3027,1.90735e-006],179.438,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_1_F",[1.62988,22.0449,1.14441e-005],269.638,1,0,[-0.0770996,-0.0761114],"","",true,false], 
	["Land_HBarrier_1_F",[-6.41309,-21.6191,0],92.5281,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_1_F",[-11.8652,19.2949,1.90735e-006],179.438,1,0,[0,-0],"","",true,false], 
	["Land_HBarrierBig_F",[20.8574,9.63184,0],90.216,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_1_F",[1.59961,23.1104,1.14441e-005],269.638,1,0,[-0.0770996,-0.0761114],"","",true,false], 
	["Land_HBarrier_1_F",[-12.9297,19.2607,0],179.438,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_1_F",[-6.43555,-22.6836,-7.62939e-006],92.5282,1,0,[0.0731634,0.0799024],"","",true,false], 
	["Land_HBarrier_1_F",[-14.0566,19.3037,1.90735e-006],179.438,1,0,[0,-0],"","",true,false], 
	["Land_HBarrierBig_F",[17.1367,16.7471,-0.000160217],35.438,1,0,[0.106831,-0.0180101],"","",true,false], 
	["Land_Cargo_Patrol_V1_F",[7.46875,23.7666,0.00165939],178.764,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_1_F",[1.64648,24.2363,1.14441e-005],269.638,1,0,[-0.0770996,-0.0761114],"","",true,false], 
	["Land_HBarrierBig_F",[15.3809,-19.0205,0],0.823011,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-15.1758,19.2686,0],179.438,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_1_F",[-6.53906,-23.8066,-9.53674e-006],92.5281,1,0,[0.0739467,0.00326489],"","",true,false],
	["Land_HBarrier_1_F",[1.61523,25.3564,1.14441e-005],269.638,1,0,[-0.0770996,-0.0761114],"","",true,false], 
	["Land_Cargo_Patrol_V1_F",[-12.1387,-23.208,-0.00167084],0.104889,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-6.56445,-24.9268,-9.53674e-006],92.5281,1,0,[0.0739467,0.00326489],"","",true,false], 
	["Land_HBarrier_1_F",[22.6699,12.709,1.33514e-005],183.87,1,0,[-0.0815932,0.0712729],"","",true,false],
	["Land_HBarrier_1_F",[26.4629,-2.14844,-7.62939e-006],92.5282,1,0,[0.0731634,0.0799024],"","",true,false], 
	["Land_HBarrierBig_F",[-25.0859,-8.5498,0],272.357,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[26.5664,-1.02734,-9.53674e-006],92.5281,1,0,[0.0739467,0.00326489],"","",true,false], 
	["Land_HBarrier_1_F",[26.5898,0.0380859,-7.62939e-006],92.5281,1,0,[0.0739467,0.00326489],"","",true,false],
	["Land_HBarrier_1_F",[26.4365,-3.26953,0],92.5281,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_1_F",[26.6406,1.12109,-9.53674e-006],92.5281,1,0,[0.0739467,0.00326489],"","",true,false], 
	["Land_HBarrier_1_F",[26.6777,2.30176,-7.62939e-006],92.5281,1,0,[0.0739467,0.00326489],"","",true,false], 
	["Land_HBarrier_1_F",[1.61133,26.79,-7.62939e-006],359.003,1,0,[0.0752523,-0.0779382],"","",true,false],
	["Land_HBarrierBig_F",[-21.6367,-15.8057,6.10352e-005],217.579,1,0,[-0.0586475,-0.0451305],"","",true,false], 
	["Land_HBarrier_1_F",[26.7031,3.42188,-9.53674e-006],92.5281,1,0,[0.0739467,0.00326489],"","",true,false], 
	["Land_HBarrier_1_F",[23.7891,12.6572,1.33514e-005],183.87,1,0,[-0.0815932,0.0712729],"","",true,false], 
	["Land_HBarrier_1_F",[2.69434,26.8057,-9.53674e-006],359.003,1,0,[0.0739907,-0.00128789],"","",true,false],
	["Land_HBarrier_1_F",[3.75879,26.8477,-9.53674e-006],359.003,1,0,[0.0739907,-0.00128789],"","",true,false], 
	["Land_HBarrierBig_F",[13.2949,23.6162,-5.91278e-005],90.2161,1,0,[0.0763273,0.0768858],"","",true,false], 
	["Land_HBarrier_1_F",[26.8066,4.54395,-9.53674e-006],92.5281,1,0,[0.0739467,0.00326489],"","",true,false], 
	["Land_HBarrier_1_F",[-6.54883,-26.4102,1.90735e-006],182.134,1,0,[-0.00275657,0.0739674],"","",true,false],
	["Land_HBarrier_1_F",[4.88574,26.8135,-9.53674e-006],359.003,1,0,[0.0739907,-0.00128789],"","",true,false], 
	["Land_HBarrierBig_F",[-19.9746,18.585,0],178.683,1,0,[0,-0],"","",true,false], 
	["Land_HBarrier_1_F",[26.8301,5.60938,-7.62939e-006],92.5281,1,0,[0.0739467,0.00326489],"","",true,false], 
	["Land_HBarrier_1_F",[-7.63184,-26.3672,1.90735e-006],182.134,1,0,[-0.00275657,0.0739674],"","",true,false],
	["Land_HBarrier_1_F",[6.00488,26.8574,-1.14441e-005],359.003,1,0,[0.0739907,-0.00128789],"","",true,false], 
	["Land_HBarrier_1_F",[26.8809,6.69336,-7.62939e-006],92.5282,1,0,[0.0731634,0.0799024],"","",true,false], 
	["Land_HBarrier_1_F",[-8.69727,-26.3506,1.90735e-006],182.134,1,0,[-0.00275657,0.0739674],"","",true,false], 
	["Land_HBarrierBig_F",[26.623,-8.37012,0],272.745,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[7.18164,26.9199,-7.62939e-006],359.003,1,0,[0.0739907,-0.00128789],"","",true,false], 
	["Land_HBarrier_1_F",[24.9082,12.5273,1.33514e-005],183.87,1,0,[-0.0815932,0.0712729],"","",true,false], 
	["Land_HBarrier_1_F",[-9.82031,-26.2549,1.90735e-006],182.134,1,0,[-0.00275657,0.0739674],"","",true,false], 
	["Land_HBarrierBig_F",[23.166,-15.9482,0],318.505,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[8.26563,26.9355,-9.53674e-006],359.003,1,0,[0.0739907,-0.00128789],"","",true,false], 
	["Land_HBarrier_1_F",[-10.9404,-26.2373,1.90735e-006],182.134,1,0,[-0.00275657,0.0739674],"","",true,false], 
	["Land_HBarrier_1_F",[9.33008,26.9775,-7.62939e-006],359.003,1,0,[0.0739907,-0.00128789],"","",true,false], 
	["Land_HBarrier_1_F",[25.9727,12.4775,0],183.87,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[10.458,26.9434,-7.62939e-006],359.003,1,0,[0.0752523,-0.0779382],"","",true,false], 
	["Land_HBarrier_1_F",[-12.0693,-26.3369,1.90735e-006],182.134,1,0,[-0.00275657,0.0739674],"","",true,false], 
	["Land_HBarrierBig_F",[-18.0391,-22.7979,0],272.357,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[11.5762,26.9863,0],359.003,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[-26.793,-12.0439,1.14441e-005],184.275,1,0,[-0.073796,-0.00551691],"","",true,false], 
	["Land_HBarrier_1_F",[-13.1533,-26.2939,0],182.134,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[27.0547,12.4023,0],183.87,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-14.2188,-26.2773,0],182.134,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[-15.3418,-26.1816,0],182.134,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-27.8887,-11.9775,1.14441e-005],184.275,1,0,[-0.073796,-0.00551691],"","",true,false], 
	["Land_HBarrier_1_F",[-30.6797,0.855469,0],274.049,1,0,[0.00522481,-0.0738172],"","",true,false], 
	["Land_HBarrier_1_F",[-30.6436,1.94336,-5.72205e-006],274.049,1,0,[0.0738172,0.00522485],"","",true,false],
	["Land_HBarrier_1_F",[-30.6025,3.05664,-5.72205e-006],274.049,1,0,[0.0738172,0.00522485],"","",true,false], 
	["Land_HBarrier_1_F",[-30.7754,-0.214844,0],274.049,1,0,[0.00522481,-0.0738172],"","",true,false], 
	["Land_HBarrier_1_F",[-30.8096,-1.30859,0],274.049,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-16.4619,-26.1641,0],182.134,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[-30.8779,-2.45703,0],274.049,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-30.9189,-3.57031,0],274.049,1,0,[0,0],"","",true,false], 
	["Land_HBarrier_1_F",[-30.9561,-4.65918,0],274.049,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[-29.0225,-11.875,1.33514e-005],184.275,1,0,[-0.082096,0.0706932],"","",true,false], 
	["Land_HBarrierBig_F",[-27.6289,15.2314,0.000116348],136.365,1,0,[-0.0535589,0.0510659],"","",true,false], 
	["Land_HBarrier_1_F",[-31.0508,-5.72852,1.14441e-005],274.049,1,0,[-0.0710174,-0.0818158],"","",true,false], 
	["Land_HBarrierBig_F",[-30.6406,8.0166,0.00015831],90.6039,1,0,[-0.0774005,0.0757858],"","",true,false],
	["Land_HBarrier_1_F",[-31.085,-6.82129,1.14441e-005],274.049,1,0,[-0.0710174,-0.0818158],"","",true,false], 
	["Land_HBarrier_1_F",[-30.2217,-11.7988,1.33514e-005],184.275,1,0,[-0.082096,0.0706932],"","",true,false], 
	["Land_HBarrier_1_F",[-31.3115,-11.709,1.33514e-005],184.275,1,0,[-0.082096,0.0706932],"","",true,false]
	 ]
] call BIS_fnc_ObjectsMapper;

sleep 5;
		[command, 1] remoteExec ["removeAction",0];		
		private _fobmarker = createMarker [_fobName, _fobpos];
		_fobmarker setMarkerShape "ICON";
		_fobmarker setMarkerType "mil_triangle";
		_fobmarker setMarkerColor "ColorBlufor";
		_fobmarker setMarkerText _fobName;
		private _split = _fobname splitstring " ";
		private _callsign = format ["%1 %2", _split select 1, _split select 2];
		
		
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
		
		
		private _cogroup = createGroup west;
		private _copos = [_fobpos, 0, 3, 2, 0, 1, 0, [], [0,0,0]]  call BIS_fnc_findSafePos;
		private _co = _coGroup createUnit ["B_officer_F", _copos, [], 0, "NONE"];
		_co disableai "move";
		_co allowDamage false;
		[_co, ["Request Mission","[_this select 0] spawn H_fnc_sideMissionRandom",nil,1.5,true,true,"","true",5]] remoteExec ["addAction",0];
		[_co, ["Request Operation","[_this select 0] spawn H_fnc_operationRandom",nil,1.5,true,true,"","true",5]] remoteExec ["addAction",0];
		[_co, ["Purchase Items", "[] call H_fnc_openShop",nil,1.5,true,true,"","true",5]] remoteExec ["addAction",0];
		private _box = "B_supplyCrate_F" createVehicle _fobpos;
		clearItemCargoGlobal _box;
		clearMagazineCargoGlobal _box;
		clearWeaponCargoGlobal _box;
		clearBackpackCargoGlobal _box;
		
		
		
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