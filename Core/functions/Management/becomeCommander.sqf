params ["_playerID","_playerName"];
["Notification",["New Commander",format ["%1 is now commander.", _playerName]]] remoteExec ["BIS_fnc_showNotification",0];
player setRank "Captain";
if (count currentCommander > 0) then {
	[] remoteExec ["H_fnc_removeCommander",(currentCommander select 1)];
};
missionNameSpace setVariable ["currentCommander",[_playerID, player, _playerName],true];
[] call H_fnc_commanderOptions;
