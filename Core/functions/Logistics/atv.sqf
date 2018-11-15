if (deploypoints >= 10) then {
	["B_Quadbike_01_F", getMarkerPos "carspawn"] remoteExec ["createVehicle",2];
	[10, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};