if (deploypoints >= 1000) then {
	["ITC_Gripen", getMarkerPos "jetspawn"] remoteExec ["createVehicle",2];
	[1000, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};