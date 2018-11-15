if (deploypoints >= 20) then {
	["B_LSV_01_unarmed_F", getMarkerPos "carspawn"] remoteExec ["createVehicle",2];
	[20, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};