params ["_arrayString"];
_splitArray = _arrayString splitString ",[]""";
_name = _splitArray select 0;
_price = parseNumber (_splitArray select 1);
_pScore = score player;
if(_name isKindOf ["ItemCore", configFile >> "CfgWeapons"]) then {
	if (_pScore >= _price) then {
		if (player canAdd _name) then {
		   player addItem _name;
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
		} else {
		   hint "Not enough space";
		};
	} else {
		hint "You cannot afford this.";
	};
};

closeDialog 0;