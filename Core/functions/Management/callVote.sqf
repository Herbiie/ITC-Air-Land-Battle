params ["_subject","_length","_margin"];
[] spawn H_fnc_radio;
private _c = 0;
waitUntil {!voteInProgress};
["Notification",["New Vote",format ["%1 vote will start in 10 Seconds", _subject]]] remoteExec ["BIS_fnc_showNotification",0];
voteInProgress = true;
publicVariable "voteInProgress";
while {_c <= 10} do {
	private _d = 10 - _c;
	[[format ["<t align='center' shadow='1'><br/><br/>%1 vote will start in %2</t>", _subject,_d],0,1,0]] remoteExec ["BIS_fnc_EXP_camp_SITREP",0];
	_c = _c + 1;
	sleep 1;
};
currentVoteYes = 0;
publicVariable "currentVoteYes";
currentVoteNo = 0;
publicVariable "currentVoteNo";
H_voteSubject = _subject;
publicVariable "H_voteSubject";
voteOver = false;
publicVariable "voteOver";

[true] remoteExec ["H_fnc_voteOptions",0];

private _a = 0;
while {_a <= _length} do {
	private _b = _length - _a;
	[[format ["<t align='center' shadow='1'><br/><br/>%1 VOTE IN PROGRESS %2 Y:%3 N:%4</t>", _subject,_b, currentVoteYes, currentVoteNo],0,1,0]] remoteExec ["BIS_fnc_EXP_camp_SITREP",0];
	_a = _a + 1;
	sleep 1;
};

[false] remoteExec ["H_fnc_voteOptions",0];

private _totalVotes = currentVoteYes + currentVoteNo;
private _yesPercentage = 0;
if (_totalVotes > 0) then {
	_yesPercentage = currentVoteYes/_totalVotes;
};
if (_yesPercentage >= _margin) then {
	voteOutcome = true;
} else {
	voteOutcome = false;
};
publicVariable "voteOutcome";
voteOver = true;
publicVariable "voteOver";
voteInProgress = false;
publicVariable "voteInProgress";