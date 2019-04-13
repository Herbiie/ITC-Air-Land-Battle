params ["_class", "_cost", "_position"];

private _vehicle = _class createVehicle _position;
clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
[_cost, false] call H_fnc_deploypoints;
H_alb_westVehicles = H_alb_westVehicles + [[_vehicle,_cost]];
publicVariable "H_alb_westVehicles";	
["Notification",["Vehicle Purchased",format ["%1 spawned at %2.<br/>%3 Deployment Points Remaining.", getText (configFile >> "CfgVehicles" >> _class >> "displayName"), mapGridPosition _position, H_alb_deploypoints]]] remoteExec ["BIS_fnc_showNotification",0];
	