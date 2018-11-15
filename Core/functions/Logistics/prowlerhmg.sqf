if (deploypoints >= 30) then {
	["B_LSV_01_armed_F", getMarkerPos "carspawn"] remoteExec ["createVehicle",2];
	[30, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};