
	params ["_unit", "_UnitID","_loadout"];
	
	[_unit, missionNameSpace getVariable "H_Faction",_loadout] call H_fnc_Loadout;
		
	player setVariable ["H_allyness",15,true];
	player setVariable ["H_name",profileName,true];
	
	private _group = createGroup west;
	[_unit] joinSilent _group;
	
	_group setGroupID ["Unassigned"];
	
	[_unit] spawn H_fnc_startOnSafe;
	[] call H_fnc_initialOptions;
	
	 _EH = _unit addMPEventHandler ["MPKilled", {
		params ["_unit", "_killer", "_instigator", "_useEffects"];
		private _penalty = "DeathPenalty" call BIS_fnc_getParamValue;
		missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")- _penalty,true];
		[_penalty, position _unit, false] call H_fnc_townPoints;	 
	 }];
	 