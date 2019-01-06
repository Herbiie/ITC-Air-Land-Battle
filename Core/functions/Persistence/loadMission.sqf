private _savedVariable = profileNamespace getVariable "H_alb_Altis";
currentCommander = _savedVariable select 8;;
publicVariable "currentCommander";
H_alb_fobs = _savedVariable select 0;
publicVariable "H_alb_fobs";
H_alb_locations = _savedVariable select 1;
publicVariable "H_alb_locations";
H_alb_deployPoints = _savedVariable select 2;
publicVariable "H_alb_deploypoints";
H_alb_westVehicles = [];
publicVariable "H_alb_westVehicles";
H_alb_gearTier = _savedVariable select 3;
publicVariable "H_alb_gearTier";
H_alb_date = _savedVariable select 4;
publicVariable "H_alb_date";
//[H_alb_date] remoteExec ["BIS_fnc_paramDaytime",0];
H_alb_date call BIS_fnc_paramDaytime;
H_alb_playerIDs = _savedVariable select 5;
publicVariable "H_alb_playerIDs";
H_alb_players = _savedVariable select 6;
publicVariable "H_alb_players";
H_alb_savedVehicles = _savedVariable select 7;
publicVariable "H_alb_savedVehicles";
H_alb_crates = _savedVariable select 10;
publicVariable "H_alb_crates";
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