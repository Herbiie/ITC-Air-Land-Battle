if (deploypoints >= 100) then {
	["B_Mortar_01_F", getMarkerPos "artyspawn"] remoteExec ["createVehicle",2];
	[100, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};