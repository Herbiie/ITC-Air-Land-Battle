if (deploypoints >= 500) then {
	["B_Heli_Attack_01_F", getMarkerPos "helispawn"] remoteExec ["createVehicle",2];
	[500, false] remoteExec ["H_fnc_deploypoints",2];
} else {
	hint "Not Enough Points";
};