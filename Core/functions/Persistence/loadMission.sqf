missionNameSpace setVariable ["H_alb_loaded",false,true];
missionNameSpace setVariable ["H_alb_fobs",H_saved # 0,true];
H_alb_locations = H_saved select 1;
publicVariable "H_alb_locations";
missionNameSpace setVariable ["H_alb_locations",H_saved # 1,true];
missionNameSpace setVariable ["H_alb_deploypoints",H_saved # 2,true];
missionNameSpace setVariable ["H_alb_westVehicles",[],true];
missionNameSpace setVariable ["H_alb_gearTier",H_saved # 3,true];
missionNameSpace setVariable ["H_alb_date",H_saved # 4,true];
setDate H_alb_date;
missionNameSpace setVariable ["H_alb_playerIDs",H_saved # 5,true];
missionNameSpace setVariable ["H_alb_players",H_saved # 6,true];
missionNameSpace setVariable ["H_alb_savedVehicles",H_saved # 7,true];
H_alb_crates = H_saved select 8;
publicVariable "H_alb_crates";
missionNameSpace setVariable ["H_alb_crates",H_saved # 8,true];
missionNameSpace setVariable ["H_alb_markers",H_saved # 9,true];
missionNameSpace setVariable ["H_alb_fuelCanisters",H_saved # 10,true];
missionNameSpace setVariable ["startingMarkers",allMapMarkers,true];
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
missionNameSpace setVariable ["H_alb_loaded",true,true];