params ["_marker"];
sleep 300;
private _loop = true;
while {_loop} do {
	sleep 300;
	sleep (random 900);
	locationPositions = [];
	
	{
		private _distance = (_x # 1)  distance getMarkerPos _marker;
		locationPositions pushback [_distance, [_x]];
	} forEach (missionNameSpace getVariable "H_alb_locations");
	
	locationPositions sort true;
	
	private _nearestLocation = locationPositions # 1;
	private _chosenLocation = (missionNameSpace getVariable "H_alb_locations") # ((missionNameSpace getVariable "H_alb_locations") find _nearestLocation);
	private _currentPoints = _chosenLocation # 2;
	
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