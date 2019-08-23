private _weapons =  player getVariable "unitWeapons";
private _priKit =  player getVariable "unitPriKit";
private _secKit =  player getVariable "unitSecKit";
private _pisKit =  player getVariable "unitPisKit";
private _backpack =  player getVariable "unit_Backpack";
private _backpackContents =  (player getVariable "unit_BackpackItems") call BIS_fnc_consolidateArray;
private _headgear =  player getVariable "unit_HeadGear";
private _uniform =  player getVariable "unit_Uniform";
private _uniformContents =  (player getVariable "unit_UniformItems") call BIS_fnc_consolidateArray;
private _vest =  player getVariable "unit_Vest";
private _vestContents =  (player getVariable "unit_VestItems") call BIS_fnc_consolidateArray;
private _goggles =  player getVariable "unit_Goggles";
private _assigneditems =  player getVariable "unitAssignedItems";

//player setVariable ["VariableDebug",_backpackContents select 0,true];


if (player isKindOf "Man") then {
	
	if ( local player ) then {
		removeAllAssignedItems player; 
		removeAllItemsWithMagazines player;
		{player removeWeapon _x;} forEach weapons player;
		
		if ( _uniform != "") then {
			[player,_uniform] call tb3_fSetUniform;
		};
		if (_backpack != "") then {
			[player,[_backpack,1]] call tb3_fSetbackpack;
		};
		if (_vest != "") then {
			[player,_vest] call tb3_fSetvest;
		};
			
		removeGoggles player;
		removeHeadGear player; //no you may not leave your hat on.
	};
};

	if ((count _assignedItems) > 0) then { [player,_assignedItems] call tb3_fSetLinkedItems; };
	if (_headgear != "") then { 
		[player,_headgear] call tb3_fSetHeadgear;
	};		
	if (_goggles != "") then {
		[player,_goggles] call tb3_fSetGoggles;
	};
	
	if ((count _weapons) > 0) then { [player,_weapons,_priKit,_secKit,_pisKit] call tb3_fSetWeapons; };
	
	if ((count _backpackContents) > 0) then { [player,_backpackContents] call tb3_fsetRuckContents; };
	if ((count _uniformContents) > 0) then { [player,_uniformContents] call tb3_fsetUniformContents; };
	if ((count _vestContents) > 0) then { [player,_vestContents] call tb3_fsetVestContents; };
	
player setVariable ["ACE_hasEarPlugsIn", true, true];
_EH = player addEventHandler ["killed", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	private _penalty = "DeathPenalty" call BIS_fnc_getParamValue;
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")- _penalty,true];
	[_this select 0] call H_fnc_savegear;
	[_penalty, position _unit, false] remoteExec ["H_fnc_townPoints",2];

}];
[player] spawn H_fnc_startOnSafe;