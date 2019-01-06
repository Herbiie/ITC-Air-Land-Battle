params ["_pos"];

_group1 = createGroup [civilian, true];
private _a = 8+(round random 4);
for "_i" from 0 to _a do
{
    private _position = [_pos, 0, 500, 2, 0, 1, 0]  call BIS_fnc_findSafePos;
	"C_man_1" createUnit [_position, _group1,
		"this addEventHandler [""killed"", {
			params [""_unit"", ""_killer"", ""_instigator"", ""_useEffects""];	
			private _penalty = ""DeathPenalty"" call BIS_fnc_getParamValue;
			[1, false] remoteExec [""H_fnc_deploypoints"",2];
			if (side _killer == west) then {
				[_penalty*2, position _unit, false] remoteExec [""H_fnc_townPoints"",2];
			} else {
				[_penalty, position _unit, false] remoteExec [""H_fnc_townPoints"",2];	
		};
		}]; [this,""CIV"",""C""] call tb3_fLoadout;"
	];
};

[_group1, _pos, 500,3, false]  call CBA_fnc_taskDefend;

_group1 enableDynamicSimulation true;

_group2 = createGroup [civilian, true];
private _b = 2+(round random 2);
for "_i" from 0 to _b do
{
	"C_man_1" createUnit [_pos, _group2,
		"this addEventHandler [""killed"", {
			params [""_unit"", ""_killer"", ""_instigator"", ""_useEffects""];	
			private _penalty = ""DeathPenalty"" call BIS_fnc_getParamValue;
			[1, false] remoteExec [""H_fnc_deploypoints"",2];
			if (side _killer == west) then {
				[_penalty*2, position _unit, false] remoteExec [""H_fnc_townPoints"",2];
			} else {
				[_penalty, position _unit, false] remoteExec [""H_fnc_townPoints"",2];	
		};
		}]; [this,""CIV"",""C""] call tb3_fLoadout;"
	];
};
_group2 enableDynamicSimulation true;
{
	[_x, _pos, 500] spawn H_fnc_civPop
} forEach units _group2;