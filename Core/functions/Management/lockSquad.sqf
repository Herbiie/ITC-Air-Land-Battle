params ["_lock"];
private _allGroups = missionNameSpace getVariable ["h_groups",[]];
private _findGroup = [player] call H_fnc_findSquad;
private _thisGroup = _allGroups # (_findGroup # 1);
_thisGroup params ["_group","_name","_team","_teamIDs","_locked"];
_thisGroup = [_group,_name,_team,_teamIDs,_lock];
_allGroups deleteAt (_findGroup # 1);
_allGroups pushBack _thisGroup;
missionNameSpace setVariable ["h_groups",_allGroups,true];