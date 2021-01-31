private _saveGame = profileNamespace getVariable "H_alb_Altis";
missionNameSpace setVariable ["H_alb_loaded",false,true];
missionNameSpace setVariable ["H_alb_fobs",_saveGame # 0,true];
missionNameSpace setVariable ["H_alb_locations",_saveGame # 1,true];
missionNameSpace setVariable ["H_alb_deploypoints",_saveGame # 2,true];
missionNameSpace setVariable ["H_alb_westVehicles",[],true];
missionNameSpace setVariable ["H_alb_gearTier",_saveGame # 3,true];
missionNameSpace setVariable ["H_alb_date",_saveGame # 4,true];
setDate H_alb_date;
missionNameSpace setVariable ["H_alb_playerIDs",_saveGame # 5,true];
missionNameSpace setVariable ["H_alb_players",_saveGame # 6,true];
missionNameSpace setVariable ["H_alb_savedVehicles",_saveGame # 7,true];
missionNameSpace setVariable ["H_alb_crates",_saveGame # 8,true];
missionNameSpace setVariable ["H_alb_markers",_saveGame # 9,true];
missionNameSpace setVariable ["H_alb_fuelCanisters",_saveGame # 10,true];
missionNameSpace setVariable ["H_alb_wheels",_saveGame # 11,true];
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
sleep 0.01;
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