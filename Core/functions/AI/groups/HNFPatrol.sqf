params ["_group","_pos"];
private _aiSkill = ("AISkill" call BIS_fnc_getParamValue)/4;

"I_Soldier_F" createUnit [_pos, _group, " 
	[this,'HNF',selectRandom ['LMG','RPG']] call tb3_fnc_loadout;
", _aiSkill, "PRIVATE"];

"I_Soldier_F" createUnit [_pos, _group, " 
	[this,'HNF','R'] call tb3_fnc_loadout;
", _aiSkill, "PRIVATE"];

"I_Soldier_F" createUnit [_pos, _group, " 
	[this,'HNF','R'] call tb3_fnc_loadout;
", _aiSkill, "PRIVATE"];

"I_Soldier_F" createUnit [_pos, _group, " 
	[this,'HNF','R'] call tb3_fnc_loadout;
", _aiSkill, "PRIVATE"];

"I_Soldier_F" createUnit [_pos, _group, " 
	[this,'HNF','R'] call tb3_fnc_loadout;
", _aiSkill, "PRIVATE"];

"I_Soldier_F" createUnit [_pos, _group, " 
	group this selectLeader this;
	
	[this,'HNF','TL'] call tb3_fnc_loadout;
", _aiSkill, "CORPORAL"];

[leader _group, format ['HNF Group %1', random 1000],true,_pos] spawn H_fnc_aiSetup;
