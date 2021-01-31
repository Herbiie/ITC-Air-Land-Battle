params ["_marker"];
sleep 300;
private _loop = true;
while {_loop} do {
	sleep 300;
	sleep (random 900);
	_closestLoc = [getMarkerPos _marker] call H_fnc_findClosestTown;
	private _currentPoints = _closestLoc # 2;
	
	if (_currentPoints >= 400) then {
		actionChance = 2;
	};
	if ((_currentPoints >= 300) && (_currentPoints < 400)) then {
		actionChance = selectRandom [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
	};
	if ((_currentPoints >= 200) && (_currentPoints < 300)) then {
		actionChance = selectRandom [1, 2, 3, 4, 5, 6, 7, 8, 9];
	};
	if ((_currentPoints >= 100) && (_currentPoints < 200)) then {
		actionChance = selectRandom [1, 2, 3, 4, 5, 6];
	};
	if (_currentPoints < 100) then {
		actionChance = selectRandom [1, 2, 3];
	};
	
		if (actionChance == 1) then {
		_loop = false;
		_mission = selectRandom [H_fnc_infAttack,H_fnc_mortarAttack,H_fnc_mortarAttack];
		[_marker] call _mission;
		_loop = true;
	};
	
};