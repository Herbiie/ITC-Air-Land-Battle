params ["_savingPlayer"];
private _playerID = getPlayerUID _savingPlayer;
// Remove Old Save
private _idNumber = H_alb_playerIDs find _playerID;
H_alb_playerIDs deleteAt _idNumber;
publicVariable "H_alb_playerIDs";
private _playerNumber = 0;
private _a = 0;
{
	if (_playerID in _x) then {
		_playerNumber = _a;
	};
	_a = _a + 1;
} forEach H_alb_players;
H_alb_players deleteAt _playerNumber;
publicVariable "H_alb_players";



// Add New Save
	private _weapon = weapons _savingPlayer;
	private _priKit = primaryWeaponItems _savingPlayer;
	private _priMag = (PrimaryWeaponMagazine _savingPlayer) select 0;
	if (!isNil "_priMag") then {
		_PriKit pushBack _PriMag;
	 };
	private _secKit = secondaryWeaponItems _savingPlayer;
	private _secMag = (secondaryWeaponMagazine _savingPlayer) select 0;
	if (!isNil "_secMag") then {
		_secKit pushBack _secMag;
	};
	private _pisKit = handgunItems _savingPlayer;
	private _pisMag = (handgunMagazine _savingPlayer) select 0;
	if (!isNil "_pisMag") then {
		_pisKit pushBack _pisMag;
	};
	private _backpack = backpack _savingPlayer;
	private _backPackItems = backpackItems _savingPlayer;
	private _headgear = headgear _savingPlayer;
	private _uniform = uniform _savingPlayer;
	private _uniformItems = uniformItems _savingPlayer;
	private _vest = vest _savingPlayer;
	private _vestItems = vestItems _savingPlayer;
	private _goggles = goggles _savingPlayer;
	private _assignedItems = assignedItems _savingPlayer;
	private _position = getPos _savingPlayer;
	private _dir = getDir _savingPlayer;
	private _score = getPlayerScores _savingPlayer;
	private _playerKit = [_weapon, _PriKit, _SecKit, _PisKit, _backpack, _backpackitems, _headgear, _uniform, _uniformItems, _vest, _vestItems, _goggles, _assignedItems];
	H_alb_players = H_alb_players + [[_playerID, _score, _dir, _position, _playerKit]];
	publicVariable "H_alb_players";
	H_alb_playerIDs = H_alb_playerIDs + [_playerID];
	publicVariable "H_alb_playerIDs"