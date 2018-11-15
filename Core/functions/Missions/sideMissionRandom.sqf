params ["_co"];

private _mission = selectRandom ["H_fnc_Outpost","H_fnc_Hostage","H_fnc_Truck","H_Fnc_VCP","H_fnc_HeliCrash"];

	[position _co] remoteExec [_mission,2];