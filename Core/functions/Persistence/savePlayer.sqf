private _playerID = getPlayerUID player;
// Remove Old Save
H_alb_playerIDs deleteAt ((missionNameSpace getVariable "H_alb_playerIDs") find _playerID);
private _playerNumber = 0;
{
	if (_playerID in _x) then {
		_playerNumber = _forEachIndex;
	};
} forEach (missionNameSpace getVariable "H_alb_players");
H_alb_players deleteAt _playerNumber;



// Add New Save
	private _weapon = weapons player;
	private _priKit = primaryWeaponItems player;
	private _priMag = (PrimaryWeaponMagazine player) select 0;
	if (!isNil "_priMag") then {
		_PriKit pushBack _PriMag;
	 };
	private _secKit = secondaryWeaponItems player;
	private _secMag = (secondaryWeaponMagazine player) select 0;
	if (!isNil "_secMag") then {
		_secKit pushBack _secMag;
	};
	private _pisKit = handgunItems player;
	private _pisMag = (handgunMagazine player) select 0;
	if (!isNil "_pisMag") then {
		_pisKit pushBack _pisMag;
	};
	private _backpack = backpack player;
	private _backPackItems = backpackItems player;
	private _headgear = headgear player;
	private _uniform = uniform player;
	private _uniformItems = uniformItems player;
	private _vest = vest player;
	private _vestItems = vestItems player;
	private _goggles = goggles player;
	private _assignedItems = assignedItems player;
	private _position = getPos player;
	private _dir = getDir player;
	private _playerKit = [_weapon, _PriKit, _SecKit, _PisKit, _backpack, _backpackitems, _headgear, _uniform, _uniformItems, _vest, _vestItems, _goggles, _assignedItems];
	
	private _score = player getVariable "H_allyness";
	
	private _isCommander = false;
	if (count (missionNameSpace getVariable "currentCommander") > 0) then {
		if (((missionNameSpace getVariable "currentCommander") select 1) == player) then {
			_isCommander = true;
		};
	};
	
	private _isSubCommander = false;
	
	if (_playerID in (missionNameSpace getVariable "subCommanders")) then {
		_isSubCommander = true;
	};
	
	sleep 1;
	H_alb_players pushBack [_playerID, _score, _dir, _position, _playerKit, _isCommander, _isSubCommander];
	H_alb_playerIDs pushBack _playerID;