params ["_group","_pos"];
private _aiSkill = ("AISkill" call BIS_fnc_getParamValue)/4;
private _playerCount = count allPlayers;

		

if (_playercount > 2) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
};

if (_playercount > 5) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
};

if (_playercount > 5) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
};

if (_playercount > 5) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
};

if (_playercount > 10) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
};

if (_playercount > 10) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
};

if (_playercount > 10) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
};

if (_playercount > 10) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
};

if (_playercount > 15) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
};

if (_playercount > 15) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["LMG","RPG"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
};

if (_playercount > 15) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
};

if (_playercount > 15) then {
	private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
};

private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["LMG","RPG"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];

private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];

private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["R1","R1","R1","R2","R2","R2","R1","R1","R1","R2","R2","R2","R3","R4","R5","R6","R7"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];

private _crustecean = _group createUnit ["O_G_Soldier_F", _pos, [], 1, "NONE"];
[_crustecean,missionNameSpace getVariable "H_enFaction",selectRandom ["TL"]] call tb3_fLoadout;
_crustecean addMPEventHandler ["MPkilled", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+1,true];
	[1, position _dead, true] call H_fnc_townPoints;
	private _aceInstigator = _dead getVariable "ace_medical_lastdamagesource";
	_aceInstigator setVariable ["H_Allyness",(_aceInstigator getVariable "H_Allyness")+1,true];
	}
	];
	
_group enableDynamicSimulation true;
