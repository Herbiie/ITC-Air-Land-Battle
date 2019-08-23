params ["_class", "_cost", "_position"];

private _vehicle = _class createVehicle _position;
clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
_vehicle setVariable ["H_alb_cost",_cost,true];
_vehicle addEventHandler ["Killed", {
	params ["_dead", "_killer", "_instigator"];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")-(_dead getVariable "H_alb_cost"),true];
}];
missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")-_cost,true];
H_alb_westVehicles pushBack [_vehicle,_cost];
["Notification",["Vehicle Purchased",format ["%1 spawned at %2.<br/>%3 Deployment Points Remaining.", getText (configFile >> "CfgVehicles" >> _class >> "displayName"), mapGridPosition _position, (missionNameSpace getVariable "H_alb_deploypoints")]]] remoteExec ["BIS_fnc_showNotification",0];
	