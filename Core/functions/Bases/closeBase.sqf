	openMap [true, false];
	addMissionEventHandler ["MapSingleClick", {
		params ["_units", "_pos", "_alt", "_shift"];
		removeAllMissionEventHandlers "MapSingleClick";
		_closestFOB = nil;
		{
		   if(isNil "_closestFOB" || {(_pos distance (_x # 2)) < (_pos distance (_closestFOB # 2))}) then {_closestFOB = _x};
		} forEach H_alb_fobs;
		private _fobSelect = H_alb_fobs find _closestFOB;
		private _deletedFOB = H_alb_fobs deleteAt _fobSelect;
		if ((_deletedFOB select 0) == "PB") then {
			missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+50,true];
			{
				deleteVehicle _x;
			} forEach units (_deletedFOB select 4);
			{
				deleteVehicle _x;
			} forEach units (_deletedFOB select 5);
			
			{
					deleteVehicle _x;
			} forEach ((_deletedFOB select 2) nearObjects 40);
			
			deleteMarker (_deletedFOB select 3);
			
			["Notification",["PB Closed Down",format ["%1 has been closed down.<br/>%2 Deployment Points Remaining.", (_deletedFOB select 1), (missionNameSpace getVariable "H_alb_deploypoints")]]] remoteExec ["BIS_fnc_showNotification",0];
		};
		if ((_deletedFOB select 0) == "FOB") then {
			missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")+250,true];
			{
				deleteVehicle _x;
			} forEach units (_deletedFOB select 4);
			{
				deleteVehicle _x;
			} forEach units (_deletedFOB select 5);
			{
				deleteVehicle _x;
			} forEach units (_deletedFOB select 6);
			
			{
				deleteVehicle _x;
			} forEach ((_deletedFOB select 2) nearObjects 70);
			
			deleteMarker (_deletedFOB select 3);
			
			["Notification",["PB Closed Down",format ["%1 has been closed down.<br/>%2 Deployment Points Remaining.", (_deletedFOB select 1), (missionNameSpace getVariable "H_alb_deploypoints")]]] remoteExec ["BIS_fnc_showNotification",0];
		};
	}];