params ["_base"];

private _roads = _base nearRoads 1500;
private _vcp = position (selectRandom _roads);
while {_vcp distance _base < 500} do {
	private _roads = _base nearRoads 1500;
	private _vcp = position (selectRandom _roads);
};
	
	
private _marker = createMarker [format ["Location%1", random 1000], _vcp];
_marker setMarkerType "hd_dot";
_marker setMarkerColor "ColorBluFor";
_marker setMarkerText "VCP";


private _marker2 = createMarker [format ["Location2%1", random 1000], _vcp];
_marker2 setMarkerShape "ELLIPSE";
_marker2 setMarkerColor "ColorBluFor";
_marker2 setMarkerSize [25, 25];
_marker2 setMarkerBrush "Border";

[[west,["_task"],["Set up a Vehicle Checkpoint at the marked location for 20 minutes.","Set Up VCP.","_taskmarker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];

_smoke = "SmokeShellBlue_Infinite" createVehicle _vcp;

sleep 5;

[[west,["_task1","_task"],["Move to the vehicle checkpoint location. VCP is marked by blue smoke.","Move To VCP.","_task1marker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];

waitUntil {
{_x distance _vcp < 25} count playableUnits > 0;
};

deleteVehicle _smoke;

[["_task1","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];

_time = daytime + ((1/3)*("TimeAcceleration" call BIS_fnc_getParamValue));
_time24 = [_time,"HH:MM"] call BIS_fnc_timeToString;

[[west,["_task2","_task"],[format ["Hold VCP location until %1", _time24], format ["Hold VCP until %1.", _time24],"_task2marker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];

[_vcp, 200, 5] spawn H_fnc_randomAttacks;
private _a = 0;
private _b = 1200;
while {_a < _b} do {
	sleep 5;
	if ({_x distance _vcp < 25} count playableUnits > 0) then {
		_a = _a + 5;
		_c = round ((_b - _a)/60);
		[format ["%1 minutes remaining", _c]] remoteExec ["hint",0];
	} else {
	["Reoccupy the VCP!"] remoteExec ["hint",0];
	};
};

[["_task2","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];
sleep 3;
[["_task","SUCCEEDED"],BIS_fnc_taskSetState] remoteExec ["call",0];
deleteMarker _marker;
deleteMarker _marker2;
	[20, true] remoteExec ["H_fnc_deploypoints",2];
	[20, _base, true] remoteExec ["H_fnc_townPoints",2];