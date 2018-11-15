if (deploypoints >= 400) then {
	["itc_land_b_SPH_Sholef2", getMarkerPos "artyspawn"] remoteExec ["createVehicle",2];
	[400, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};