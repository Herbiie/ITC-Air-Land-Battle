params ["_villageLeader"];

[_villageLeader, 0, ["ACE_MainActions"],H_action_civilianActions] call ace_interact_menu_fnc_addActionToObject;
[_villageLeader, 0, ["ACE_MainActions","civInteract"],H_action_civAskAboutEnemy] call ace_interact_menu_fnc_addActionToObject;
[_villageLeader, 0, ["ACE_MainActions","civInteract"],H_action_civMission] call ace_interact_menu_fnc_addActionToObject;
[_villageLeader, 0, ["ACE_MainActions","civInteract"],H_action_civSecurity] call ace_interact_menu_fnc_addActionToObject;