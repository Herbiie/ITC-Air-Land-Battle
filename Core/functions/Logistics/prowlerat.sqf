if (deploypoints >= 40) then {
	["B_LSV_01_AT_F", getMarkerPos "carspawn"] remoteExec ["createVehicle",2];
	[40, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};