params ["_marker"];

private _loop = true;
while {_loop} do {
	sleep 600;
	private _action = selectRandom [1, 2, 3, 4, 5, 6];

	if (_action == 1) then {
		_loop = false;
		_mission = selectRandom [H_fnc_infAttack, H_fnc_mortarAttack];
		[_marker] call _mission;
		_loop = true;
	};
	
};
