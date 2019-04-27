H_finishedSaving = false;
publicVariable "H_finishedSaving";

{
	[] remoteExec ["H_fnc_savePlayer",_x];
	sleep 1;
} forEach allPlayers;

H_finishedSaving = true;
publicVariable "H_finishedSaving";