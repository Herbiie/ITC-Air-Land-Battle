params ["_co"];

hint "Finding mission...";

private _mission = selectRandom ["H_fnc_Outpost","H_fnc_Hostage","H_fnc_Truck","H_Fnc_VCP","H_fnc_HeliCrash","H_fnc_RoadBlock","H_fnc_AreaClear"];
[position _co] remoteExec [_mission,2];