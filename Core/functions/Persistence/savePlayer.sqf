params ["_unit"];
private _playerID = getPlayerUID _unit;
// Remove Old Save
private _playerIDArray = missionNameSpace getVariable ["H_alb_playerIDs",[]];
if (_playerID in _playerIDArray) then {
	_playerIDArray deleteAt (_playerIDArray find _playerID);
	missionNameSpace setVariable ["H_alb_playerIDs",_playerIDArray,true];
	private _playerNumber = 0;
	{
		if (_playerID in _x) then {
			_playerNumber = _forEachIndex;
		};
	} forEach H_alb_players;
	private _playersArray = missionNameSpace getVariable ["H_alb_players",[]];
	_playersArray deleteAt _playerNumber;
	missionNameSpace setVariable ["H_alb_players",_playersArray,true];
};



// Add New Save
	private _weapon = weapons _unit;
	private _priKit = primaryWeaponItems _unit;
	private _priMag = (PrimaryWeaponMagazine _unit) # 0;
	if (!isNil "_priMag") then {
		_PriKit pushBack _PriMag;
	 };
	private _secKit = secondaryWeaponItems _unit;
	private _secMag = (secondaryWeaponMagazine _unit) # 0;
	if (!isNil "_secMag") then {
		_secKit pushBack _secMag;
	};
	private _pisKit = handgunItems _unit;
	private _pisMag = (handgunMagazine _unit) # 0;
	if (!isNil "_pisMag") then {
		_pisKit pushBack _pisMag;
	};
	private _backpack = backpack _unit;
	private _backPackItems = backpackItems _unit;
	private _headgear = headgear _unit;
	private _uniform = uniform _unit;
	private _uniformItems = uniformItems _unit;
	private _vest = vest _unit;
	private _vestItems = vestItems _unit;
	private _goggles = goggles _unit;
	private _assignedItems = assignedItems _unit;
	private _position = getPos _unit;
	private _dir = getDir _unit;
	private _playerKit = [_weapon, _PriKit, _SecKit, _PisKit, _backpack, _backpackitems, _headgear, _uniform, _uniformItems, _vest, _vestItems, _goggles, _assignedItems];
	
	private _score = _unit getVariable "H_allyness";
	
	private _isCommander = false;
	if (count currentCommander > 0) then {
		if ((currentCommander # 1) == _unit) then {
			_isCommander = true;
		};
	};
	
	private _isSubCommander = false;
	
	if (_playerID in subCommanders) then {
		_isSubCommander = true;
	};
	
	sleep 1;
	private _playersArray = missionNameSpace getVariable ["H_alb_players",[]];
	_playersArray pushBack [_playerID, _score, _dir, _position, _playerKit, _isCommander, _isSubCommander];
	missionNameSpace setVariable ["H_alb_players",_playersArray,true];
	private _playeridsArray = missionNameSpace getVariable ["H_alb_playerIDs",[]];
	_playeridsArray pushBack _playerID;
	missionNameSpace setVariable ["H_alb_playerIDs",_playeridsArray,true];