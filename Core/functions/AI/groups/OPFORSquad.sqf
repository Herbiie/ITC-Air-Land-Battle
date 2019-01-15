params ["_group","_pos"];
private _aiSkill = "AISkill" call BIS_fnc_getParamValue;
private _playerCount = count allPlayers;

/*
this addEventHandler [""killed"", ""
			params [""_dead"", ""_killer"", ""_instigator"", ""_useEffects""];
			[1, true] remoteExec [""H_fnc_deploypoints"",1];
			[1, position _dead, true] remoteExec [""H_fnc_townPoints"",1]""
		]
*/
		

if (_playercount > 2) then {
	"O_G_Soldier_F" createUnit [_pos, _group, "
		[this,H_enFaction,selectRandom [""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R3"",""R4"",""R5"",""R6"",""R7""]] call tb3_fLoadout;
		this addEventHandler [""killed"", {
				params ['_dead', '_killer', '_instigator', '_useEffects'];
				[1, true] remoteExec ['H_fnc_deploypoints',2];
				[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
			];
	", _aiSkill, "PRIVATE"];
};

if (_playercount > 5) then {
	"O_G_Soldier_F" createUnit [_pos, _group, "
		[this,H_enFaction,selectRandom [""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R3"",""R4"",""R5"",""R6"",""R7""]] call tb3_fLoadout;
		this addEventHandler [""killed"", {
				params ['_dead', '_killer', '_instigator', '_useEffects'];
				[1, true] remoteExec ['H_fnc_deploypoints',2];
				[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
			];
	", _aiSkill, "PRIVATE"];
};

if (_playercount > 5) then {
	"O_G_Soldier_F" createUnit [_pos, _group, "
		[this,H_enFaction,selectRandom [""LMG"",""RPG""]] call tb3_fLoadout;
		this addEventHandler [""killed"", {
				params ['_dead', '_killer', '_instigator', '_useEffects'];
				[1, true] remoteExec ['H_fnc_deploypoints',2];
				[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
			];
	", _aiSkill, "PRIVATE"];
};

if (_playercount > 5) then {
	"O_G_Soldier_F" createUnit [_pos, _group, "
		[this,H_enFaction,selectRandom [""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R3"",""R4"",""R5"",""R6"",""R7""]] call tb3_fLoadout;
		this addEventHandler [""killed"", {
				params ['_dead', '_killer', '_instigator', '_useEffects'];
				[1, true] remoteExec ['H_fnc_deploypoints',2];
				[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
			];
	", _aiSkill, "PRIVATE"];
};

if (_playercount > 10) then {
	"O_G_Soldier_F" createUnit [_pos, _group, "
		[this,H_enFaction,selectRandom [""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R3"",""R4"",""R5"",""R6"",""R7""]] call tb3_fLoadout;
		this addEventHandler [""killed"", {
				params ['_dead', '_killer', '_instigator', '_useEffects'];
				[1, true] remoteExec ['H_fnc_deploypoints',2];
				[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
			];
	", _aiSkill, "PRIVATE"];
};

if (_playercount > 10) then {
	"O_G_Soldier_F" createUnit [_pos, _group, "
		[this,H_enFaction,selectRandom [""LMG"",""RPG""]] call tb3_fLoadout;
		this addEventHandler [""killed"", {
				params ['_dead', '_killer', '_instigator', '_useEffects'];
				[1, true] remoteExec ['H_fnc_deploypoints',2];
				[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
			];
	", _aiSkill, "PRIVATE"];
};

if (_playercount > 10) then {
	"O_G_Soldier_F" createUnit [_pos, _group, "
		[this,H_enFaction,selectRandom [""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R3"",""R4"",""R5"",""R6"",""R7""]] call tb3_fLoadout;
		this addEventHandler [""killed"", {
				params ['_dead', '_killer', '_instigator', '_useEffects'];
				[1, true] remoteExec ['H_fnc_deploypoints',2];
				[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
			];
	", _aiSkill, "PRIVATE"];
};

if (_playercount > 10) then {
	"O_G_Soldier_F" createUnit [_pos, _group, "
		[this,H_enFaction,selectRandom [""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R3"",""R4"",""R5"",""R6"",""R7""]] call tb3_fLoadout;
		this addEventHandler [""killed"", {
				params ['_dead', '_killer', '_instigator', '_useEffects'];
				[1, true] remoteExec ['H_fnc_deploypoints',2];
				[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
			];
	", _aiSkill, "PRIVATE"];
};

if (_playercount > 15) then {
	"O_G_Soldier_F" createUnit [_pos, _group, "
		[this,H_enFaction,selectRandom [""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R3"",""R4"",""R5"",""R6"",""R7""]] call tb3_fLoadout;
		this addEventHandler [""killed"", {
				params ['_dead', '_killer', '_instigator', '_useEffects'];
				[1, true] remoteExec ['H_fnc_deploypoints',2];
				[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
			];
	", _aiSkill, "PRIVATE"];
};

if (_playercount > 15) then {
	"O_G_Soldier_F" createUnit [_pos, _group, "
		[this,H_enFaction,selectRandom [""LMG"",""RPG""]] call tb3_fLoadout;
		this addEventHandler [""killed"", {
				params ['_dead', '_killer', '_instigator', '_useEffects'];
				[1, true] remoteExec ['H_fnc_deploypoints',2];
				[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
			];
	", _aiSkill, "PRIVATE"];
};

if (_playercount > 15) then {
	"O_G_Soldier_F" createUnit [_pos, _group, "
		[this,H_enFaction,selectRandom [""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R3"",""R4"",""R5"",""R6"",""R7""]] call tb3_fLoadout;
		this addEventHandler [""killed"", {
				params ['_dead', '_killer', '_instigator', '_useEffects'];
				[1, true] remoteExec ['H_fnc_deploypoints',2];
				[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
			];
	", _aiSkill, "PRIVATE"];
};

if (_playercount > 15) then {
	"O_G_Soldier_F" createUnit [_pos, _group, "
		[this,H_enFaction,selectRandom [""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R3"",""R4"",""R5"",""R6"",""R7""]] call tb3_fLoadout;
		this addEventHandler [""killed"", {
				params ['_dead', '_killer', '_instigator', '_useEffects'];
				[1, true] remoteExec ['H_fnc_deploypoints',2];
				[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
			];
	", _aiSkill, "PRIVATE"];
};

"O_G_Soldier_F" createUnit [_pos, _group, "
	[this,H_enFaction,selectRandom [""LMG"",""RPG""]] call tb3_fLoadout;
	this addEventHandler [""killed"", {
			params ['_dead', '_killer', '_instigator', '_useEffects'];
			[1, true] remoteExec ['H_fnc_deploypoints',2];
			[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
		];
	
", _aiSkill, "PRIVATE"];

"O_G_Soldier_F" createUnit [_pos, _group, "
	[this,H_enFaction,selectRandom [""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R3"",""R4"",""R5"",""R6"",""R7""]] call tb3_fLoadout;
	this addEventHandler [""killed"", {
			params ['_dead', '_killer', '_instigator', '_useEffects'];
			[1, true] remoteExec ['H_fnc_deploypoints',2];
			[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
		];
	
", _aiSkill, "PRIVATE"];

"O_G_Soldier_F" createUnit [_pos, _group, "
	[this,H_enFaction,selectRandom [""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R1"",""R1"",""R1"",""R2"",""R2"",""R2"",""R3"",""R4"",""R5"",""R6"",""R7""]] call tb3_fLoadout;
	this addEventHandler [""killed"", {
			params ['_dead', '_killer', '_instigator', '_useEffects'];
			[1, true] remoteExec ['H_fnc_deploypoints',2];
			[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
		];
	
", _aiSkill, "PRIVATE"];

"O_G_Soldier_F" createUnit [_pos, _group, " 
	group this selectLeader this;
	[this,H_enFaction,""TL""] call tb3_fLoadout;
	this addEventHandler [""killed"", {
			params ['_dead', '_killer', '_instigator', '_useEffects'];
			[1, true] remoteExec ['H_fnc_deploypoints',2];
			[1, position _dead, true] remoteExec ['H_fnc_townPoints',2]}
		];
	
", _aiSkill, "CORPORAL"];
_group enableDynamicSimulation true;
