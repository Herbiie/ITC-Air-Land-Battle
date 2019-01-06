params ["_unit"];

_unit disableai "move";
_unit allowDamage false;

_unit addAction ["Upgrade Equipment (500)","
	[] call H_fnc_upgradeGear;
",nil,1.5,true,true,"","true",5];

_unit addAction ["Resupply Crate (20)","
	[] call H_fnc_resupply;
",nil,1.5,true,true,"","true",5];