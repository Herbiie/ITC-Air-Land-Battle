if (deploypoints >= 1500) then {
	["ITC_A10E", getMarkerPos "jetspawn"] remoteExec ["createVehicle",2];
	[1500, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};