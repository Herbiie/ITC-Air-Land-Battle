params ["_unit","_pos", "_radius"];

while {true} do {
	private _position = [_pos, 10, _radius, 2, 0, 1, 0, [], [0,0,0]]  call BIS_fnc_findSafePos;
	_unit doMove _position;
	group _unit  setSpeedMode "LIMITED";
	group _unit  setBehaviour "SAFE";
	waitUntil {(_unit distance _pos) < 5};
};