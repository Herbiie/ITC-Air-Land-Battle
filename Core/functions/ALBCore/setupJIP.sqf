{
	private _pos = _x select 2;
	private _co = nearestObject [_pos, "B_officer_F"];
	_co addAction ["Show Deployment Points","hint format [""Deployment Points: %1"", H_alb_deploypoints]",nil,1.5,true,true,"","true",5];
	_co addAction ["Request Mission","[_this select 0] spawn H_fnc_sideMissionRandom",nil,1.5,true,true,"","true",5];
	private _box = nearestObject [_pos, "B_supplyCrate_F"];
	[_box] call H_fnc_arsenal;
	private _siren =  nearestObject [_pos, "itc_land_loudspeakers"];
	_siren addAction ["Save Mission and Exit","[] remoteExec [""H_fnc_saveMission"",2]",nil,1.5,true,true,"","true",5];
} forEach H_alb_fobs;