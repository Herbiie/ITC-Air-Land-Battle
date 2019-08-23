params ["_unit"];


player setVariable ["unitWeapons", weapons _unit];
_PriKit = primaryWeaponItems _unit;
_PriMag = (PrimaryWeaponMagazine _unit) select 0;
_PriKit pushBack _PriMag;
player setVariable ["unitPriKit", _PriKit];
_secKit = secondaryWeaponItems _unit;
_secMag = (secondaryWeaponMagazine _unit) select 0;
_secKit pushBack _secMag;
player setVariable ["unitSecKit", _secKit];
_pisKit = handgunItems _unit;
_pisMag = (handgunMagazine _unit) select 0;
_pisKit pushBack _pisMag;
player setVariable ["unitPisKit", _pisKit];
player setVariable ["unit_Backpack", backpack _unit];
player setVariable ["unit_BackpackItems", backpackItems _unit];
player setVariable ["unit_Headgear", headgear _unit];
player setVariable ["unit_Uniform", uniform _unit];
player setVariable ["unit_UniformItems", uniformItems _unit];
player setVariable ["unit_Vest", vest _unit];
player setVariable ["unit_VestItems", vestItems _unit];
player setVariable ["unit_Goggles", goggles _unit];
player setVariable ["unitAssignedItems", assignedItems _unit];