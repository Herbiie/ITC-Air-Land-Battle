params ["_unit","_positions"];
while {alive _unit} do {
	private _movePos = selectRandom _positions;
	_unit setDestination [_movePos,"LEADER PLANNED",true];
	waitUntil {((_unit distance (expectedDestination _unit) # 0) < 3) || (behaviour _unit == "combat")};
	if (behaviour _unit == "combat") then {
		_unit limitSpeed 50;
		sleep 5;
	} else {
		_unit limitSpeed 10;
	};
};