params ["_unit"];

_unit disableai "move";
_unit allowDamage false;

_unit addAction ["Empty Supply Box (0)",{
	private _pos = getMarkerPos "supplyspawn";
	private _box = "C_supplyCrate_F" createVehicle _pos;
	clearWeaponCargoGlobal _box;
	clearMagazineCargoGlobal _box;
	clearBackpackCargoGlobal _box;
	clearItemCargoGlobal _box;
	["Notification",["Empty Box Purchased",format ["Empty Box spawned at %1.", mapGridPosition _pos]]] remoteExec ["BIS_fnc_showNotification",0];
},nil,1.5,true,true,"","true",5];

_unit addAction ["Spare Wheel (5)","
	[] call H_fnc_spareWheel;
",nil,1.5,true,true,"","true",5];

_unit addAction ["Fuel Bladder (10)","
	[] call H_fnc_fuelbladder;
",nil,1.5,true,true,"","true",5];

_unit addAction ["Medical Supply Box (15)","
	[] call H_fnc_medical;
",nil,1.5,true,true,"","true",5];
