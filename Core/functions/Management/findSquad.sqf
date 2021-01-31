params ["_unit"];
private _id = getPlayerUID _unit;
private _allGroups = missionNameSpace getVariable ["h_groups",[]];
private _Unitgroup = -1;
private _groupNumber = -1;
{
	_x params ["_group","_name","_team","_teamIDs","_locked"];
	if (_id in _teamIDs) then {
		_Unitgroup = _group; 
		_groupNumber = _forEachIndex;
	};
} forEach _allGroups;
[_Unitgroup,_groupNumber]