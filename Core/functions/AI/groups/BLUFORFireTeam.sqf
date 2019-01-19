params ["_group","_pos","_callsign","_patrol"];
private _aiSkill = "AISkill" call BIS_fnc_getParamValue;
"B_Soldier_F" createUnit [getMarkerPos _pos, _group, " 
	[this, H_aiFaction, ""AR""] call tb3_fLoadout;
", _aiSkill, "PRIVATE"];

"B_Soldier_F" createUnit [getMarkerPos _pos, _group, " 
	[this, H_aiFaction, ""R""] call tb3_fLoadout;
", _aiSkill, "PRIVATE"];

"B_Soldier_F" createUnit [getMarkerPos _pos, _group, " 
	[this, H_aiFaction, ""R""] call H_fnc_aiLoadout;
", _aiSkill, "PRIVATE"];

"B_Soldier_F" createUnit [getMarkerPos _pos, _group, " 
	group this selectLeader this;
	[this, H_aiFaction, ""TL""] call tb3_fLoadout;
	[this, _callsign,_patrol,_pos] spawn H_fnc_aiSetup;
", _aiSkill, "CORPORAL"];