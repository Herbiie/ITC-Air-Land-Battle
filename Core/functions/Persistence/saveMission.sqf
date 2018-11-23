profileNamespace setVariable ["H_alb_fobsSavedAltis",H_alb_fobs];
profileNamespace setVariable ["H_alb_locationsSavedAltis",H_alb_locations];
profileNamespace setVariable ["H_alb_deploypointsSavedAltis",H_alb_deploypoints];

H_alb_vehiclestosave = [];

{	
	private _veh = _x select 0;
	private _vehicleType = (getDescription (_veh)) select 0;
	private _position = getPos (_veh);
	private _direction = getDir (_veh);
	private _fuel = fuel (_veh);
	private _cost = _x select 1;
	private _backpacks = [];
	{		
		private _backpackItems = itemCargo _x;
		private _backpackWeapons = weaponCargo _x;
		private _backpackMagazines = magazineCargo _x;
		private _backpackDescription = typeOf _x;
		_backpacks = _backpacks + [[_backpackDescription, _backpackMagazines, _backpackWeapons, _backpackItems]];
	} forEach everyBackpack _veh;
	private _magazines = magazineCargo _veh;
	private _weapons = weaponCargo _veh;
	private _items = itemCargo _veh;
	private _vehicleArray = [_vehicleType, _position, _direction, _fuel, _cost,_magazines, _weapons, _items, _backpacks];
	H_alb_vehiclestosave = H_alb_vehiclestosave + [_vehicleArray];
} forEach H_alb_westVehicles;

profileNamespace setVariable ["H_alb_vehiclesSavedAltis",H_alb_vehiclestosave];

saveProfileNamespace;
["saveMission"] remoteExec ["BIS_fnc_endMissionServer",0];