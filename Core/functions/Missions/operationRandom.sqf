params ["_co"];

private _mission = selectRandom ["H_fnc_operationOutposts"];

	[position _co] remoteExec [_mission,2];