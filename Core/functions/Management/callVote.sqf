params ["_subject","_length","_margin"];

private _c = 0;
waitUntil {!(missionNameSpace getVariable ["voteInProgress",false])};
["Notification",["New Vote",format ["%1 vote will start in 10 Seconds", _subject]]] remoteExec ["BIS_fnc_showNotification",0];
missionNameSpace setVariable ["voteInProgress",true,true];
while {_c <= 10} do {
	private _d = 10 - _c;
	[[format ["<t align='center' shadow='1'><br/><br/>%1 vote will start in %2</t>", _subject,_d],0,1,0]] remoteExec ["BIS_fnc_EXP_camp_SITREP",0];
	_c = _c + 1;
	sleep 1;
};
missionNameSpace setVariable ["currentVoteYes",0,true];
missionNameSpace setVariable ["currentVoteNo",0,true];
missionNameSpace setVariable ["H_voteSubject",_subject,true];
missionNameSpace setVariable ["voteOver",false,true];

[true] remoteExec ["H_fnc_voteOptions",0];

private _a = 0;
while {_a <= _length} do {
	private _b = _length - _a;
	[[format ["<t align='center' shadow='1'><br/><br/>%1 VOTE IN PROGRESS %2 Y:%3 N:%4<br/>(Use ACE Self Interact to Vote)</t>", _subject,_b, (missionNameSpace getVariable "currentVoteYes"), (missionNameSpace getVariable "currentVoteNo")],0,1,0]] remoteExec ["BIS_fnc_EXP_camp_SITREP",0];
	if (((missionNameSpace getVariable "currentVoteYes") + (missionNameSpace getVariable "currentVoteNo")) > count allPlayers) exitWith {true};
	if ((missionNameSpace getVariable "currentVoteYes") > ((count allPlayers)/2)) exitWith {true};
	if ((missionNameSpace getVariable "currentVoteNo") > ((count allPlayers)/2)) exitWith {true};
	_a = _a + 1;
	sleep 1;
};

[false] remoteExec ["H_fnc_voteOptions",0];

private _totalVotes = (missionNameSpace getVariable "currentVoteYes") + (missionNameSpace getVariable "currentVoteNo");
private _yesPercentage = 0;
if (_totalVotes > 0) then {
	_yesPercentage = (missionNameSpace getVariable "currentVoteYes")/_totalVotes;
};
if (_yesPercentage >= _margin) then {
	missionNameSpace setVariable ["voteOutcome",true,true];
} else {
	missionNameSpace setVariable ["voteOutcome",false,true];
};
missionNameSpace setVariable ["voteOver",true,true];
missionNameSpace setVariable ["voteInProgress",false,true];