params ["_unit"];

_unit disableai "move";
_unit allowDamage false;

_unit addAction ["Spawn MH-9 (100)","[""B_Heli_Light_01_F"", 100, getMarkerpos ""helispawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];

_unit addAction ["Spawn AH-9 (150)","[""B_Heli_Light_01_dynamicLoadout_F"", 150, getMarkerpos ""helispawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];

_unit addAction ["Spawn UH-80 (250)","[""B_Heli_Transport_01_F"", 250, getMarkerpos ""helispawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];

_unit addAction ["Spawn CH-67 - Unarmed (300)","[""B_Heli_Transport_03_unarmed_F"", 300, getMarkerpos ""helispawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];

_unit addAction ["Spawn CH-67 - Armed (350)","[""B_Heli_Transport_03_F"", 350, getMarkerpos ""helispawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];

_unit addAction ["Spawn AH-99 (500)","[""B_Heli_Attack_01_F"", 500, getMarkerpos ""helispawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];

_unit addAction ["Spawn A159 (750)","[""ITC_A519"", 750, getMarkerpos ""jetspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];

_unit addAction ["Spawn JAS39-E (1000)","[""ITC_Gripen"", 1000, getMarkerpos ""jetspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];

_unit addAction ["Spawn F-181E (1250)","[""ITC_F181E"", 1250, getMarkerpos ""jetspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];

_unit addAction ["Spawn A-10E (1500)","[""ITC_A10E"", 1500, getMarkerpos ""jetspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];