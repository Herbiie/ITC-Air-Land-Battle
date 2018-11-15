if (deploypoints >= 250) then {
	["B_Heli_Transport_01_F", getMarkerPos "helispawn"] remoteExec ["createVehicle",2];
	[250, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};