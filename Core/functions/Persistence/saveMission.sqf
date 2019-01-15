profileNamespace setVariable ["H_alb_fobsSavedA",H_alb_fobs];

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

private _crates = [];
{
	if (!(vehicleVarName _x == "arsenal")) then {
		private _backpacks = [];
		{		
			private _backpackItems = itemCargo _x;
			private _backpackWeapons = weaponCargo _x;
			private _backpackMagazines = magazineCargo _x;
			private _backpackDescription = typeOf _x;
			_backpacks = _backpacks + [[_backpackDescription, _backpackMagazines, _backpackWeapons, _backpackItems]];
		} forEach everyBackpack _x;
		private _magazines = magazineCargo _x;
		private _weapons = weaponCargo _x;
		private _items = itemCargo _x;
		private _nearestMarker = [allMapMarkers, _x] call BIS_fnc_nearestPosition;
		private _crateVariable = [_nearestMarker, _backpacks, _magazines, _items, _weapons];
		_crates = _crates + [_crateVariable];
	};
} forEach allMissionObjects "B_supplyCrate_F";


{
	[_x] call H_fnc_savePlayer;
} forEach allPlayers;
private _saveVariable = [H_alb_fobs,H_alb_locations,H_alb_deploypoints,H_alb_gearTier,date,H_alb_playerIDs,H_alb_players,H_alb_vehiclestosave,_crates];
profileNamespace setVariable ["H_alb_Altis",_saveVariable];

saveProfileNamespace;