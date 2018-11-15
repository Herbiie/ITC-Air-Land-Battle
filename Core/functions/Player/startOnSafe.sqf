params ["_unit"];

sleep 0.1;
	if (currentWeapon _unit != "") then {
		[_unit, currentWeapon _unit, currentMuzzle _unit] call ace_safemode_fnc_lockSafety;
		
	};