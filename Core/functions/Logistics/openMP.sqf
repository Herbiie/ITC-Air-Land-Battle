private _vehicles = [];
private _numbers = [];
private _westVehicles = missionNameSpace getVariable ["H_alb_westVehicles",[]];
{
	private _vehicle = _x # 0;
	private _distance = _vehicle distance getMarkerPos "motorpool";
	if (_distance <= 40) then {
		_vehicles pushBack _vehicle;
		_numbers pushBack _forEachIndex;
	};
} forEach _westVehicles;

_dialog = createDialog "VEHICLES_DIALOG";
private _heli = [] call H_fnc_getSupplyHeli;
{
	if (_heli canSlingLoad _x) then {
		private _type = typeOf _x;
		private _name = getText (configfile >> "CfgVehicles" >> _type >> "displayName");
		private _number = _numbers # _forEachIndex;
		lbAdd [1501,_name];
		lbSetData [1501, _forEachIndex, str _number];	
		private _text = getText (configfile >> "CfgVehicles" >> _type >> "descriptionShort");
		private _textSplit = _text splitString "</>";
		{
			if (_x == "br ") then {
				_textSplit deleteAt _forEachIndex;
			};
		} forEach _textSplit;
		private _finalText = _textSplit joinString " || ";
		lbSetToolTip [1501, _forEachIndex, _finalText];
		lbSetPicture [1501, _foreachindex,getText (configfile >> "CfgVehicles" >> _type >> "picture")];
	};
} forEach _vehicles;