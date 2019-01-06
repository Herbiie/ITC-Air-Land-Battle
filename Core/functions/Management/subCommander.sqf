private _profileID = getPlayerUID player;
private _profileName = profileName;
[[_profileID, _profileName]] remoteExec ["H_fnc_subcommanderDecision",0];