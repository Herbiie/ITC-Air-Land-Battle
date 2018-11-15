params ["_marker"];

private _loop = true;
while {_loop} do {
	//sleep 2700;
	sleep 30;
	private _action = selectRandom [1, 2];
	if (_action == 1) then {
		_loop = false;
		_mission = selectRandom [H_fnc_largeAttack];
		[_marker] call _mission;
		_loop = true;
	};
	
};