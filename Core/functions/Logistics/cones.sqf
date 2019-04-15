params ["_pos","_radius"];

private _a = 0;
private _b = 0;

while {_a < 30} do {
	private _conePos = _pos getPos [_radius, _b];
	private _cone = "RoadBarrier_small_F" createVehicle _conePos;
	_cone setDir _b;
	_a = _a + 1;
	_b = _b + 12;
};