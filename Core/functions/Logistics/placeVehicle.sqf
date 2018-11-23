params ["_class", "_cost", "_position"];

	private _vehicle = _class createVehicle _position;
	clearMagazineCargoGlobal _vehicle;
	clearWeaponCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
	clearBackpackCargoGlobal _vehicle;
	[_cost, false] call H_fnc_deploypoints;
	H_alb_westVehicles = H_alb_westVehicles + [[_vehicle,_cost]];
	publicVariable "H_alb_westVehicles";
	