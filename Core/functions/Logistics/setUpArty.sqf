params ["_unit"];

_unit disableai "move";
_unit allowDamage false;

_unit addAction ["Spawn Mk6 Mortar (100)","[] call H_fnc_MK6",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn M4 Sholef 2 (400)","[] call H_fnc_M4",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn M5 Seara 2 (700)","[] call H_fnc_M5",nil,1.5,true,true,"","true",5];