params ["_group","_pos","_callsign","_patrol"];
private _aiSkill = "AISkill" call BIS_fnc_getParamValue;
"B_Soldier_F" createUnit [getMarkerPos _pos, _group, " 
	[this, format [""%1AI"", H_faction], ""AR""] call tb3_fLoadout;
", _aiSkill, "PRIVATE"];

"B_Soldier_F" createUnit [getMarkerPos _pos, _group, " 
	[this, format [""%1AI"", H_faction], ""R""] call tb3_fLoadout;
", _aiSkill, "PRIVATE"];

"B_Soldier_F" createUnit [getMarkerPos _pos, _group, " 
	[this, format [""%1AI"", H_faction], ""R""] call tb3_fLoadout;
", _aiSkill, "PRIVATE"];

"B_Soldier_F" createUnit [getMarkerPos _pos, _group, " 
	group this selectLeader this;
	[this, format [""%1AI"", H_faction], ""TL""] call tb3_fLoadout;
	[this, _callsign,_patrol,_pos] spawn H_fnc_aiSetup;
", _aiSkill, "CORPORAL"];