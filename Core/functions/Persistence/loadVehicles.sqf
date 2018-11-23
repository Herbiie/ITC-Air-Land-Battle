sleep 0.1;
private _vehicleList = profileNamespace getVariable "H_alb_vehiclesSavedAltis";
{
	_x params ["_class", "_position", "_dir", "_fuel","_cost","_magazines","_weapons","_items","_backpacks"];
	private _vehicle = _class createVehicle _position;
	_vehicle setDir _dir;
	_vehicle setFuel _fuel;
	clearMagazineCargoGlobal _vehicle;
	clearWeaponCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
	clearBackpackCargoGlobal _vehicle;
	if (count _magazines > 0) then {
		private _addMagazines = _magazines call BIS_fnc_consolidateArray;
		{
			_vehicle addMagazineCargoGlobal _x;
		} forEach _addMagazines;
	};
	if (count _weapons > 0) then {
		private _addWeapons = _weapons call BIS_fnc_consolidateArray;
		{
			_vehicle addWeaponCargoGlobal _x;
		} forEach _addWeapons;
	};
	if (count _items > 0) then {
		private _addItems = _items call BIS_fnc_consolidateArray;
		{
			_vehicle addItemCargoGlobal _x;
		} forEach _addItems;
	};
	if (count _backpacks > 0) then {
		{
			_vehicle addBackpackCargoGlobal [_x select 0, 1];
			private _backpackNumber = count (everyBackpack _vehicle) - 1;
			private _thisbackpack = everyBackpack _vehicle select _backpackNumber;
			if (count (_x select 1) > 0) then {
				private _addMagazines = _x select 1 call BIS_fnc_consolidateArray;
				{
					_thisBackpack addMagazineCargoGlobal _x;
				} forEach _addMagazines;
			};
			if (count (_x select 2) > 0) then {
				private _addWeapons = _x select 2 call BIS_fnc_consolidateArray;
				{
					_thisBackpack addWeaponCargoGlobal _x;
				} forEach _addWeapons;
			};
			if (count (_x select 3) > 0) then {
				private _addItems = _x select 3 call BIS_fnc_consolidateArray;
				{
					_thisBackpack addItemCargoGlobal _x;
				} forEach _addItems;
			};
		} forEach _backpacks;
	};
	H_alb_westVehicles = H_alb_westVehicles + [[_vehicle,_cost]];
	publicVariable "H_alb_westVehicles";
} forEach _vehicleList;