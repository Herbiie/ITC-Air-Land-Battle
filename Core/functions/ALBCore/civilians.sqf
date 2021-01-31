params ["_pos"];
private _garrisonPositions = [];

{
	private _array = _x buildingPos -1;
	_garrisonPositions = _garrisonPositions + _array;
} forEach (_pos nearObjects ["House", 500]);

{
	private _array = _x buildingPos -1;
	_garrisonPositions = _garrisonPositions + _array;
} forEach (_pos nearObjects ["Building", 500]);

for "_i" from 0 to 9 do
{
    private _position = selectRandom _garrisonPositions;
	private _unit = createAgent ["C_man_1",_position, [], 0, "NONE"];
	[_unit,"CIV","C"] call tb3_fnc_loadout;
	_unit setVariable ["BIS_fnc_animalBehaviour_disable", true];
	_unit limitspeed 10;
	[_unit,_garrisonPositions] spawn H_fnc_ambientCivs;
	/*[_unit] spawn {
		// DEBUG
		params ["_unit"];
		private _marker = createMarker [str _unit,position _unit];
		_marker setMarkerType "mil_dot";
		_marker setMarkerColor "ColorBlue";
		while {alive _unit} do {
			sleep 0.01;
			_marker setMarkerPos position _unit;
		};
		deleteMarker _marker;
	};*/
	_unit addEventHandler ["killed",{
		params ["_unit", "_killer", "_instigator", "_useEffects"];	
		private _penalty = ("DeathPenalty" call BIS_fnc_getParamValue)/4;
		missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")-_penalty,true];
		if (side _killer == west) then {
			[_penalty*8, position _unit, false] call H_fnc_townPoints;
		} else {
			[_penalty, position _unit, false] call H_fnc_townPoints;	
		};
	}];
};
private _group = createGroup CIVILIAN;
private _leaderPosition = [_pos, 0, 30, 4, 0, 10, 0]  call BIS_fnc_findSafePos;
private _flag =  createVehicle ["Flag_FD_Purple_F",_leaderPosition,[],0,"NONE"];
private _villageLeader = _group createUnit ["C_man_1",_leaderPosition,[],0,"NONE"];
[_villageLeader,"CIV","CL"] call tb3_fnc_loadout;
[_villageLeader] remoteExec ["H_fnc_addCivActions",0];
_villageLeader disableai "path";
_villageLeader allowDammage false;
private _flagpoles = missionNameSpace getVariable ["H_flagpoles",[]];
_flagpoles pushBack _flag;
missionNameSpace setVariable ["H_flagpoles",_flagpoles,true];
private _civleaders = missionNameSpace getVariable ["H_civleaders",[]];
_civleaders pushBack _villageLeader;
missionNameSpace setVariable ["H_civleaders",_civleaders,true];

