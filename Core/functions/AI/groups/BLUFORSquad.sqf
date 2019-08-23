params ["_group","_pos","_callsign","_patrol"];
private _aiSkill = ("AISkill" call BIS_fnc_getParamValue)/4;
"B_Soldier_F" createUnit [_pos, _group, " 
	[this, missionNameSpace getVariable 'H_aiFaction', 'AR'] call tb3_fLoadout;
", _aiSkill, "PRIVATE"];

"B_Soldier_F" createUnit [_pos, _group, " 
	[this, missionNameSpace getVariable 'H_aiFaction', 'R'] call tb3_fLoadout;
", _aiSkill, "PRIVATE"];

"B_Soldier_F" createUnit [_pos, _group, " 
	[this, missionNameSpace getVariable 'H_aiFaction', 'R'] call H_fnc_aiLoadout;
", _aiSkill, "PRIVATE"];

"B_Soldier_F" createUnit [_pos, _group, " 
	group this selectLeader this;
	[this, missionNameSpace getVariable 'H_aiFaction', 'TL'] call tb3_fLoadout;
", _aiSkill, "CORPORAL"];
"B_Soldier_F" createUnit [_pos, _group, " 
	[this, missionNameSpace getVariable 'H_aiFaction', 'AR'] call tb3_fLoadout;
", _aiSkill, "PRIVATE"];

"B_Soldier_F" createUnit [_pos, _group, " 
	[this, missionNameSpace getVariable 'H_aiFaction', 'R'] call tb3_fLoadout;
", _aiSkill, "PRIVATE"];

"B_Soldier_F" createUnit [_pos, _group, " 
	[this, missionNameSpace getVariable 'H_aiFaction', 'R'] call tb3_fLoadout;
", _aiSkill, "PRIVATE"];

"B_Soldier_F" createUnit [_pos, _group, " 
	group this selectLeader this;
	[this, missionNameSpace getVariable 'H_aiFaction', 'TL'] call tb3_fLoadout;
", _aiSkill, "CORPORAL"];

"B_Soldier_F" createUnit [_pos, _group, " 
	group this selectLeader this;
	[this, missionNameSpace getVariable 'H_aiFaction', 'SL'] call tb3_fLoadout;
	[this, _callsign,_patrol,_pos] spawn H_fnc_aiSetup;
", _aiSkill, "SERGEANT"];





