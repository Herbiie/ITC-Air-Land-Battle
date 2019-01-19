params ["_arrayString"];
_splitArray = _arrayString splitString ",[]""";
_name = _splitArray select 0;
_price = parseNumber (_splitArray select 1);
_pScore = score player;
if(_name isKindOf ["ItemCore", configFile >> "CfgWeapons"]) then {
	if (_pScore >= _price) then {
		if (player canAdd _name) then {
		   player addItem _name;
		   player addScore _price-(_price*2);
			if(_name isKindOf ["default", configFile >> "CfgWeapons"]) then {_config = _config >> "CfgWeapons"};
			if(_name isKindOf ["default", configFile >> "CfgMagazines"]) then {_config = _config >> "CfgMagazines"};
			_pScore = score player;
			hint format ["%1 purchased. You have %1 allyness remaining.",getText (_config >> _name >> "displayName"), _pScore ]; 
		} else {
		   hint "Not enough space";
		};
	} else {
		hint "You cannot afford this.";
	};
};
if(_name isKindOf ["Default", configFile >> "CfgMagazines"]) then {
	if (_pScore >= _price) then {
		if (player canAdd _name) then {
		   player addMagazine _name;
		   player addScore _price-(_price*2);
			if(_name isKindOf ["default", configFile >> "CfgWeapons"]) then {_config = _config >> "CfgWeapons"};
			if(_name isKindOf ["default", configFile >> "CfgMagazines"]) then {_config = _config >> "CfgMagazines"};
			_pScore = score player;
			hint format ["%1 purchased. You have %1 allyness remaining.",getText (_config >> _name >> "displayName"), _pScore ]; 
		} else {
		   hint "Not enough space";
		};
	} else {
		hint "You cannot afford this.";
	};
};
if((_name isKindOf ["Default", configFile >> "CfgWeapons"]) && !(_name isKindOf ["ItemCore", configFile >> "CfgWeapons"])) then {
	if (_pScore >= _price) then {
		if (player canAdd _name) then {
			player addWeapon _name;
			player addScore _price-(_price*2);
			if(_name isKindOf ["default", configFile >> "CfgWeapons"]) then {_config = _config >> "CfgWeapons"};
			if(_name isKindOf ["default", configFile >> "CfgMagazines"]) then {_config = _config >> "CfgMagazines"};
			_pScore = score player;
			hint format ["%1 purchased. You have %1 allyness remaining.",getText (_config >> _name >> "displayName"), _pScore ]; 
		} else {
		   hint "Not enough space";
		};
	} else {
		hint "You cannot afford this.";
	};
};