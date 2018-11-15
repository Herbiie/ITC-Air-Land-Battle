	params ["_base"];
	

	private _pos = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20} do {
    _pos = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};

"Land_Wreck_Heli_attack_01_F" createVehicle _pos;
private _marker = createMarker [format ["Location%1", random 1000], _pos];
_marker setMarkerType "hd_objective";
_marker setMarkerColor "ColorBluFor";
_marker setMarkerText "Crashsite";

private _pilotgroup = createGroup west;
private _pilot1 = _pilotgroup createUnit ["B_Helipilot_F", [(_pos select 0)+1, (_pos select 1)+4, 0], [], 0, "NONE"];
private _pilot2 = _pilotgroup createUnit ["B_Helipilot_F", [(_pos select 0)+1, (_pos select 1)-4, 0], [], 0, "NONE"];
_pilot1 forceSpeed 0;
_pilot2 forceSpeed 0;
_pilot1 disableAI "PATH";
_pilot2 disableAI "PATH";
private _a = round random 3;
private _b = round random 3;
private _callsign = format ["Beast %1'%2",_a, _b];
_pilotgroup setGroupId [_callsign];

[[west,["_task"],["A helicopter has crashed, secure the crashsite until reinforcements arrive.","Defend the Helicopter.","_taskmarker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];

sleep 4;

[[west,["_task1","_task"],["Move to the crashsite. When you are close the pilots will pop red smoke.","Move To Crash Site.","_task1marker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];

waitUntil {
{_x distance _pos < 200} count playableUnits > 0;
};


private _smoke = "SmokeShellRed" createVehicle [(_pos select 0)-6, (_pos select 1)-5, 0];
[_pilot1, format ["Any callsign this is %1, poping smoke now, over.", _callsign]]  remoteExec ["sideChat", 0]; 

waitUntil {
{_x distance _pos < 20} count playableUnits > 0;
};

[["_task1","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];

_time = daytime + ((1/3)*("TimeAcceleration" call BIS_fnc_getParamValue));
_time24 = [_time,"HH:MM"] call BIS_fnc_timeToString;

[[west,["_task2","_task"],[format ["Hold crashsite until reinforcements arrive. Reinforcements are expected at %1", _time24], format ["Hold Crashsite until %1.", _time24],"_task2marker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];

[_pos, 100, 5] spawn H_fnc_randomAttacks;
private _a = 0;
private _b = 1200;
while {_a < _b} do {
	sleep 5;
	_a = _a + 5;
	_c = round ((_b - _a)/60);
	[format ["%1 minutes remaining", _c]] remoteExec ["hint",0];
	if ({_X distance _pos > 25 && side _x == west} count allUnits == 0) then {
		_b = 0;
		[["_task2","FAILED"],BIS_fnc_taskSetState] remoteExec ["call",0];
		sleep 3;
		[["_task","FAILED"],BIS_fnc_taskSetState] remoteExec ["call",0];
		private _failed = true;
		deleteMarker _marker;
		[20, false] remoteExec ["H_fnc_deploypoints",2];
		[20, _base, false] remoteExec ["H_fnc_townPoints",2];
	};
};

If (!_failed) then {
	[["_task2","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];
	sleep 3;
	[["_task","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];
	deleteMarker _marker;
	[20, true] remoteExec ["H_fnc_deploypoints",2];
	[20, _base, true] remoteExec ["H_fnc_townPoints",2];
};