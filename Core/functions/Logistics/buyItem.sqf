params ["_arrayString"];
_splitArray = _arrayString splitString ",[]""";
_name = _splitArray select 0;
_price = parseNumber (_splitArray select 1);
_pScore = player getVariable "H_Allyness";
if(_name isKindOf ["ItemCore", configFile >> "CfgWeapons"]) then {
	if (_pScore >= _price) then {
		if (player canAdd _name) then {
			player addItem _name;
			player setVariable ["H_Allyness",(player getVariable "H_Allyness")-_price,true];
			_pScore = player getVariable "H_Allyness";
			hint format ["%1 purchased. You have %2 allyness remaining.",getText (configFile >> "CfgWeapons" >> _name >> "displayName"), _pScore ]; 
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
			player setVariable ["H_Allyness",(player getVariable "H_Allyness")-_price,true];
			_pScore = player getVariable "H_Allyness";
			hint format ["%1 purchased. You have %2 allyness remaining.",getText (configFile >> "CfgMagazines" >> _name >> "displayName"), _pScore ]; 
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
			player setVariable ["H_Allyness",(player getVariable "H_Allyness")-_price,true];
			_pScore = player getVariable "H_Allyness";
			hint format ["%1 purchased. You have %2 allyness remaining.",getText (configFile >> "CfgWeapons" >> _name >> "displayName"), _pScore ]; 
		} else {
		   hint "Not enough space";
		};
	} else {
		hint "You cannot afford this.";
	};
};