params ["_applicantID"];
[player,1,["ACE_SelfActions","COptions","subcommanderAccept"]] call ace_interact_menu_fnc_removeActionFromObject;
[player,1,["ACE_SelfActions","COptions","subcommanderReject"]] call ace_interact_menu_fnc_removeActionFromObject;
[_applicantID] remoteExec ["H_fnc_becomeSubCommander",0];