params ["_unit"];

_unit disableai "move";
_unit allowDamage false;

_unit addAction ["Spawn ATV (10)","[""B_Quadbike_01_F"", 10, getMarkerpos ""carspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn Prowler (20)","[""B_LSV_01_unarmed_F"", 20,  getMarkerpos ""carspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn Prowler - Armed (30)","[""B_LSV_01_armed_F"", 30,  getMarkerpos ""carspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn Prowler - AT (40)","[""B_LSV_01_AT_F"", 40,  getMarkerpos ""carspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn Hunter (50)","[""B_MRAP_01_F"", 50,  getMarkerpos ""carspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn Hunter - HMG (60)","[""B_MRAP_01_hmg_F"", 60,  getMarkerpos ""carspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];
_unit addAction ["Spawn Hunter - GMG (70)","[""B_MRAP_01_gmg_F"", 70,  getMarkerpos ""carspawn""] call H_fnc_spawnVehicle",nil,1.5,true,true,"","true",5];