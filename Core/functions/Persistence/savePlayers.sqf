

{
	[] remoteExec ["H_fnc_savePlayer",_x];
	sleep 1;
} forEach allPlayers;

missionNameSpace setVariable ["H_finishedSaving",true,true];