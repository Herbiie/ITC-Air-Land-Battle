params ["_unit"];

_unit disableai "move";
_unit allowDamage false;

_unit addAction ["Spawn Mk6 Mortar (100)","[""B_Mortar_01_F"", 100, getMarkerpos ""artyspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn M4 Sholef 2 (400)","[""itc_land_b_SPH_Sholef2"", 400, getMarkerpos ""artyspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn M5 Seara 2 (700)","[""itc_land_b_mlrs_seara2"", 700, getMarkerpos ""artyspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];