sleep 1;
["Notification",["Mission Saving",format ["%1 Is Saving the Mission", currentCommander # 2]]] remoteExec ["BIS_fnc_showNotification",0];

H_alb_markerstosave = [];

{
	private _markerType = getMarkerType _x;
	if (!(_x in (missionNameSpace getVariable "startingMarkers")) && !((_markerType == "respawn_unknown") || (_markerType == "respawn_inf") || (_markerType == "respawn_motor") || (_markerType == "respawn_armor") || (_markerType == "respawn_air") || (_markerType == "respawn_plane") || (_markerType == "respawn_naval") || (_markerType == "respawn_para"))) then {
		private _markerColor = getMarkerColor _x;
		private _markerSize = getMarkerSize _x;
		private _markerPos = getMarkerPos _x;
		private _markerShape = markerShape _x;
		private _markerDir = markerDir _x;
		private _markerBrush = markerBrush _x;
		private _markerText = markerText _x;
		private _marker = [_x, _markerType, _markerColor, _markerSize, _markerPos, _markerShape, _markerDir, _markerBrush, _markerText];
		H_alb_markerstosave pushBack _marker;
	};
} forEach allMapMarkers;

sleep 1;

H_alb_vehiclestosave = [];

{	
	private _veh = _x # 0;
	if (alive _veh) then {
		private _vehicleType = (getDescription (_veh)) # 0;
		private _position = getPos (_veh);
		private _direction = getDir (_veh);
		private _fuel = fuel (_veh);
		private _cost = _x # 1;
		private _backpacks = [];
		{		
			private _backpackItems = itemCargo _x;
			private _backpackWeapons = weaponCargo _x;
			private _backpackMagazines = magazineCargo _x;
			private _backpackDescription = typeOf _x;
			_backpacks pushBack [_backpackDescription, _backpackMagazines, _backpackWeapons, _backpackItems];
		} forEach everyBackpack _veh;
		private _magazines = magazineCargo _veh;
		private _weapons = weaponCargo _veh;
		private _items = itemCargo _veh;
		private _damageArray = getAllHitPointsDamage _veh;
		private _damage = [];
		{
			private _thisDamage = [_x, ((_damageArray # 2) # _forEachIndex)];
			_damage = _damage + [_thisDamage];
		} forEach (_damageArray # 0);
		private _vehicleArray = [_vehicleType, _position, _direction, _fuel, _cost,_magazines, _weapons, _items, _backpacks, _damage];
		H_alb_vehiclestosave pushBack _vehicleArray;
	};
} forEach (missionNameSpace getVariable "H_alb_westVehicles");

sleep 1;

private _crates = [];
{
	private _nearestMarker = [allMapMarkers, _x] call BIS_fnc_nearestPosition;
	if (!(_nearestMarker == "hqmarker")) then {
		private _backpacks = [];
		{		
			private _backpackItems = itemCargo _x;
			private _backpackWeapons = weaponCargo _x;
			private _backpackMagazines = magazineCargo _x;
			private _backpackDescription = typeOf _x;
			_backpacks pushBack [_backpackDescription, _backpackMagazines, _backpackWeapons, _backpackItems];
		} forEach everyBackpack _x;
		private _magazines = magazineCargo _x;
		private _weapons = weaponCargo _x;
		private _items = itemCargo _x;
		private _pos = position _x;
		private _crateVariable = [_nearestMarker, _backpacks, _magazines, _items, _weapons,_pos];
		_crates pushBack _crateVariable;
	};
} forEach allMissionObjects "B_supplyCrate_F";

sleep 1;

private _fuelCanisters = [];

{
	private _fuelPos = position _x;
	private _fuelAmount = [_x] call ace_refuel_fnc_getFuel;
	_fuelCanisters pushBack [_fuelPos, _fuelAmount];
}  forEach allMissionObjects "FlexibleTank_01_sand_F";

private _wheels = [];

{
	private _wheelPos = position _x;
	_wheels pushBack _wheelPos;
}  forEach allMissionObjects "ACE_Wheel";

sleep 1;

{
	[_x] call h_fnc_savePlayer;
	sleep 1;
} forEach allPlayers;

private _saveVariable = [(missionNameSpace getVariable "H_alb_fobs"),(missionNameSpace getVariable "H_alb_locations"),(missionNameSpace getVariable "H_alb_deploypoints"),(missionNameSpace getVariable "H_alb_gearTier"),date,(missionNameSpace getVariable "H_alb_playerIDs"),(missionNameSpace getVariable "H_alb_players"),H_alb_vehiclestosave,_crates,H_alb_markerstosave,_fuelCanisters,_wheels];
profileNamespace setVariable ["H_alb_Altis",_saveVariable];

sleep 3;

saveProfileNamespace;
sleep 5;
["Notification",["Mission Saved",format ["%1 Saved the Mission", currentCommander # 2]]] remoteExec ["BIS_fnc_showNotification",0];