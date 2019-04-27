params ["_group","_pos"];
private _aiSkill = "AISkill" call BIS_fnc_getParamValue;
private _playerCount = count allPlayers;

if (_playercount > 2) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,H_enFaction,selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator", "_useEffects"];
	[1, true] remoteExec ["H_fnc_deploypoints",2];
	[1, position _dead, true] remoteExec ["H_fnc_townPoints",2];
	_instigator setVariable ["H_Allyness", (_instigator getVariable "H_Allyness") +1,true];
	}
	];
};

if (_playercount > 3) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,H_enFaction,selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator", "_useEffects"];
	[1, true] remoteExec ["H_fnc_deploypoints",2];
	[1, position _dead, true] remoteExec ["H_fnc_townPoints",2];
	_instigator setVariable ["H_Allyness", (_instigator getVariable "H_Allyness") +1,true];
	}
	];
};

if (_playercount > 5) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,H_enFaction,selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator", "_useEffects"];
	[1, true] remoteExec ["H_fnc_deploypoints",2];
	[1, position _dead, true] remoteExec ["H_fnc_townPoints",2];
	_instigator setVariable ["H_Allyness", (_instigator getVariable "H_Allyness") +1,true];
	}
	];
};

if (_playercount > 5) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,H_enFaction,selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator", "_useEffects"];
	[1, true] remoteExec ["H_fnc_deploypoints",2];
	[1, position _dead, true] remoteExec ["H_fnc_townPoints",2];
	_instigator setVariable ["H_Allyness", (_instigator getVariable "H_Allyness") +1,true];
	}
	];
};

if (_playercount > 10) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,H_enFaction,selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator", "_useEffects"];
	[1, true] remoteExec ["H_fnc_deploypoints",2];
	[1, position _dead, true] remoteExec ["H_fnc_townPoints",2];
	_instigator setVariable ["H_Allyness", (_instigator getVariable "H_Allyness") +1,true];
	}
	];
};

if (_playercount > 15) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,H_enFaction,selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator", "_useEffects"];
	[1, true] remoteExec ["H_fnc_deploypoints",2];
	[1, position _dead, true] remoteExec ["H_fnc_townPoints",2];
	_instigator setVariable ["H_Allyness", (_instigator getVariable "H_Allyness") +1,true];
	}
	];
};

private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,H_enFaction,selectRandom ["LMG","RPG"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator", "_useEffects"];
	[1, true] remoteExec ["H_fnc_deploypoints",2];
	[1, position _dead, true] remoteExec ["H_fnc_townPoints",2];
	_instigator setVariable ["H_Allyness", (_instigator getVariable "H_Allyness") +1,true];
	}
	];

private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,H_enFaction,selectRandom ["TL"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator", "_useEffects"];
	[1, true] remoteExec ["H_fnc_deploypoints",2];
	[1, position _dead, true] remoteExec ["H_fnc_townPoints",2];
	_instigator setVariable ["H_Allyness", (_instigator getVariable "H_Allyness") +1,true];
	}
	];

_group enableDynamicSimulation true;
