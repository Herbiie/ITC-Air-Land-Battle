params ["_vehicle","_cost"];

	_vehicle addEventHandler ["Killed", {
		[[_cost, false]] remoteExec ["H_fnc_deploypoints",2];
	}];