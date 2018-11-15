if (deploypoints >= 70) then {
	["B_MRAP_01_gmg_F", getMarkerPos "carspawn"] remoteExec ["createVehicle",2];
	[70, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};