
	params ["_unit", "_colour","_UnitID","_loadout"];
	
	[_unit, H_Faction,_loadout] call H_fnc_Loadout;
	
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
	 
[] call H_fnc_initialOptions;