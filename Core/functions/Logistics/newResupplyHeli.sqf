params ["_heliType","_cost"];
private _oldheli = [] call H_fnc_getSupplyHeli;
private _type = typeOf _oldheli;
if (_type != "") then {
	_oldheli setVehiclePosition [getMarkerPos "motorpool", [], 40, "NONE"];
	private _name = getText (configFile >> "CfgVehicles" >> _type >> "displayName");
	["Notification",["Vehicle Returned",format ["%1 has been moved to the motor pool.", _name]]] remoteExec ["BIS_fnc_showNotification",0];
};
private _pos = getMarkerPos "supplyHeliPoint";
[_heliType,_cost,_pos] call H_fnc_placeVehicle;