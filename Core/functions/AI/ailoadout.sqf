params ["_unit","_class"];

_faction = format ["%1AI", H_faction];

[_unit,_faction,_class] call tb3_fLoadout;
