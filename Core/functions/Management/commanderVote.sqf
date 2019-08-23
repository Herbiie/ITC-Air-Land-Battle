private _playerID = getPlayerUID player;
private _playerName = profileName;
missionNameSpace setVariable ["voteOver",false,true];
private _vote = format ["%1 for Commander", _playerName];
[_vote, 60, 0.5] spawn H_fnc_callVote;
waitUntil {voteOver};
if (voteOutcome) then {
	[_playerID, _playerName] call H_fnc_becomeCommander;
} else {
	hint "We regret to inform you that having carefully reviewed your details, we will not be taking your application any further on this occasion. May we take this opportunity to thank you for the interest you have shown in becoming commander, and wish you every success in the future."; 
};