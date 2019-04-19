private _savedVariable = profileNamespace getVariable "H_alb_Ruha";
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
setDate H_alb_date;
H_alb_playerIDs = _savedVariable select 5;
publicVariable "H_alb_playerIDs";
H_alb_players = _savedVariable select 6;
publicVariable "H_alb_players";
H_alb_savedVehicles = _savedVariable select 7;
publicVariable "H_alb_savedVehicles";
H_alb_crates = _savedVariable select 8;
publicVariable "H_alb_crates";
H_alb_markers = _savedVariable select 9;
publicVariable "H_alb_markers";
H_alb_fuelCanisters = _savedVariable select 10;
publicVariable "H_alb_fuelCanisters";
startingMarkers = allMapMarkers;
publicVariable "startingMarkers";
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

{
	_x params ["_marker","_markerType", "_markerColor", "_markerSize", "_markerPos", "_markerShape", "_markerDir", "_markerBrush","_markerText"];
	_newMarker = createmarker [_marker, _markerPos];
	_newMarker setMarkerSize _markerSize;
	_newMarker setMarkerShape _markerShape;
	_newMarker setMarkerType _markerType;
	_newMarker setMarkerColor _markerColor;
	_newMarker setMarkerDir _markerDir;
	_newMarker setMarkerBrush _markerBrush;
	_newmarker setMarkerText _markerText;
} forEach H_alb_markers;