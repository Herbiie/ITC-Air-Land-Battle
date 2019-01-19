params ["_class", "_cost", "_position"];
if (H_alb_deploypoints >= _cost) then {
	[_class, _cost, _position] remoteExec ["H_fnc_placeVehicle",2];	
	//hint format ["%1 spawned at %2", getText (configFile >> "CfgVehicles" >> _class >> "displayName"), mapGridPosition _position];
} else {
	hint "Not Enough Points";
};