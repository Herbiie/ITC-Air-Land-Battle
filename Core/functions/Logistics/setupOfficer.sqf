params ["_unit","_type"];
{
	private _classname = _x select 0;
	private _cost = _x select 1;
	if (_classname isKindOf ["Car", configFile >> "CfgVehicles"]) then {
		H_position = getMarkerPos "carspawn";
	};
	if (_classname isKindOf ["StaticMortar", configFile >> "CfgVehicles"]) then {
		H_position = getMarkerPos "artyspawn";
	};
	if (_classname isKindOf ["Tank", configFile >> "CfgVehicles"]) then {
		H_position = getMarkerPos "tankspawn";
	};
	if (_classname isKindOf ["Plane", configFile >> "CfgVehicles"]) then {
		H_position = getMarkerPos "planespawn";
	};
	if (_classname isKindOf ["Helicopter", configFile >> "CfgVehicles"]) then {
		H_position = getMarkerPos "helispawn";
	};
	_unit addAction [format ["Request %1 (%2)", getText (configFile >> "CfgVehicles" >> _classname >> "displayName"),_cost],"_this select 3 call H_fnc_spawnVehicle",[_classname, _cost, H_position],1.5,true,true,"","true",5];
} forEach _type;