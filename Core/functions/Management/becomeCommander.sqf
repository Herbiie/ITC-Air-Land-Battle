params ["_playerID","_playerName"];
hintC format ["%1 is now commander.", _playerName];

if (count allPatrols > 0) then {
	[
		player hcSetGroup [_x]
	] forEach allPatrols;
};

currentCommander = [_playerID, player, _playerName];
publicVariable "currentCommander";
[] call H_fnc_commanderOptions;
