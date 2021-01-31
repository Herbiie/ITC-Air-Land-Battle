[player, missionNameSpace getVariable "H_Faction","R"] call H_fnc_Loadout;

_EH = player addEventHandler ["killed", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	private _penalty = "DeathPenalty" call BIS_fnc_getParamValue;
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")- _penalty,true];
	[_penalty, position _unit, false] remoteExec ["H_fnc_townPoints",2];

}];

[player] spawn H_fnc_startOnSafe;