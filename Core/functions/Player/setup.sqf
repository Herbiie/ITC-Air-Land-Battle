
	params ["_unit", "_newSpawn", "_colour","_UnitID","_loadout"];
	
	if ((("Faction" call BIS_fnc_getParamValue) == 1) && _newSpawn) then {
			[_unit, "CTRG",_loadout] call H_fnc_Loadout;
	};
	if ((("Faction" call BIS_fnc_getParamValue) == 2) && _newSpawn) then {
			[_unit, "NATO",_loadout] call H_fnc_Loadout;
	};
	
	switch (_colour) do {
		case "RED": {
			_unit assignTeam "RED";
		};
		case "BLUE": {
			_unit assignTeam "BLUE";
		};
		case "GREEN": {
			_unit assignTeam "GREEN";
		};
		case "YELLOW": {
			_unit assignTeam "YELLOW";
		};
	
	};
	
	
	_unit setGroupID [_UnitID];
	
	[_unit] spawn H_fnc_startOnSafe;
	
	 _EH = _unit addEventHandler ["killed", {
		params ["_unit", "_killer", "_instigator", "_useEffects"];
		private _penalty = "DeathPenalty" call BIS_fnc_getParamValue;
		[_penalty, false] remoteExec ["H_fnc_deploypoints",2];
		[_this select 0] call H_fnc_savegear;
		[_penalty, position _unit, false] remoteExec ["H_fnc_townPoints",2];	 
	 }];
	 
[west,["baseTask"],["Build patrol bases and FOBs, request missions and fight insurgents to help secure an area. When a town is secure, its flag will go green.","Fight the Insurgency","basetaskmarker"],objNull,1,3,true] call BIS_fnc_taskCreate;

[] call H_fnc_initialOptions;