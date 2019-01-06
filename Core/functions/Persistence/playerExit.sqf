if (count allPlayers > 1) then {
	"playerExit" spawn BIS_fnc_endMission;
} else {
	[] remoteExec ["H_fnc_saveMissionExit",2];
};