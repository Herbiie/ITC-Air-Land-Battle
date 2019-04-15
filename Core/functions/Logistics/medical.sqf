private _pos = getMarkerPos "supplyspawn";
private _wheel = "ACE_MedicalSupplyCrate_Advanced" createVehicle _pos;
[15, false] call H_fnc_deploypoints;
["Notification",["Medical Supplies Purchased",format ["Medical Supplies spawned at %1.<br/>%2 Deployment Points Remaining.", mapGridPosition _pos, H_alb_deploypoints]]] remoteExec ["BIS_fnc_showNotification",0];