params ["_unit"];

_unit disableai "move";
_unit allowDamage false;

_unit addAction ["Fuel Bladder (10)","
	[] call H_fnc_fuelbladder;
",nil,1.5,true,true,"","true",5];