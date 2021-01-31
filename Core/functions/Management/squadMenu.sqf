private _allGroups = missionNameSpace getVariable ["h_groups",[]];

_dialog = createDialog "SQUADS_DIALOG";

{
	_x params ["_group","_name","_team","_teamIDs","_locked"];
	if (!_locked) then {
		private _number = count _team;
		private _text = format ["%1 (%2)",_name,_number];
		lbAdd [1502,_text];
		lbSetData [1502, _forEachIndex, str _forEachIndex];
	};
} forEach _allGroups;