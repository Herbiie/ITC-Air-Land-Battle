private _crates = profileNamespace getVariable "H_alb_savedCratesA";

crateNames = [];
{
	cratenames = cratenames + [(_x select 0)];
} forEach _crates;
publicVariable "crateNames";

sleep 0.1;

{
	private _box = nearestObject [(_x select 2), "B_supplyCrate_F"];
	private _crateDetails = _crates select (crateNames find ((H_alb_fobs select 0) select 3));
	private _backpacks = _crateDetails select 1;
	private _magazines = _crateDetails select 2;
	private _items = _crateDetails select 3;
	private _weapons = _crateDetails select 4;
	
	clearMagazineCargoGlobal _box;
	clearWeaponCargoGlobal _box;
	clearItemCargoGlobal _box;
	clearBackpackCargoGlobal _box;
	if (count _magazines > 0) then {
		private _addMagazines = _magazines call BIS_fnc_consolidateArray;
		{
			_box addMagazineCargoGlobal _x;
		} forEach _addMagazines;
	};
	if (count _weapons > 0) then {
		private _addWeapons = _weapons call BIS_fnc_consolidateArray;
		{
			_box addWeaponCargoGlobal _x;
		} forEach _addWeapons;
	};
	if (count _items > 0) then {
		private _addItems = _items call BIS_fnc_consolidateArray;
		{
			_box addItemCargoGlobal _x;
		} forEach _addItems;
	};
	if (count _backpacks > 0) then {
		{
			_box addBackpackCargoGlobal [_x select 0, 1];
			private _backpackNumber = count (everyBackpack _box) - 1;
			private _thisbackpack = everyBackpack _box select _backpackNumber;
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
	
	
} forEach H_alb_fobs;