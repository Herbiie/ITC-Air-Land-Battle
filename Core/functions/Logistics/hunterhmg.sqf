if (deploypoints >= 60) then {
	["B_MRAP_01_hmg_F", getMarkerPos "carspawn"] remoteExec ["createVehicle",2];
	[60, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};