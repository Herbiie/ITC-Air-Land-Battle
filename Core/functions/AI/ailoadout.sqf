params ["_unit","_class"];

private _factionValue = "Faction" call BIS_fnc_getParamValue;

switch (_factionValue) do {
	case 1: {_faction = "CTRGAI"};
	case 2: {_faction = "NATOAI"};
};

[_unit,_faction,_class] call tb3_fLoadout;
