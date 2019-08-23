H_action_commanderOptions = ["COptions","Commander Options","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_subordinateOptions = ["SUBptions","Subordinate Options","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_commanderRequest = ["Commander","Request To Be Commander","",{[] spawn H_fnc_commanderVote},{true}] call ace_interact_menu_fnc_createAction;

H_action_commanderResign = ["CommanderResign","Resign as Commander","",{[player] spawn H_fnc_removeCommander},{true}] call ace_interact_menu_fnc_createAction;

H_action_subcommanderResign = ["SubCommanderResign","Resign as Subordinate Commander","",{[player] spawn H_fnc_removesubCommander},{true}] call ace_interact_menu_fnc_createAction;

H_action_missionOptions = ["ALBOptions","ALB Mission Options","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_acceptMission = ["MissionAccept","Accept Mission","",{wait = false},{true}] call ace_interact_menu_fnc_createAction;

H_action_radioOn = ["RadioOn","Turn Notification Sound On","",{[] spawn H_fnc_radioOn},{true}] call ace_interact_menu_fnc_createAction;

H_action_radioOff = ["RadioOff","Turn Notification Sound Off","",{[] spawn H_fnc_radioOff},{true}] call ace_interact_menu_fnc_createAction;

H_action_checkCommand = ["checkCommand","Check who is commander","",{[] call H_fnc_checkCommand},{true}] call ace_interact_menu_fnc_createAction;

H_action_checkDeploy = ["checkDeploy","Check Deployment Points","",{hint format ["Deployment Points: %1", 
(missionNameSpace getVariable "H_alb_deploypoints")]},{true}] call ace_interact_menu_fnc_createAction;

H_action_checkXP = ["checkXP","Check Player Allyness","",{[] call H_fnc_allynessCheck},{true}] call ace_interact_menu_fnc_createAction;

H_action_savePlayer = ["savePlayer","Player Save and Exit","",{[] spawn H_fnc_savePlayer; [] spawn H_fnc_playerExit},{true}] call ace_interact_menu_fnc_createAction;

H_action_saveMission = ["saveMission","Mission Save","",{[] remoteExec ["H_fnc_saveMission",2]},{true}] call ace_interact_menu_fnc_createAction;

H_action_saveMissionExit = ["saveMissionExit","Mission Save and Exit","",{[] remoteExec ["H_fnc_saveMissionExit",2]},{true}] call ace_interact_menu_fnc_createAction;

H_action_voteOptions = ["VOptions","Vote","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_voteYes = ["VYes","Vote Yes","",{missionNameSpace setVariable ["currentVoteYes",(missionNameSpace getVariable "currentVoteYes")+1,true]; [player,1,["ACE_SelfActions","VOptions","VYes"]] call ace_interact_menu_fnc_removeActionFromObject; [player,1,["ACE_SelfActions","VOptions","VNo"]] call ace_interact_menu_fnc_removeActionFromObject;},{true}] call ace_interact_menu_fnc_createAction;

H_action_VoteNo = ["VNo","Vote No","",{missionNameSpace setVariable ["currentVoteNo",(missionNameSpace getVariable "currentVoteNo")+1,true]; [player,1,["ACE_SelfActions","VOptions","VNo"]] call ace_interact_menu_fnc_removeActionFromObject; [player,1,["ACE_SelfActions","VOptions","VYes"]] call ace_interact_menu_fnc_removeActionFromObject;},{true}] call ace_interact_menu_fnc_createAction;

H_action_makeSubcommander = ["makeSub","Make Sub-Commander",{},{[_target] remoteExec ["H_fnc_becomeSubCommander",0]},{(count currentCommander) > 0 && {(currentCommander select 1) == player}}] call ace_interact_menu_fnc_createAction;

H_action_removeMedic = ["removeMedic","Remove Medic",{},{player setVariable ["ace_medical_medicclass",0,true]; [player,1,["ACE_SelfActions","ALBOptions","removeMedic"]] call ace_interact_menu_fnc_removeActionFromObject; [player,1,["ACE_SelfActions","ALBOptions","removeMedicCom"]] call ace_interact_menu_fnc_removeActionFromObject;},{true}] call ace_interact_menu_fnc_createAction;

H_action_removeMedicCom = ["removeMedicCom","Remove Medic",{},{_target setVariable ["ace_medical_medicclass",0,true]; [_target,1,["ACE_SelfActions","ALBOptions","removeMedic"]] call ace_interact_menu_fnc_removeActionFromObject; [_target,1,["ACE_SelfActions","ALBOptions","removeMedicCom"]] call ace_interact_menu_fnc_removeActionFromObject;},{(count currentCommander) > 0 && {(currentCommander select 1) == player}}] call ace_interact_menu_fnc_createAction;

H_action_makeMedic = ["makeMedic","Make Medic",{},{_target setVariable ["ace_medical_medicclass",1,true]; 
[_target, 1, ["ACE_SelfActions","ALBOptions"],H_action_removeMedic] call ace_interact_menu_fnc_addActionToObject;
[_target, 0, ["ACE_MainActions","SUBptions"],H_action_removeMedicCom] call ace_interact_menu_fnc_addActionToObject;},{(count currentCommander) > 0 && {(currentCommander select 1) == player}}] call ace_interact_menu_fnc_createAction;



