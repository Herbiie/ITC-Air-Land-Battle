params ["_base"];
	private _pos = [getMarkerPos _base, 500, 1000, 5, 0, 10, 0]  call BIS_fnc_findSafePos;
   private _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos, [], 20];
while {!isNull _nearRoad OR _closeObjects < 12} do {
     _pos = [getMarkerPos _base, 500, 1000, 5, 0, 10, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos, [], 20];
};
private _mortar = "I_Mortar_01_F" createVehicle _pos;
createVehicleCrew _mortar;
private _group = createGroup east;
(crew _mortar) joinSilent _group;
sleep 3;
private _target = [[[getMarkerPos _base, 150]],[]] call BIS_fnc_randomPos;
private _rounds = ceil random 3;
_mortar doArtilleryFire [_target, "8Rnd_82mm_Mo_shells", _rounds];
sleep 3;
private _target = [[[getMarkerPos _base, 150]],[]] call BIS_fnc_randomPos;
private _rounds = ceil random 3;
_mortar doArtilleryFire [_target, "8Rnd_82mm_Mo_shells", _rounds];
sleep 3;
private _target = [[[getMarkerPos _base, 150]],[]] call BIS_fnc_randomPos;
private _rounds = ceil random 3;
_mortar doArtilleryFire [_target, "8Rnd_82mm_Mo_shells", _rounds];

sleep 600;
deleteVehicle _mortar;