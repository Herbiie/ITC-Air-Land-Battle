H_action_commanderOptions = ["COptions","Commander Options","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_quit = ["Quit","Player Exit","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_subordinateOptions = ["SUBptions","Subordinate Options","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_commanderRequest = ["Commander","Request To Be Commander","",{[] spawn H_fnc_commanderVote},{true}] call ace_interact_menu_fnc_createAction;

H_action_commanderResign = ["CommanderResign","Resign as Commander","",{[player] spawn H_fnc_removeCommander},{true}] call ace_interact_menu_fnc_createAction;

H_action_subcommanderResign = ["SubCommanderResign","Resign as Subordinate Commander","",{[player] spawn H_fnc_removesubCommander},{true}] call ace_interact_menu_fnc_createAction;

H_action_missionOptions = ["ALBOptions","ALB Mission Options","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_acceptMission = ["MissionAccept","Accept Mission","",{wait = false},{true}] call ace_interact_menu_fnc_createAction;

H_action_declineMission = ["MissionDecline","Decline Mission","",{cancel = true},{true}] call ace_interact_menu_fnc_createAction;

H_action_checkCommand = ["checkCommand","Check who is commander","",{[] call H_fnc_checkCommand},{true}] call ace_interact_menu_fnc_createAction;

H_action_checkDeploy = ["checkDeploy","Check Deployment Points","",{hint format ["Deployment Points: %1", 
(missionNameSpace getVariable "H_alb_deploypoints")]},{true}] call ace_interact_menu_fnc_createAction;

H_action_checkXP = ["checkXP","Check Player Allyness","",{[] call H_fnc_allynessCheck},{true}] call ace_interact_menu_fnc_createAction;

H_action_savePlayer = ["savePlayer","Player Save and Exit","",{[player] spawn H_fnc_savePlayer; [] spawn H_fnc_playerExit},{true}] call ace_interact_menu_fnc_createAction;

H_action_saveMission = ["saveMission","Mission Save","",{if (isServer) then { [] spawn H_fnc_saveMission } else {[] remoteExec ["H_fnc_saveMission",2]};},{true}] call ace_interact_menu_fnc_createAction;

H_action_saveMissionExit = ["saveMissionExit","Mission Save and Exit","",{if (isServer) then { [] spawn H_fnc_saveMissionExit } else {[] remoteExec ["H_fnc_saveMissionExit",2]};},{true}] call ace_interact_menu_fnc_createAction;

H_action_voteOptions = ["VOptions","Vote","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_voteYes = ["VYes","Vote Yes","",{missionNameSpace setVariable ["currentVoteYes",(missionNameSpace getVariable "currentVoteYes")+1,true]; [player,1,["ACE_SelfActions","VOptions","VYes"]] call ace_interact_menu_fnc_removeActionFromObject; [player,1,["ACE_SelfActions","VOptions","VNo"]] call ace_interact_menu_fnc_removeActionFromObject;},{true}] call ace_interact_menu_fnc_createAction;

H_action_VoteNo = ["VNo","Vote No","",{missionNameSpace setVariable ["currentVoteNo",(missionNameSpace getVariable "currentVoteNo")+1,true]; [player,1,["ACE_SelfActions","VOptions","VNo"]] call ace_interact_menu_fnc_removeActionFromObject; [player,1,["ACE_SelfActions","VOptions","VYes"]] call ace_interact_menu_fnc_removeActionFromObject;},{true}] call ace_interact_menu_fnc_createAction;

H_action_makeSubcommander = ["makeSub","Make Sub-Commander",{},{[_target] remoteExec ["H_fnc_becomeSubCommander",0]},{(count currentCommander) > 0 && (isPlayer _target) && (player in currentCommander)}] call ace_interact_menu_fnc_createAction;

H_action_removeMedic = ["removeMedic","Remove Medic",{},{player setVariable ["ace_medical_medicclass",0,true]; [player,1,["ACE_SelfActions","ALBOptions","removeMedic"]] call ace_interact_menu_fnc_removeActionFromObject; [player,1,["ACE_SelfActions","ALBOptions","removeMedicCom"]] call ace_interact_menu_fnc_removeActionFromObject;},{true}] call ace_interact_menu_fnc_createAction;

H_action_removeMedicCom = ["removeMedicCom","Remove Medic",{},{_target setVariable ["ace_medical_medicclass",0,true]; [_target,1,["ACE_SelfActions","ALBOptions","removeMedic"]] call ace_interact_menu_fnc_removeActionFromObject; [_target,1,["ACE_SelfActions","ALBOptions","removeMedicCom"]] call ace_interact_menu_fnc_removeActionFromObject;},{(isPlayer _target) && (count currentCommander) > 0 && {player in currentCommander}}] call ace_interact_menu_fnc_createAction;

H_action_makeMedic = ["makeMedic","Make Medic",{},{_target setVariable ["ace_medical_medicclass",1,true]; 
[_target, 1, ["ACE_SelfActions","ALBOptions"],H_action_removeMedic] call ace_interact_menu_fnc_addActionToObject;
[_target, 0, ["ACE_MainActions","SUBptions"],H_action_removeMedicCom] call ace_interact_menu_fnc_addActionToObject;},{(count currentCommander) > 0 && (isPlayer _target) && (player in currentCommander)}] call ace_interact_menu_fnc_createAction;

H_action_civilianActions = ["civInteract","Talk to Civilian","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_civAskAboutEnemy = ["civEnemy","Ask about enemy activity","",{
	
	private _allEnemy = allUnits select {(side _x == east)};
	private _closestEnemy = _allEnemy # 0;
	private _closestDistance = _closestEnemy distance _target;
	{
		private _newDistance = _x distance _target;
		if (_newDistance < _closestDistance) then {
			_closestEnemy = _x;
			_closestDistance = _newDistance;
		};
	} forEach _allEnemy;
	private _distance = _closestEnemy distance _target;
	private _cardinalDir = "North";
	private _dir = _closestEnemy getDir _target;
	if ((_dir >= 45) && (_dir < 135)) then { _cardinalDir = "East" };
	if ((_dir >= 135) && (_dir < 225)) then { _cardinalDir = "South" };
	if ((_dir >= 225) && (_dir < 315)) then { _cardinalDir = "West" };
	if (_distance < 300) then {
		["Village Leader", format ["There are enemies in the town to the %1 (Within 300m)",_cardinalDir]] spawn BIS_fnc_showSubtitle
	};
	if ((_distance >= 300) && (_distance < 1000)) then {
		["Village Leader", format ["I've seen some enemies around town somewhere to the %1 (within 1000m).",_cardinalDir]] spawn BIS_fnc_showSubtitle
	};
	if (_distance >= 1000) then {
		["Village Leader", format ["There's some enemies far away to the %1 (over 1000m).",_cardinalDir]] spawn BIS_fnc_showSubtitle
	};
},{true}] call ace_interact_menu_fnc_createAction;

H_action_civMission = ["civMission","Ask about intelligence (request mission)","",{
	_closestLoc = [position _target] call H_fnc_findClosestTown;
	private _points = _closestLoc # 2;
	private _missions = ["H_fnc_Outpost","H_fnc_Hostage","H_fnc_Truck","H_fnc_RoadBlock","H_fnc_AreaClear","H_fnc_captureHVT"];
	if (_points >= 400) exitWith {
		["Village Leader", "There's nothing we need, this area is secure!"] spawn BIS_fnc_showSubtitle;
	};
	private _lastAsk = _target getVariable ["H_lastAsk",0];
	private _time = diag_tickTime;
	if ((_time - _lastAsk) < 30) exitWith {
		private _timeLeft = round (30 - (_time - _lastAsk));
		["Village Leader", format ["Quit asking me! (Wait %1 more seconds)",_timeLeft]] spawn BIS_fnc_showSubtitle;
	};
	private _threshold = 80;
	if (_points >= 100) then {_threshold = 60;};
	if (_points >= 200) then {_threshold = 40;};
	if (_points >= 300) then {_threshold = 20;};
	private _randomNo = round (random 100);
	private _success = _randomNo >= _threshold;
	if (_success) then {
		if ((_points > 200)) then {
			["Village Leader", format ["Actually there is something you could help with *generating mission* (%1/%2)",_randomNo,_threshold]] spawn BIS_fnc_showSubtitle;
			private _mission = selectRandom _missions;
			[position _target] remoteExec [_mission,2];
		};
		if ((_points >= 100) && (_points < 200)) then {
			["Village Leader", format["Are they looking? Ok, maybe there is something you can go. *generating mission* (%1/%2)",_randomNo,_threshold]] spawn BIS_fnc_showSubtitle;
			private _mission = selectRandom _missions;
			[position _target] remoteExec [_mission,2];
		};
		if (_points < 100) then {
			["Village Leader", format ["You scum might be useful for something. *generating mission* (%1/%2)",_randomNo,_threshold]] spawn BIS_fnc_showSubtitle;
			private _mission = selectRandom _missions;
			[position _target] remoteExec [_mission,2];
		};
	} else {
		if ((_points > 200)) then {
			["Village Leader", format["I would love for you to help, but I can't think of anything right now. (%1/%2)",_randomNo,_threshold]] spawn BIS_fnc_showSubtitle;
		};
		if ((_points >= 100) && (_points < 200)) then {
			["Village Leader", format ["No, I couldn't help you right now. (%1/%2)",_randomNo,_threshold]] spawn BIS_fnc_showSubtitle;
		};
		if (_points < 100) then {
			["Village Leader", format["Like we'd need your help! (%1/%2)",_randomNo,_threshold]] spawn BIS_fnc_showSubtitle;
		};
		
	};
	_target setVariable ["H_lastAsk",diag_tickTime,true];
},{true}] call ace_interact_menu_fnc_createAction;

H_action_civSecurity = ["civSecurity","Ask about Local Security","",{
	_closestLoc = [position _target] call H_fnc_findClosestTown;
	private _points = _closestLoc # 2;
	private _perCent = _points/4;
	["Village Leader", format ["I'd say, if I were guessing, that the town was around %1%2 secure, if I were being imprecise.",_percent,"%"]] spawn BIS_fnc_showSubtitle;
},{true}] call ace_interact_menu_fnc_createAction;



H_action_nearestTown = ["nearestTown","Check Closest Town","",{
	private _town = [position _target] call H_fnc_findClosestTown;
	private _townName = text (_town # 0);
	hint format ["The closest town is %1",_townName];
},{true}] call ace_interact_menu_fnc_createAction;

H_action_returnToTheatreHQ = ["TheatreHQFastTravel","Return to theatre HQ","",{
	[] spawn H_fnc_teleport;
},{true}] call ace_interact_menu_fnc_createAction;

H_action_requestSideMission = ["requestSideMission","Request Mission","",{
	[_target] spawn H_fnc_sideMissionRandom;
},{true}] call ace_interact_menu_fnc_createAction;

H_action_purchaseItems = ["purchaseItems","Purchase Items","",{
	[] call H_fnc_openShop;
},{true}] call ace_interact_menu_fnc_createAction;

H_action_requestOp = ["requestOp","Request Operation","",{
	[_target] spawn H_fnc_operationRandom;
},{true}] call ace_interact_menu_fnc_createAction;

H_action_JIPTeleport = ["JIPTeleport","JIP Teleport","",{
	[_player] spawn H_fnc_TeleportToSL;
},{true}] call ace_interact_menu_fnc_createAction;

H_action_repairVehicle = ["repairVehicle","Repair Vehicle","",{
	_target setDammage 0;
},{
	private _distance = 15;
	if (_target isKindOf "Air") then {
		_distance = 300;
	};
	(_target distance repairDepot) < _distance
}] call ace_interact_menu_fnc_createAction;

H_action_supplyHeliBase = ["supplyHeliBase","Request Supplies","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_checkSupplyHeli = ["checkSupplyHeli","Check Supply Helicopter","",{
	private _heli = [] call H_fnc_getSupplyHeli;
	private _type = typeOf _heli;
	if (_type == "") then {
		hint "No supply heli available";
	} else {
		private _name = getText (configFile >> "CfgVehicles" >> _type >> "displayName");
		private _text = format ["Supply Helicopter: %1.",_name];
		hint _text;
	};
},{true}] call ace_interact_menu_fnc_createAction;

H_action_requestOldVehicle = ["requestOldVehicle","Request Vehicle from Motor Pool","",{
	[] call H_fnc_openMP;
},{private _heli = [] call H_fnc_getSupplyHeli; private _heliExists = (typeOf _heli != ""); _heliExists}] call ace_interact_menu_fnc_createAction;

H_action_requestNewVehicle = ["requestNewVehicle","Request New Vehicle","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_requestSupply = ["requestSupply","Request Other Supplies","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_returnVehicle = ["returnVehicle","Request Return Vehicle","",{
	hint "Helicopter en route, check map for progress.";
	[_target] remoteExec ["H_fnc_returnVehicleHQ",2];
},{private _heli = [] call H_fnc_getSupplyHeli; private _heliExists = (typeOf _heli != ""); private _heliTask = _heli getVariable ["H_onTask",false]; (_heliExists && (_heli canSlingLoad _target) && (speed _target < 1) && !_heliTask)}] call ace_interact_menu_fnc_createAction;



H_action_repairVehicleHeli = ["repairVehicleHeli","Request Repair Vehicle","",{
	hint "Helicopter en route, check map for progress.";
	[_target] remoteExec ["H_fnc_repairVehicleHQ",2];
},{private _heli = [] call H_fnc_getSupplyHeli; private _heliExists = (typeOf _heli != ""); private _heliTask = _heli getVariable ["H_onTask",false]; (_heliExists && (_heli canSlingLoad _target) && (speed _target < 1) && !_heliTask)}] call ace_interact_menu_fnc_createAction;

H_action_squads = ["squads","Squad Management","",{},{true}] call ace_interact_menu_fnc_createAction;

H_action_squadMenu = ["squadMenu","Open Squad Menu","",{[] call H_fnc_squadMenu},{true}] call ace_interact_menu_fnc_createAction;

H_action_lockSquad = ["lockSquad","Lock Squad","",{[true] call H_fnc_lockSquad;},{
private _allGroups = missionNameSpace getVariable ["h_groups",[]];
private _findGroup = [player] call H_fnc_findSquad;
if ((_findGroup # 1)>-1) then {
	private _thisGroup = _allGroups # (_findGroup # 1);
	_thisGroup params ["_group","_name","_team","_teamIDs","_locked"];
	(!_locked) && (leader _group == player)
} else {
	false
}
}] call ace_interact_menu_fnc_createAction;

H_action_unlockSquad = ["unlockSquad","Unlock Squad","",{[false] call H_fnc_lockSquad;},{
private _allGroups = missionNameSpace getVariable ["h_groups",[]];
private _findGroup = [player] call H_fnc_findSquad;
if ((_findGroup # 1)>-1) then {
	private _thisGroup = _allGroups # (_findGroup # 1);
	_thisGroup params ["_group","_name","_team","_teamIDs","_locked"];
	(_locked) && (leader _group == player)
} else {
	false
}
}] call ace_interact_menu_fnc_createAction;

H_action_newsupplyHeliBase = ["newsupplyHeliBase","Request Supply Helicopter","",{},{true}] call ace_interact_menu_fnc_createAction;





