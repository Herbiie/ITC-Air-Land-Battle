params ["_vehicle"];

[_vehicle, 0, ["ACE_MainActions"],H_action_repairVehicle] call ace_interact_menu_fnc_addActionToObject;

[_vehicle, 0, ["ACE_MainActions"],H_action_returnVehicle] call ace_interact_menu_fnc_addActionToObject;

[_vehicle, 0, ["ACE_MainActions"],H_action_repairVehicleHeli] call ace_interact_menu_fnc_addActionToObject;