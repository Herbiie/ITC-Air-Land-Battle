params ["_group","_pos"];
private _aiSkill = ("AISkill" call BIS_fnc_getParamValue)/4;
"I_G_Soldier_F" createUnit [_pos, _group, " 
	[this,'HNF','POL'] call tb3_fLoadout;
", _aiSkill, "PRIVATE"];

"I_G_Soldier_F" createUnit [_pos, _group, " 
	group this selectLeader this;
	[this, format ['HNF Group %1', random 1000],true,_pos] spawn H_fnc_aiSetup;
	[this,'HNF','POL'] call tb3_fLoadout;
", _aiSkill, "CORPORAL"];
