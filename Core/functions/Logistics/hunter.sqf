if (deploypoints >= 50) then {
	["B_MRAP_01_F", getMarkerPos "carspawn"] remoteExec ["createVehicle",2];
	[50, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};