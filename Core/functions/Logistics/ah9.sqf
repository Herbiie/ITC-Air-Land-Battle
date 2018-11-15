if (deploypoints >= 150) then {
	["B_Heli_Light_01_dynamicLoadout_F", getMarkerPos "helispawn"] remoteExec ["createVehicle",2];
	[150, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};