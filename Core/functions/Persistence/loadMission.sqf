H_alb_fobs = profileNamespace getVariable "H_alb_fobsSavedAltis";
publicVariable "H_alb_fobs";
H_alb_locations = profileNamespace getVariable "H_alb_locationsSavedAltis";
publicVariable "H_alb_locations";
H_alb_deployPoints = profileNamespace getVariable "H_alb_deploypointsSavedAltis";
publicVariable "H_alb_deploypoints";
H_alb_westVehicles = [];
publicVariable "H_alb_westVehicles";

{
	if ((_x select 0) == "PB") then {
		[_x select 2, _x select 1] spawn H_fnc_loadPB;
	};
	if ((_x select 0) == "FOB") then {
		[_x select 2, _x select 1] spawn H_fnc_loadFOB;
	};
} forEach H_alb_fobs;

{
	[_x select 0, _x select 1]  spawn H_fnc_loadlocation;
} forEach H_alb_locations;

[] spawn H_fnc_loadVehicles;