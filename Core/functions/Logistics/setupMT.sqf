params ["_unit"];

_unit disableai "move";
_unit allowDamage false;

_unit addAction ["Spawn ATV (10)","[] call H_fnc_ATV",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn Prowler (20)","[] call H_fnc_Prowler",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn Prowler - Armed (30)","[] call H_fnc_ProwlerHMG",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn Prowler - AT (40)","[] call H_fnc_ProwlerAT",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn Hunter (50)","[] call H_fnc_Hunter",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn Hunter - HMG (60)","[] call H_fnc_HunterHMG",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn Hunter - GMG (70)","[] call H_fnc_HunterGMG",nil,1.5,true,true,"","true",5];