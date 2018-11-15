if (deploypoints >= 750) then {
	["ITC_A519", getMarkerPos "jetspawn"] remoteExec ["createVehicle",2];
	[750, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};