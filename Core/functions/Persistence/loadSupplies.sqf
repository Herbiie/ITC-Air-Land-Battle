{
	private _pos = _x # 5;
	private _box = nearestObject [_pos, "B_supplyCrate_F"];
	private _backpacks = _x # 1;
	private _magazines = _x # 2;
	private _items = _x # 3;
	private _weapons = _x # 4;
	
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
			_box addBackpackCargoGlobal [_x # 0, 1];
			private _thisbackpack = (everyBackpack _box) # _forEachIndex;
			if (count (_x # 1) > 0) then {
				private _addMagazines = _x # 1 call BIS_fnc_consolidateArray;
				{
					_thisBackpack addMagazineCargoGlobal _x;
				} forEach _addMagazines;
			};
			if (count (_x # 2) > 0) then {
				private _addWeapons = _x # 2 call BIS_fnc_consolidateArray;
				{
					_thisBackpack addWeaponCargoGlobal _x;
				} forEach _addWeapons;
			};
			if (count (_x # 3) > 0) then {
				private _addItems = _x # 3 call BIS_fnc_consolidateArray;
				{
					_thisBackpack addItemCargoGlobal _x;
				} forEach _addItems;
			};
		} forEach _backpacks;
	};
	
	
} forEach (missionNameSpace getVariable "H_alb_crates");

{
	private _fuel = "FlexibleTank_01_sand_F" createVehicle (_x # 0);
	[_fuel, 1] call ace_cargo_fnc_setSize;
	[_fuel, true, [0, 1, 1], 10] call ace_dragging_fnc_setCarryable;
	[_fuel, (_X # 2)] call ace_refuel_fnc_setFuel;
} forEach (missionNameSpace getVariable "H_alb_fuelCanisters");



{
	"ACE_Wheel" createVehicle _x;
} forEach H_alb_wheels;