params ["_unit"];

_unit disableai "move";
_unit allowDamage false;

_unit addAction ["Spare Wheel (5)","
	[] call H_fnc_spareWheel;
",nil,1.5,true,true,"","true",5];

_unit addAction ["Fuel Bladder (10)","
	[] call H_fnc_fuelbladder;
",nil,1.5,true,true,"","true",5];

_unit addAction ["Medical Supply Box (15)","
	[] call H_fnc_medical;
",nil,1.5,true,true,"","true",5];
