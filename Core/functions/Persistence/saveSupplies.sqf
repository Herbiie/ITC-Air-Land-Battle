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
profileNamespace setVariable ["H_alb_savedCratesA",_crates];