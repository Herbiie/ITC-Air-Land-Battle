params ["_unit"];


missionNameSpace setVariable ["unitWeapons", weapons _unit];
_PriKit = primaryWeaponItems _unit;
_PriMag = (PrimaryWeaponMagazine _unit) select 0;
_PriKit pushBack _PriMag;
missionNameSpace setVariable ["unitPriKit", _PriKit];
_secKit = secondaryWeaponItems _unit;
_secMag = (secondaryWeaponMagazine _unit) select 0;
_secKit pushBack _secMag;
missionNameSpace setVariable ["unitSecKit", _secKit];
_pisKit = handgunItems _unit;
_pisMag = (handgunMagazine _unit) select 0;
_pisKit pushBack _pisMag;
missionNameSpace setVariable ["unitPisKit", _pisKit];
missionNameSpace setVariable ["unit_Backpack", backpack _unit];
missionNameSpace setVariable ["unit_BackpackItems", backpackItems _unit];
missionNameSpace setVariable ["unit_Headgear", headgear _unit];
missionNameSpace setVariable ["unit_Uniform", uniform _unit];
missionNameSpace setVariable ["unit_UniformItems", uniformItems _unit];
missionNameSpace setVariable ["unit_Vest", vest _unit];
missionNameSpace setVariable ["unit_VestItems", vestItems _unit];
missionNameSpace setVariable ["unit_Goggles", goggles _unit];
missionNameSpace setVariable ["unitAssignedItems", assignedItems _unit];