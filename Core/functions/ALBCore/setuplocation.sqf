params ["_location","_position"];



private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
private _group1 = [_pos, East, (configfile >> "CfgGroups" >> "Indep" >> "IND_C_F" >> "Infantry" >> "BanditFireTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
[leader _group1, _position, 500] spawn H_fnc_patrol; 
[leader _group1, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
private _pos = [_position, 0, 500, 2, 0, 75, 0]  call BIS_fnc_findSafePos;
private _group2 = [_pos, East, (configfile >> "CfgGroups" >> "Indep" >> "IND_C_F" >> "Infantry" >> "BanditFireTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
[leader _group2, _position, 500] spawn H_fnc_patrol;
[leader _group2, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;

private _aiNumber = "EnemyAmount" call BIS_fnc_getParamValue;

while {true} do {

	private _LocationName = _location splitstring "-";
	private _locationNumber = parseNumber (_locationname select (count _locationName - 1));
	private _thisLocation = H_alb_locations select _locationNumber;
	private _locationPoints = _thisLocation select 2;
	if (_locationPoints >= 100) then {
		_location setMarkerColor "ColorGreen";
	};
	if (_locationPoints < 100) then {
		_location setMarkerColor "ColorRed";
	};
	
	if ((({side _x == east && (_x distance _position) < 500} count allUnits) < _aiNumber) && _locationPoints > 100) then {
		private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
		private _group = [_pos, East, (configfile >> "CfgGroups" >> "Indep" >> "IND_C_F" >> "Infantry" >> "BanditFireTeam"),[],[],[],[],[]] call BIS_fnc_spawnGroup;
		[leader _group, _position, 500] spawn H_fnc_patrol;
		[leader _group, format ["Enemy Group %1", random 1000], false] spawn H_fnc_aiSetup;
	};
	sleep 10;
};