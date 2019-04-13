params ["_co"];

hint "Finding Operation...";

private _mission = selectRandom ["H_fnc_operationOutposts","H_fnc_operationCapture"];

[position _co] remoteExec [_mission,2];