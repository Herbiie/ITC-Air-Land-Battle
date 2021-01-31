params ["_unit", "_groupID", "_patrol", "_base"];

	group _unit enableDynamicSimulation  true;

if (side _unit == west) then {
	_unit setGroupID [_groupID];
	_contactReports = "ContactReports" call BIS_fnc_getParamValue;
	_tracking = "Tracking" call BIS_fnc_getParamValue;

	if (_contactReports == 1) then {
		[_unit] spawn H_fnc_contact;
	};

	if (_patrol) then {
		[_unit, getMarkerPos _base, 1000, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "COLUMN", "this call CBA_fnc_searchNearby", [3, 6, 9]] call CBA_fnc_taskPatrol;
		allPatrols pushBack (group _unit);
		};
	
	if (_patrol && (_tracking == 1)) then {
		[_unit] spawn H_fnc_tracker;
	};
	group _unit deleteGroupWhenEmpty true;
};

if (side _unit == independent) then {
	if (_patrol && (_tracking == 1)) then {
		[_unit] spawn H_fnc_tracker;
	};
	group _unit deleteGroupWhenEmpty true;
	if (_patrol) then {
		[_unit, getMarkerPos _base, 1000, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "COLUMN", "this call CBA_fnc_searchNearby", [3, 6, 9]] call CBA_fnc_taskPatrol;
	};
};

if (side _unit == east) then {
	group _unit deleteGroupWhenEmpty true;
};