// THis is my INIT!

[] execVM "settings\briefing.sqf";

_time =  "TimeAcceleration" call BIS_fnc_getParamValue;
settimemultiplier _time;
[] execVM "core\scripts\dynamicsimulation.sqf";


[west, "marker_0", "Camp Rogain"] call BIS_fnc_addRespawnPosition;

if (isServer && ("LoadPrevious" call BIS_fnc_getParamValue == 0)) then {
	H_alb_fobs = [];
	H_alb_platoons = ["Alpha 1","Alpha 2","Alpha 3","Bravo 1","Bravo 2","Bravo 3","Charlie 1","Charlie 2","Charlie 3","Delta 1","Delta 2","Delta 3","Echo 1","Echo 2","Echo 3","Foxtrot 1","Foxtrot 2","Foxtrot 3","Golf 1","Golf 2","Golf 3","Hotel 1","Hotel 2","Hotel 3","India 1","India 2","India 3","Juliet 1","Juliet 2","Juliet 3","Kilo 1","Kilo 2","Kilo 3"];
	H_alb_locations = [];
	H_alb_deploypoints = 150;
	publicVariable "H_alb_deploypoints";
	H_alb_westVehicles = [];
	publicVariable "H_alb_westVehicles";
	[] execVM "core\scripts\findTowns.sqf";
	[] execVM "core\scripts\handlepoints.sqf";
};

if (isServer && ("LoadPrevious" call BIS_fnc_getParamValue == 1)) then {
	platoons = ["Alpha 1","Alpha 2","Alpha 3","Bravo 1","Bravo 2","Bravo 3","Charlie 1","Charlie 2","Charlie 3","Delta 1","Delta 2","Delta 3","Echo 1","Echo 2","Echo 3","Foxtrot 1","Foxtrot 2","Foxtrot 3","Golf 1","Golf 2","Golf 3","Hotel 1","Hotel 2","Hotel 3","India 1","India 2","India 3","Juliet 1","Juliet 2","Juliet 3","Kilo 1","Kilo 2","Kilo 3"];
	[] execVM "core\scripts\handlepoints.sqf";
	[] call H_fnc_loadMission;
	loading = true;
	publicVariable "loading";
};

if (isServer && "FOBAttacks" call BIS_fnc_getParamValue == 1) then {
	["marker_0"] spawn H_fnc_fobattacks;
};

if (!isDedicated) then {
	[10, true] remoteExec ["H_fnc_deploypoints",2];
	[10, player, true] remoteExec ["H_fnc_townpoints",2];
};
