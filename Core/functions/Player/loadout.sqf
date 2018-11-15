params ["_unit", "_type","_loadout"];



private _acre = isClass (configfile >> "CfgPatches" >> "acre_main");
private _tfar = isClass (configfile >> "CfgPatches" >> "task_force_radio");

if (!_acre && !_tfar) then {
[_unit,_type,_loadout] call tb3_fLoadout;
};

if (_acre) then {
private _faction = format ["%1ACRE", _type];
[_unit,_faction,_loadout] call tb3_fLoadout;
};


if (_tfar) then {
private _faction = format ["%1TFAR", _type];
[_unit,_faction,_loadout] call tb3_fLoadout;
};