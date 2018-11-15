if (deploypoints >= 100) then {
	["B_Heli_Light_01_F", getMarkerPos "helispawn"] remoteExec ["createVehicle",2];
	[100, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};