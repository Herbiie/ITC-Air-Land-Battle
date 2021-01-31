private _pos = getMarkerPos "supplyspawn";
private _fuel = "FlexibleTank_01_sand_F" createVehicle _pos;
[_fuel, 1] call ace_cargo_fnc_setSize;
[_fuel, true, [0, 1, 1], 10] call ace_dragging_fnc_setCarryable;
missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")-10,true];
["Notification",["Fuel Purchased",format ["Fuel Bladder spawned at %1.<br/>%2 Deployment Points Remaining.", mapGridPosition _pos, (missionNameSpace getVariable "H_alb_deploypoints")]]] remoteExec ["BIS_fnc_showNotification",0];
_fuel 