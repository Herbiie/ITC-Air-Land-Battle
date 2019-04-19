H_alb_markerstosave = [];

{
	if (!(_x in startingMarkers)) then {
		private _markerType = getMarkerType _x;
		private _markerColor = getMarkerColor _x;
		private _markerSize = getMarkerSize _x;
		private _markerPos = getMarkerPos _x;
		private _markerShape = markerShape _x;
		private _markerDir = markerDir _x;
		private _markerBrush = markerBrush _x;
		private _markerText = markerText _x;
		private _marker = [_x, _markerType, _markerColor, _markerSize, _markerPos, _markerShape, _markerDir, _markerBrush, _markerText];
		H_alb_markerstosave = H_alb_markerstosave + [_marker];
	};
} forEach allMapMarkers;

H_alb_vehiclestosave = [];

{	
	private _veh = _x select 0;
	if (alive _veh) then {
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
		private _damageArray = getAllHitPointsDamage _veh;
		private _damage = [];
		{
			private _thisDamage = [_x, ((_damageArray select 2) select _forEachIndex)];
			_damage = _damage + [_thisDamage];
		} forEach (_damageArray select 0);
		private _vehicleArray = [_vehicleType, _position, _direction, _fuel, _cost,_magazines, _weapons, _items, _backpacks, _damage];
		H_alb_vehiclestosave = H_alb_vehiclestosave + [_vehicleArray];
	};
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

private _fuelCanisters = [];

{
	private _fuelPos = position _x;
	private _fuelAmount = [_x] call ace_refuel_fnc_getFuel;
	_fuelCanisters = _fuelCanisters + [[_fuelPos, _fuelAmount]];
}  forEach allMissionObjects "FlexibleTank_01_sand_F";

{
	[] remoteExec ["H_fnc_savePlayer",_x];
} forEach allPlayers;

private _saveVariable = [H_alb_fobs,H_alb_locations,H_alb_deploypoints,H_alb_gearTier,date,H_alb_playerIDs,H_alb_players,H_alb_vehiclestosave,_crates,H_alb_markerstosave,_fuelCanisters];
profileNamespace setVariable ["H_alb_Ruha",_saveVariable];


saveProfileNamespace;
["Notification",["Mission Saved",format ["%1 Saved the Mission", currentCommander select 2]]] remoteExec ["BIS_fnc_showNotification",0];