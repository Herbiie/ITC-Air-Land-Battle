currentCommander = profileNamespace getVariable "H_alb_commanderSavedA";
publicVariable "currentCommander";
currentCommander = profileNamespace getVariable "H_alb_subcommanderSavedA";
publicVariable "subCommanders";
H_alb_fobs = profileNamespace getVariable "H_alb_fobsSavedA";
publicVariable "H_alb_fobs";
H_alb_locations = profileNamespace getVariable "H_alb_locationsSavedA";
publicVariable "H_alb_locations";
H_alb_deployPoints = profileNamespace getVariable "H_alb_deploypointsSavedA";
publicVariable "H_alb_deploypoints";
H_alb_westVehicles = [];
publicVariable "H_alb_westVehicles";
H_alb_gearTier = profileNamespace getVariable "H_alb_gearTierSavedA";
publicVariable "H_alb_gearTier";
H_alb_date = profileNamespace getVariable "H_alb_dateSavedA";
publicVariable "H_alb_date";
//[H_alb_date] remoteExec ["BIS_fnc_paramDaytime",0];
H_alb_date call BIS_fnc_paramDaytime;
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

[] spawn H_fnc_loadSupplies;