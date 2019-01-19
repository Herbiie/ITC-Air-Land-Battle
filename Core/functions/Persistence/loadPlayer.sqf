private _playerID = getPlayerUID player;
private _playerSaved = _playerID in H_alb_playerIDs;
if (_playerSaved) then {

	private _playerNumber = 0;
	private _a = 0;
	{
		if (_playerID in _x) then {
			_playerNumber = _a;
		};
		_a = _a + 1;
	} forEach H_alb_players;
	private _playerArray = H_alb_players select _playerNumber;

	_playerArray params ["_playerIDSaved", "_score", "_dir", "_position", "_playerKit"];
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
	[player, false, "RED", "Arson 1'1", "R"] call H_fnc_setup;
	sleep 0.1;
	player setPos _position;
	player setDir _dir;
	[player,_score] call BIS_fnc_addScore;
	
	
} else {
	[player, "RED", "Arson 1'1", "R"] call H_fnc_setup;	
};