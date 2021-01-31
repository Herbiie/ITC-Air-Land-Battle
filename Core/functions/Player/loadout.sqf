params ["_unit", "_type","_loadout"];



private _acre = missionNameSpace getVariable ["H_acreEnabled",false];
private _tfar = missionNameSpace getVariable ["H_tfarEnabled",false];

if (!_acre && !_tfar) then {
[_unit,_type,_loadout] call tb3_fnc_loadout;
};

if (_acre) then {
private _faction = format ["%1ACRE", _type];
[_unit,_faction,_loadout] call tb3_fnc_loadout;
};


if (_tfar) then {
private _faction = format ["%1TFAR", _type];
[_unit,_faction,_loadout] call tb3_fnc_loadout;
};