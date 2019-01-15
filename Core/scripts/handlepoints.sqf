while {true} do {
	sleep 20;
	if (H_alb_deploypoints > 99 && !createPB) then {
		createPB = true;
		["Notification",["New PB Available","The Commander can purchase the new PB at HQ."]] remoteExec ["BIS_fnc_showNotification",0];
	};
	if (H_alb_deploypoints < 100) then {
		createPB = false;
	};
	if (H_alb_deploypoints > 499 && !createFOB) then {
		createFOB = true;
		["Notification",["New FOB Available","The Commander can purchase the new FOB at HQ."]] remoteExec ["BIS_fnc_showNotification",0];
	};
	if (H_alb_deploypoints < 500) then {
		createFOB = false;
	};
};