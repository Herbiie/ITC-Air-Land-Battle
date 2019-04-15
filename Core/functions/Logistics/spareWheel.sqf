private _pos = getMarkerPos "supplyspawn";
private _wheel = "ACE_Wheel" createVehicle _pos;
[5, false] call H_fnc_deploypoints;
["Notification",["Spare Wheel Purchased",format ["Spare Wheel spawned at %1.<br/>%2 Deployment Points Remaining.", mapGridPosition _pos, H_alb_deploypoints]]] remoteExec ["BIS_fnc_showNotification",0];