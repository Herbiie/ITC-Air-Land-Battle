 params ["_assignedItems","_weapons","_backpack","_headgear","_uniform","_vest","_goggles","_priKit","_secKit","_pisKit","_backpackContents","_vestContents","_uniformContents"];
 
 

_weapons =  missionNameSpace getVariable "unitWeapons";
_priKit =  missionNameSpace getVariable "unitPriKit";
_secKit =  missionNameSpace getVariable "unitSecKit";
_pisKit =  missionNameSpace getVariable "unitPisKit";
_backpack =  missionNameSpace getVariable "unit_Backpack";
_backpackContents =  (missionNameSpace getVariable "unit_BackpackItems") call BIS_fnc_consolidateArray;
_headgear =  missionNameSpace getVariable "unit_HeadGear";
_uniform =  missionNameSpace getVariable "unit_Uniform";
_uniformContents =  (missionNameSpace getVariable "unit_UniformItems") call BIS_fnc_consolidateArray;
_vest =  missionNameSpace getVariable "unit_Vest";
_vestContents =  (missionNameSpace getVariable "unit_VestItems") call BIS_fnc_consolidateArray;
_goggles =  missionNameSpace getVariable "unit_Goggles";
_assigneditems =  missionNameSpace getVariable "unitAssignedItems";

//missionNameSpace setVariable ["VariableDebug",_backpackContents select 0,true];


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
_EH = player addEventHandler ["killed", {[_this select 0] call H_fnc_savegear}];
[player] spawn H_fnc_startOnSafe;
private _penalty = "DeathPenalty" call BIS_fnc_getParamValue;
[_penalty, false] remoteExec ["H_fnc_deploypoints",2];