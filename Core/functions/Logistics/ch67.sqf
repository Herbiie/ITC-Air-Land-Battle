if (deploypoints >= 300) then {
	["B_Heli_Transport_03_unarmed_F", getMarkerPos "helispawn"] remoteExec ["createVehicle",2];
	[300, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};