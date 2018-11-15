_radios = "RadioNotifications" call BIS_fnc_getParamValue;
if (_radios == 1) then {
	["radio2"] remoteExec ["playSound", 0];
	sleep 0.2;
	["radio1"] remoteExec ["playSound", 0];
};