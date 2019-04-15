params ["_points","_position","_add"];
	
	_closestLoc = nil;
	{
	   if(isNil "_closestLoc" || {(_position distance (_x # 1)) < (_position distance (_closestLoc # 1))}) then {_closestLoc = _x};
	} forEach H_alb_locations;
	private _locSelect = H_alb_locations find _closestLoc;
	private _chosenLocation = H_alb_locations deleteAt _locSelect;
	private _currentPoints = _chosenLocation select 2;
	
	if (_add) then {
		_chosenLocation set [2, _currentPoints + _points];
	} else {
		_chosenLocation set [2, _currentPoints - _points];
	};
	
	H_alb_locations = H_alb_locations + [_chosenLocation];
	publicVariable "H_alb_locations";
	