params ["_class", "_cost", "_position"];
if ((missionNameSpace getVariable "H_alb_deploypoints") >= _cost) then {
	[_class, _cost, _position] remoteExec ["H_fnc_placeVehicle",2];		
} else {
	hint "Not Enough Points";
};