params ["_unit"];
private _id = getPlayerUID _unit;
private _groupFind = [_unit] call H_fnc_findSquad;
private _allGroups = missionNameSpace getVariable ["h_groups",[]];
private _newGroup = createGroup west;
[_unit] joinSilent _newGroup;
_newGroup setGroupID ["Unassigned"];
if ((_groupFind # 1)== -1) exitWith {};
private _Oldgroup = _allGroups # (_groupFind # 1);
_Oldgroup params ["_group","_name","_team","_teamIDs","_locked"];
_team deleteAt (_team find _unit);
_teamIDs deleteAt (_teamIDs find _id);
_Oldgroup = [_group,_name,_team,_teamIDs,_locked];
_allGroups deleteAt (_groupFind # 1);
if (count _teamIDs > 0) then {
	_allGroups pushBack _Oldgroup;
};
missionNameSpace setVariable ["h_groups",_allGroups,true];
