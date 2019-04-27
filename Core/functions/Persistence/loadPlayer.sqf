[player, "RED", "Arson 1'1", "R"] call H_fnc_setup;
sleep 0.1;
if (isNil "H_alb_playerIDs") then {H_alb_playerIDs = [];};
private _playerSaved = getPlayerUID player in H_alb_playerIDs;
if (_playerSaved) then {
	private _playerArray = [];
	{
		if (getPlayerUID player in _x) then {
			_playerArray = _x;
		};
	} forEach H_alb_players;
	
	_playerArray params ["_playerIDSaved", "_score", "_dir", "_position", "_playerKit", "_commander","_subCommander"];
	_playerKit params ["_weapons", "_PriKit", "_SecKit", "_PisKit", "_backpack", "_backpackitems", "_headgear", "_uniform", "_uniformItems", "_vest", "_vestItems", "_goggles", "_assignedItems"];
	private _backpackContents =  (_backpackItems) call BIS_fnc_consolidateArray;
	private _vestContents =  (_vestItems) call BIS_fnc_consolidateArray;
	private _uniformContents =  (_uniformItems) call BIS_fnc_consolidateArray;
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
	
	if (_commander && (count currentCommander == 0)) then {
		[getPlayerUID player, profileName] call H_fnc_becomeCommander;
	};
	
	if (_subCommander) then {
		player setRank "Sergeant";
		[arty,H_Arty_vehicles] call H_fnc_setUpOfficer;
		[mt,H_MT_vehicles] call H_fnc_setUpOfficer;
		[air,H_Air_vehicles] call H_fnc_setUpOfficer;
		[sup] call H_fnc_setUpSupply;
		[player,1,["ACE_SelfActions","COptions","SubCommander"]] call ace_interact_menu_fnc_removeActionFromObject;
		[player,1,["ACE_SelfActions","COptions","Commander"]] call ace_interact_menu_fnc_removeActionFromObject;
		[player, 1, ["ACE_SelfActions","COptions"],H_action_subcommanderResign] call ace_interact_menu_fnc_addActionToObject;
		_playerName = profileName;
		["Notification",["New Sub-Commander",format ["%1 is now a sub-commander.", _playerName]]] remoteExec ["BIS_fnc_showNotification",0];
		subCommanders = subCommanders + [getPlayerUID player];
		publicVariable "subCommanders";
	};
	player setPos _position;
	player setDir _dir;
	player setVariable ["H_Allyness",_score,true];
	
	
};