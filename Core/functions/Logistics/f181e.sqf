if (deploypoints >= 1250) then {
	["ITC_F181E", getMarkerPos "jetspawn"] remoteExec ["createVehicle",2];
	[1250, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};