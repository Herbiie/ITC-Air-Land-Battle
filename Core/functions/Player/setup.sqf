
	params ["_unit", "_colour","_UnitID","_loadout"];
	
	[_unit, missionNameSpace getVariable "H_Faction",_loadout] call H_fnc_Loadout;
	
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
	
	player setVariable ["H_allyness",0,true];
	
	_unit setGroupID [_UnitID];
	
	[_unit] spawn H_fnc_startOnSafe;
	[] call H_fnc_initialOptions;
	
	 _EH = _unit addMPEventHandler ["MPKilled", {
		params ["_unit", "_killer", "_instigator", "_useEffects"];
		private _penalty = "DeathPenalty" call BIS_fnc_getParamValue;
		missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")- _penalty,true];
		[_unit] call H_fnc_savegear;
		[_penalty, position _unit, false] call H_fnc_townPoints;	 
	 }];
	 