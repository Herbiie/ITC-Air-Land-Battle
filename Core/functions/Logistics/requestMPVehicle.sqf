params ["_vehNumStr","_pos"];
private _vehNum = parseNumber _vehNumStr;
private _westVehicles = missionNameSpace getVariable ["H_alb_westVehicles",[]];
private _vehicle = (_westVehicles # _vehNum) # 0;
[_vehicle,_pos] call H_fnc_heliTransport;




