params ["_points","_position","_add"];
	
	locationPositions = [];
	
	{
		private _distance = (_x select 1)  distance _position;
		locationPositions pushback [_distance, _x select 0];
	} forEach H_alb_locations;
	
	locationPositions sort true;
	
	private _nearestLocation = locationPositions select 0;
	private _nearestLocationName = (_nearestLocation select 1) splitstring "-";
	private _locationNumber = parseNumber (_nearestLocationName select (count _nearestLocationName - 1));
	private _chosenLocation = H_alb_locations select _locationNumber;
	private _currentPoints = _chosenLocation select 2;
	
	if (_add) then {
		_chosenLocation set [2, _currentPoints + _points];
	} else {
		_chosenLocation set [2, _currentPoints - _points];
	};
	