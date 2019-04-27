removeAllActions mt;
removeAllActions air;
removeAllActions arty;
removeAllActions sup;
private _playerName = profileName;
private _playerID = getPlayerUID player;
[player,1,["ACE_SelfActions","COptions","SubCommanderResign"]] call ace_interact_menu_fnc_removeActionFromObject;
player setRank "PRIVATE";
["Notification",["Sub-Commander Resigns",format ["%1 has resigned as sub-commander.", _playerName]]] remoteExec ["BIS_fnc_showNotification",0];