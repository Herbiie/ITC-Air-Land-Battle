if (deploypoints >= 700) then {
	["itc_land_b_mlrs_seara2", getMarkerPos "artyspawn"] remoteExec ["createVehicle",2];
	[700, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};