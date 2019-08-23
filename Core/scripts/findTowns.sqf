_Locations = nearestLocations [[worldSize / 2, worldsize / 2, 0], ["NameCity","NameCityCapital","NameVillage"], worldSize];
private _locationsData = [];

missionNameSpace setVariable ["H_alb_loaded",false,true];

{	

	
		private _locationName = text _x;
		private _marker = createMarker [_locationName, locationPosition _x];
		_marker setMarkerShape "ICON";
		_marker setMarkerType "mil_marker";
		_marker setMarkerColor "ColorRed";
		_locationdata = [_x, locationPosition _x, 0];
		_locationsData pushBackUnique _locationdata;
		[_x, locationPosition _x] spawn H_fnc_setuplocation;
} forEach _locations;
missionNameSpace setVariable ["H_alb_locations",_locationsData,true];

missionNameSpace setVariable ["startingMarkers",allMapMarkers,true];
missionNameSpace setVariable ["H_alb_loaded",true,true];