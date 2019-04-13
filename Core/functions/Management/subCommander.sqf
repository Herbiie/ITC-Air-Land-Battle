private _profileID = getPlayerUID player;
private _profileName = profileName;if (count currentCommander > 0) then {
	[[_profileID, _profileName]] remoteExec ["H_fnc_subcommanderDecision",0];
} else {
	hint "There is currently no commander to accept your request."
};
