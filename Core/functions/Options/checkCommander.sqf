if (count (missionNameSpace getVariable "currentCommander") > 0) then {
	hint format ["The Current commander is %1", (missionNameSpace getVariable "currentCommander") select 2];
} else {
	hint "There is currently no commander."
};