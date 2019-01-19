params ["_playerID","_playerName"];
["Notification",["New Commander",format ["%1 is now commander.", _playerName]]] remoteExec ["BIS_fnc_showNotification",0];

currentCommander = [_playerID, player, _playerName];
publicVariable "currentCommander";
[] call H_fnc_commanderOptions;
