if (deploypoints >= 350) then {
	["B_Heli_Transport_03_F", getMarkerPos "helispawn"] remoteExec ["createVehicle",2];
	[350, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};