	params ["_base"];
	
	missionActive = true;
	private _pos = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20 OR (_pos distance getMarkerPos "marker_0" < 500)} do {
    _pos = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
	private _nBuilding = _pos distance (nearestBuilding _pos);
};


private _objType = selectRandom [H_fnc_outpost1,H_fnc_outpost2,H_fnc_outpost3,H_fnc_outpost4];

[_pos] call _objType;

private _marker = createMarker [format ["Location%1", random 1000], _pos];
_marker setMarkerType "hd_objective";
_marker setMarkerColor "ColorRed";
_marker setMarkerText "Hostage Location";

private _group1 = createGroup east;
[_group1, _pos] call H_fnc_OPFORSquad; 
[leader _group1, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;

[_group1] call CBA_fnc_taskDefend;

private _group2 = createGroup east;
[_group2, _pos] call H_fnc_OPFORSquad; 
[leader _group2, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;

[leader _group2, _pos, 200] spawn H_fnc_patrol;

private _a = random 100;
if (_a > 50) then {
	private _group3 = createGroup east;
	[_group3, _pos] call H_fnc_OPFORSquad; 
	[leader _group3, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
	[leader _group3, _pos, 200] spawn H_fnc_patrol;
};

private _hostageGroup = createGroup civilian;
private _hostage = _hostageGroup createUnit ["C_journalist_F", _pos, [], 0, "NONE"];
[_hostage, true] call ACE_captives_fnc_setHandcuffed;

private _adjective = selectRandom h_alb_opNameA;
private _noun = selectRandom H_alb_opNameB;

private _opname = format ["Operation %1 %2:", _adjective, _noun];

[west,["_task"],["
Situation:<br/>
A journalist has been taken hostage by the insurgents. Rescue him and take him back to your base.<br/>
<br/>
Situation Enemy Forces:<br/>
The journalist is likely to be guarded by between 8 and 12 insurgents, guarding the outpost or patroling the local area. Insurgents are armed with a mixture of small arms and RPGs.<br/>
<br/>
Situation Friendly Forces:<br/>
As per map.<br/>
<br/>
Mission:<br/>
RECOVER the captured journalist in order to prevent loss of life.<br/>
<br/>
Execution:<br/>
Team will raid the objective, rescue the hostage and return to camp. The hostage should not have his cable ties released until returned to base. [Mission will automatically re-handcuff hsotage]<br/>
<br/>
Service Support:<br/>
As per SOPs.<br/>
<br/>
Command and Signals:<br/>
As per SOPs.<br/>",format ["%1 Rescue Hostage",_opname],"_taskmarker"],objNull,1,2,true] call BIS_fnc_taskCreate;

private _loop = true;
while {_loop} do {
	if (!alive _hostage) then {
		["_task","FAILED"] call BIS_fnc_taskSetState;
		deleteMarker _marker;
		_loop = false;
	};

	if (_hostage distance _base <50) then {
		["_task","SUCCEEDED"] call BIS_fnc_taskSetState;
		deleteMarker _marker;
		_loop = false;
		deleteVehicle _hostage;
	};
	if (!(_hostage getVariable ["ace_captives_isHandcuffed",false])) then {
		[_hostage, true] call ACE_captives_fnc_setHandcuffed;
	};
	sleep 3;
};
	missionActive = false;
	[20, true] remoteExec ["H_fnc_deploypoints",2];
	[20, _base, true] remoteExec ["H_fnc_townPoints",2];

sleep 300;
{deleteVehicle _x} forEach units _objective;
{deleteVehicle _x} forEach units _group1;
{deleteVehicle _x} forEach units _group2;