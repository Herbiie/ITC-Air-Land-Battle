_Locations = nearestLocations [getMarkerPos "admin", ["NameCity","NameCityCapital","NameVillage"], 9999999];


private _a = 0;
{	

	private _checkMil = [locationPosition _x, 250] call H_fnc_militaryBuildings;
	if (count _checkMil == 0) then {
		private _locationName = format ["location-%1",_a];
		private _marker = createMarker [_locationName, locationPosition _x];
		_marker setMarkerShape "ICON";
		_marker setMarkerType "mil_marker";
		_marker setMarkerColor "ColorRed";
		_a = _a + 1;
		_locationdata = [ _locationname, locationPosition _x, 0];
		H_alb_locations = H_alb_locations + [_locationdata];
		[_locationname, locationPosition _x] spawn H_fnc_setuplocation;
	};
} forEach _locations;
publicVariable "H_alb_locations";

startingMarkers = allMapMarkers;
publicVariable "startingMarkers";