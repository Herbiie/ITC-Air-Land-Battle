private _itemsArray = missionNameSpace getVariable ["H_custom_itemsArray",[]];

private _itcLand = missionNameSpace getVariable ["H_itcLandEnabled",false];
private _itcAir =  missionNameSpace getVariable ["H_itcAirEnabled",false];

if (_itcLand) then {
	private _itcLandItems = [["ITC_Land_B_AR2i_Packed",35],["ITC_Land_tablet_fdc",15],["itc_land_tablet_spg",15]];
	{
		_itemsArray pushback _x;
	} forEach _itcLandItems;
	_itemsArray sort true;
};

if (_itcAir) then {
	private _itcAirAitems = [["ITC_EPLRS",15],["ITC_Rover_SIR",15]];
	{
		_itemsArray pushBack _x;
	} forEach _itcAirItems;
	_itemsArray sort true;
};

_dialog = createDialog "ITEMS_DIALOG";
{
	_name = _x Select 0;
	_config = configFile;
	if(_name isKindOf ["default", configFile >> "CfgWeapons"]) then {_config = _config >> "CfgWeapons"};
	if(_name isKindOf ["default", configFile >> "CfgMagazines"]) then {_config = _config >> "CfgMagazines"};
	lbAdd [1500,format ["%1 (%2 Allyness)", getText (_config >> _name >> "displayName"),_x select 1]];
	lbSetData [1500, _forEachIndex, str _x];
	private _text = getText (_config >> _name >> "descriptionShort");
	private _textSplit = _text splitString "</>";
	{
		if (_x == "br ") then {
			_textSplit deleteAt _forEachIndex;
		};
	} forEach _textSplit;
	private _finalText = _textSplit joinString " || ";
	lbSetToolTip [1500, _forEachIndex, _finalText];
	lbSetPicture [1500, _foreachindex,getText (_config >> _name >> "picture")];
} forEach _itemsArray;

