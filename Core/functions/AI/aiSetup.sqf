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
		[_unit, getMarkerPos _base, 1000] spawn H_fnc_patrol;
		allPatrols pushBack (group _unit);
		};
	
	if (_patrol && (_tracking == 1)) then {
		[_unit] spawn H_fnc_tracker;
	};
	group _unit deleteGroupWhenEmpty true;
	{
	    _x addEventHandler ["killed", "
				[2, false] remoteExec [""H_fnc_deploypoints"",2];
				[2, position (_this select 0), false] remoteExec [""H_fnc_townPoints"",2]
				"];
	} forEach units group _unit;
};

if (side _unit == independent) then {
	if (_patrol && (_tracking == 1)) then {
		[_unit] spawn H_fnc_tracker;
	};
	group _unit deleteGroupWhenEmpty true;
	{
	    _x addEventHandler ["killed", "
				[2, position (_this select 0), false] remoteExec [""H_fnc_townPoints"",2]
				"];
	} forEach units group _unit;
	if (_patrol) then {
		[_unit, getMarkerPos _base, 1000] spawn H_fnc_patrol;
	};
};

if (side _unit == east) then {
	group _unit deleteGroupWhenEmpty true;
};