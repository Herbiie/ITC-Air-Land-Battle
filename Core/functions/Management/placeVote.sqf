params ["_vote"];

if (_vote) then {
	currentVoteYes = currentVoteYes + 1;
	publicVariable "currentVoteYes";
} else {
	currentVoteNo = currentVoteNo + 1;
	publicVariable "currentVoteNo";
};
removeAllActions player;