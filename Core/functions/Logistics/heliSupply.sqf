params ["_type","_pos"];
private _supply = objNull;
switch (_type) do {
	case "FUEL" : {
		_supply = [] call H_fnc_fuelBladder;
	};
	case "RESUPPLY" : {
		_supply = [] call H_fnc_resupply;
	};
};

[_supply,_pos] call H_fnc_heliTransport;