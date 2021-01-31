params ["_unit","_name"];
closeDialog 0;
private _group = group _unit;
_group setGroupID [_name];
private _team = units _group;
private _teamIDs = [];
{
	_teamIDs pushBack getPlayerUID _x;
} forEach _team;

private _allGroups = missionNameSpace getVariable ["h_groups",[]];
_allGroups pushBack [_group,_name,_team,_teamIDs,false];
missionNameSpace setVariable ["h_groups",_allGroups,true];
[] call H_fnc_squadMenu;