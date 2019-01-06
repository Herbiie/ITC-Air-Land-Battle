params ["_location","_position"];

private _aiNumber = "EnemyAmount" call BIS_fnc_getParamValue;
private _distance = ("DynamicSimulation" call BIS_fnc_getParamValue)*3;
while {true} do {
	private _closeEnough = false;
	if (({_x distance _position < _distance} count allPlayers) > 0) then {
		_closeEnough = true;
	};
	
	if (!_closeEnough && ({_x distance _position < 600} count allUnits > 0)) then {
		{
			if (_x distance _position <500) then {
				deleteVehicle _x;
			}
		} forEach allUnits;
	};
	
	private _LocationName = _location splitstring "-";
	private _locationNumber = parseNumber (_locationname select (count _locationName - 1));
	private _thisLocation = H_alb_locations select _locationNumber;
	private _locationPoints = _thisLocation select 2;
	if (_locationPoints >= 400) then {
		_location setMarkerColor "ColorBlue";
	};
	if ((_locationPoints >= 300) && (_locationPoints < 400)) then {
		_location setMarkerColor "ColorGreen";
	};
	if ((_locationPoints >= 200) && (_locationPoints < 300)) then {
		_location setMarkerColor "ColorYellow";
	};
	if ((_locationPoints >= 100) && (_locationPoints < 200)) then {
		_location setMarkerColor "ColorOrange";
	};
	if (_locationPoints < 100) then {
		_location setMarkerColor "ColorRed";
	};
	
	if (_closeEnough && (({side _x == east && (_x distance _position) < 500} count allUnits) < _aiNumber) && (_locationPoints >= 200) && (_locationPoints < 300)) then {
			private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
			private _group = createGroup east;
			[_group, _pos] spawn H_fnc_OPFORFireteam; 
			[leader _group, _position, 500] spawn H_fnc_patrol; 
	};
	if (_closeEnough && (({side _x == east && (_x distance _position) < 500} count allUnits) < _aiNumber/2) && (_locationPoints >= 300) && (_locationPoints < 400)) then {
			private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
			private _group = createGroup east;
			[_group, _pos] spawn H_fnc_OPFORFireteam; 
			[leader _group, _position, 500] spawn H_fnc_patrol; 
	};
	if (_closeEnough && (({side _x == independent && (_x distance _position) < 500} count allUnits) < 4) && (_locationPoints >= 100) && (_locationPoints < 200)) then {
		private _group = createGroup independent;
		private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
		[_group, _pos] spawn H_fnc_POLPatrol;
	};
	if (_closeEnough && (({side _x == independent && (_x distance _position) < 500} count allUnits) < 8) && (_locationPoints >= 200) && (_locationPoints < 300)) then {
		private _group1 = createGroup independent;
		private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
		[_group1, _pos] spawn H_fnc_POLPatrol;
		private _group2 = createGroup independent;
		private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
		[_group2, _pos] spawn H_fnc_HNFPatrol;
	};
	if (_closeEnough && (({side _x == independent && (_x distance _position) < 500} count allUnits) < 8) && (_locationPoints >= 300) && (_locationPoints < 400)) then {
		private _group1 = createGroup independent;
		private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
		[_group1, _pos] spawn H_fnc_HNFPatrol;
		private _group2 = createGroup independent;
		private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
		[_group2, _pos] spawn H_fnc_HNFPatrol;
	};
	if (_closeEnough && (({side _x == independent && (_x distance _position) < 500} count allUnits) < 12) && (_locationPoints > 400)) then {
		private _group1 = createGroup independent;
		private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
		[_group1, _pos] spawn H_fnc_HNFPatrol;
		private _group2 = createGroup independent;
		private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
		[_group2, _pos] spawn H_fnc_HNFPatrol;
	};
	
	if (_closeEnough && (({side _x == east && (_x distance _position) < 500} count allUnits) < _aiNumber*1.5) && (_locationPoints >= 100) && (_locationPoints < 200)) then {
			private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
			private _group = createGroup east;
			[_group, _pos] spawn H_fnc_OPFORFireteam; 
			[leader _group, _position, 500] spawn H_fnc_patrol; 
	};
	if (_closeEnough && (({side _x == civilian && (_x distance _position) < 500} count allUnits) < _aiNumber) && (_locationPoints >= 100) && (_locationPoints < 300)) then {
		[_position] spawn H_fnc_civilians;
	};
	if (_closeEnough && (({side _x == civilian && (_x distance _position) < 500} count allUnits) < _aiNumber*2) && (_locationPoints >= 300)) then {
		[_position] spawn H_fnc_civilians;
	};
	
	if (_closeEnough && (({side _x == east && (_x distance _position) < 500} count allUnits) < _aiNumber*2) && _locationPoints < 100) then {
			private _pos = [_position, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
			private _group = createGroup east;
			[_group, _pos] call H_fnc_OPFORFireteam; 
			[leader _group, _position, 500] spawn H_fnc_patrol; 
	};
	if (_closeEnough && (({side _x == civilian && (_x distance _position) < 500} count allUnits) < _aiNumber/2) && (_locationPoints < 100)) then {
		[_position] spawn H_fnc_civilians;
	};
	sleep 10;
};