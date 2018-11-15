params ["_unit"];

_unit disableai "move";
_unit allowDamage false;


/*
A-159
JAS-39E
F-181E
A-10E
*/


_unit addAction ["Spawn MH-9 (100)","[] call H_fnc_MH9",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn AH-9 (150)","[] call H_fnc_AH9",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn UH-80 (250)","[] call H_fnc_UH80",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn CH-67 - Unarmed (300)","[] call H_fnc_CH67",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn CH-67 - Armed (350)","[] call H_fnc_CH67A",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn AH-99 (500)","[] call H_fnc_AH99",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn A159 (750)","[] call H_fnc_A159",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn JAS39-E (1000)","[] call H_fnc_Gripen",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn F-181E (1250)","[] call H_fnc_F181E",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn A-10E (1500)","[] call H_fnc_A10E",nil,1.5,true,true,"","true",5];