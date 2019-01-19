params ["_playerID","_playerName"];
hintC format ["%1 is now commander.", _playerName];

currentCommander = [_playerID, player, _playerName];
publicVariable "currentCommander";
[] call H_fnc_commanderOptions;
