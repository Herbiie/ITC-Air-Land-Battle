private _pos = getMarkerPos "supplyspawn";
private _wheel = "ACE_MedicalSupplyCrate_Advanced" createVehicle _pos;
missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")-15,true];
["Notification",["Medical Supplies Purchased",format ["Medical Supplies spawned at %1.<br/>%2 Deployment Points Remaining.", mapGridPosition _pos, (missionNameSpace getVariable "H_alb_deploypoints")]]] remoteExec ["BIS_fnc_showNotification",0];