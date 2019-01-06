profileNamespace setVariable ["H_alb_fobsSavedA",H_alb_fobs];
profileNamespace setVariable ["H_alb_locationsSavedA",H_alb_locations];
profileNamespace setVariable ["H_alb_deploypointsSavedA",H_alb_deploypoints];
profileNamespace setVariable ["H_alb_gearTierSavedA",H_alb_gearTier];
profileNamespace setVariable ["H_alb_dateSavedA",date];

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

{
	[_x] call H_fnc_savePlayer;
} forEach allPlayers;

[] call H_fnc_saveSupplies;

profileNamespace setVariable ["H_alb_playerIDsSavedA",H_alb_playerIDs];
profileNamespace setVariable ["H_alb_playersSavedA",H_alb_players];
profileNamespace setVariable ["H_alb_vehiclesSavedA",H_alb_vehiclestosave];
profileNamespace setVariable ["H_alb_commanderSavedA",currentCommander select 0];
profileNamespace setVariable ["H_alb_subcommanderSavedA",subCommanders];

saveProfileNamespace;
["saveMission"] remoteExec ["BIS_fnc_endMissionServer",0];