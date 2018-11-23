while {true} do {
	sleep 20;
	if (H_alb_deploypoints > 99 && !createPB) then {
		createPB = true;
		[[west,["pbtask"],["A new Patrol base with a NATO squad is available for deployment. Speak to the Theatre Commander at Camp Rogain to set the new PB's location.","New PB Available","_taskmarker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];
	};
	if (H_alb_deploypoints < 100 && createPB) then {
		[[pbtask],BIS_fnc_DeleteTask] remoteExec ["call",0];
		createPB = false;
	};
	if (H_alb_deploypoints > 499 && !createFOB) then {
		createFOB = true;
		[[west,["fobtask"],["A new Forward Operating Base (FOB) with a NATO platoon is available for deployment. Speak to the Theatre Commander at Camp Rogain to set the new FOB's location.","New FOB Available","_taskmarker"],objNull,1,2,true],BIS_fnc_taskCreate] remoteExec ["call", 0];
	};
	if (H_alb_deploypoints < 500 && createFOB) then {
		[[fobtask],BIS_fnc_DeleteTask] remoteExec ["call",0];
		createFOB = false;
	};
};