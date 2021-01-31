private _pos = getMarkerPos "supplyspawn";
private _wheel = "ACE_Wheel" createVehicle _pos;
missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")-5,true];
["Notification",["Spare Wheel Purchased",format ["Spare Wheel spawned at %1.<br/>%2 Deployment Points Remaining.", mapGridPosition _pos, (missionNameSpace getVariable "H_alb_deploypoints")]]] remoteExec ["BIS_fnc_showNotification",0];
_wheel 