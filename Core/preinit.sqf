// Variables
if (isServer) then {
	createFOB = false;
	createPB = false;

// Set Factions
	private _factionValue = "Faction" call BIS_fnc_getParamValue;

	switch (_factionValue) do {
		case 1: {H_Faction = "CTRG"};
		case 2: {H_Faction = "NATO"};
		case 3: {H_Faction = "USMCWD"};
		case 4: {H_Faction = "USMCDE"};
		case 5: {H_Faction = "USARMYUCP"};
		case 6: {H_Faction = "USARMYOCP"};
		case 7: {H_Faction = "CSAT"};
	};
	publicVariable "H_Faction";
	
	H_aiFaction = format ["%1AI",H_Faction];
	publicVariable "H_aiFaction";
	
	private _enfactionValue = "enFaction" call BIS_fnc_getParamValue;

	switch (_enfactionValue) do {
		case 1: {
			H_enFaction = "ALTISI"
		};
		case 2: {
			H_enFaction = "ALTISG"
		};
		case 3: {
			H_enFaction = "TANOAR"
		};
	};
	publicVariable "H_enFaction";
};



// Functions
// Options Folder
H_fnc_setOptions = compile (preprocessFileLineNumbers "Core\functions\options\aceOptions.sqf");
H_fnc_initialOptions = compile (preprocessFileLineNumbers "Core\functions\options\initialOptions.sqf");
H_fnc_radioOn = compile (preprocessFileLineNumbers "Core\functions\options\radioOn.sqf");
H_fnc_radioOff = compile (preprocessFileLineNumbers "Core\functions\options\radioOff.sqf");
H_fnc_checkCommand = compile (preprocessFileLineNumbers "Core\functions\options\checkCommander.sqf");
H_fnc_commanderOptions = compile (preprocessFileLineNumbers "Core\functions\options\commanderOptions.sqf");
H_fnc_allynessCheck = compile (preprocessFileLineNumbers "Core\functions\options\allynessCheck.sqf");

// Management Folder
H_fnc_callVote = compile (preprocessFileLineNumbers "Core\functions\management\callVote.sqf");
H_fnc_PlaceVote = compile (preprocessFileLineNumbers "Core\functions\management\placeVote.sqf");
H_fnc_commanderVote = compile (preprocessFileLineNumbers "Core\functions\management\commanderVote.sqf");
H_fnc_becomeCommander = compile (preprocessFileLineNumbers "Core\functions\management\becomeCommander.sqf");
H_fnc_removeCommander = compile (preprocessFileLineNumbers "Core\functions\management\removeCommander.sqf");
H_fnc_subCommander = compile (preprocessFileLineNumbers "Core\functions\management\subCommander.sqf");
H_fnc_subCommanderDecision = compile (preprocessFileLineNumbers "Core\functions\management\subCommanderDecision.sqf");
H_fnc_acceptSubordinate = compile (preprocessFileLineNumbers "Core\functions\management\subCommanderAccept.sqf");
H_fnc_rejectSubordinate = compile (preprocessFileLineNumbers "Core\functions\management\subCommanderReject.sqf");
H_fnc_becomeSubCommander = compile (preprocessFileLineNumbers "Core\functions\management\becomeSubCommander.sqf");
H_fnc_subCommanderRejected = compile (preprocessFileLineNumbers "Core\functions\management\subCommanderRejected.sqf");
H_fnc_removeSubCommander = compile (preprocessFileLineNumbers "Core\functions\management\removeSubCommander.sqf");

// Persistence Folder
H_fnc_saveMission = compile (preprocessFileLineNumbers "Core\functions\persistence\saveMission.sqf");
H_fnc_saveMissionExit = compile (preprocessFileLineNumbers "Core\functions\persistence\saveMissionExit.sqf");
H_fnc_loadMission = compile (preprocessFileLineNumbers "Core\functions\persistence\loadMission.sqf");
H_fnc_loadPB = compile (preprocessFileLineNumbers "Core\functions\persistence\loadPB.sqf");
H_fnc_loadFOB = compile (preprocessFileLineNumbers "Core\functions\persistence\loadFOB.sqf");
H_fnc_loadVehicles = compile (preprocessFileLineNumbers "Core\functions\persistence\loadVehicles.sqf");
H_fnc_loadLocation = compile (preprocessFileLineNumbers "Core\functions\persistence\loadLocation.sqf");
H_fnc_loadPlayer = compile (preprocessFileLineNumbers "Core\functions\persistence\loadPlayer.sqf");
H_fnc_savePlayer = compile (preprocessFileLineNumbers "Core\functions\persistence\savePlayer.sqf");
H_fnc_playerExit = compile (preprocessFileLineNumbers "Core\functions\persistence\playerExit.sqf");
H_fnc_loadSupplies = compile (preprocessFileLineNumbers "Core\functions\persistence\loadSupplies.sqf");

// Player Folder
H_fnc_respawn = compile (preprocessFileLineNumbers "Core\functions\player\respawn.sqf");
H_fnc_setup = compile (preprocessFileLineNumbers "Core\functions\player\setup.sqf");
H_fnc_TeleportToSL = compile (preprocessFileLineNumbers "Core\functions\player\teleport.sqf");
H_fnc_startOnSafe = compile (preprocessFileLineNumbers "Core\functions\player\startOnSafe.sqf");
H_fnc_saveGear = compile (preprocessFileLineNumbers "Core\functions\player\saveGear.sqf");
H_fnc_loadout = compile (preprocessFileLineNumbers "Core\functions\player\loadout.sqf");

// AI Folder
H_fnc_patrol = compile (preprocessFileLineNumbers "Core\functions\ai\patrol.sqf");
H_fnc_patrolOnRoad = compile (preprocessFileLineNumbers "Core\functions\ai\patrolOnRoad.sqf");
H_fnc_tracker = compile (preprocessFileLineNumbers "Core\functions\ai\tracker.sqf");
H_fnc_sendcontactReport = compile (preprocessFileLineNumbers "Core\functions\ai\sendcontactReport.sqf");
H_fnc_contact = compile (preprocessFileLineNumbers "Core\functions\ai\contact.sqf");
H_fnc_aiSetup = compile (preprocessFileLineNumbers "Core\functions\ai\aiSetup.sqf");
H_fnc_Radio = compile (preprocessFileLineNumbers "Core\functions\ai\radio.sqf");
H_fnc_playRadio = compile (preprocessFileLineNumbers "Core\functions\ai\playradio.sqf");
H_fnc_aiLoadout = compile (preprocessFileLineNumbers "Core\functions\ai\ailoadout.sqf");

// Groups
H_fnc_opforFireteam = compile (preprocessFileLineNumbers "Core\functions\ai\groups\OPFORFireteam.sqf");
H_fnc_opforSquad = compile (preprocessFileLineNumbers "Core\functions\ai\groups\OPFORSquad.sqf");
H_fnc_HNFPatrol = compile (preprocessFileLineNumbers "Core\functions\ai\groups\HNFPatrol.sqf");
H_fnc_POLPatrol = compile (preprocessFileLineNumbers "Core\functions\ai\groups\POLPatrol.sqf");
H_fnc_BLUFORSquad = compile (preprocessFileLineNumbers "Core\functions\ai\groups\BLUFORSquad.sqf");
H_fnc_BLUFORFireTeam = compile (preprocessFileLineNumbers "Core\functions\ai\groups\BLUFORFireTeam.sqf");


// Bases Folder
H_fnc_pb = compile (preprocessFileLineNumbers "Core\functions\bases\pb.sqf");
H_fnc_op = compile (preprocessFileLineNumbers "Core\functions\bases\op.sqf");
H_fnc_spawnPB = compile (preprocessFileLineNumbers "Core\functions\bases\spawnPB.sqf");
H_fnc_newPB = compile (preprocessFileLineNumbers "Core\functions\bases\newPB.sqf");
H_fnc_NewFOB = compile (preprocessFileLineNumbers "Core\functions\bases\newFOB.sqf");
H_fnc_spawnFOB = compile (preprocessFileLineNumbers "Core\functions\bases\spawnFOB.sqf");
H_fnc_fob = compile (preprocessFileLineNumbers "Core\functions\bases\fob.sqf");
H_fnc_fobAttacks = compile (preprocessFileLineNumbers "Core\functions\bases\fobAttacks.sqf");

// ALB Core Folder
H_fnc_deploypoints = compile (preprocessFileLineNumbers "Core\functions\ALBCore\deploypoints.sqf");
H_fnc_townPoints = compile (preprocessFileLineNumbers "Core\functions\ALBCore\townPoints.sqf");
H_fnc_militaryBuildings = compile (preprocessFileLineNumbers "Core\functions\ALBCore\militaryBuildings.sqf");
H_fnc_setUpLocation = compile (preprocessFileLineNumbers "Core\functions\ALBCore\setUpLocation.sqf");
H_fnc_setUpJIP = compile (preprocessFileLineNumbers "Core\functions\ALBCore\setUpJIP.sqf");
H_fnc_civilians = compile (preprocessFileLineNumbers "Core\functions\ALBCore\civilians.sqf");
H_fnc_civPop = compile (preprocessFileLineNumbers "Core\functions\ALBCore\civPop.sqf");

// Missions
H_fnc_Outpost = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionOutpost.sqf");
H_fnc_sideMissionRandom = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionRandom.sqf");
H_fnc_operationRandom = compile (preprocessFileLineNumbers "Core\functions\Missions\operationRandom.sqf");
H_fnc_Hostage = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionHostage.sqf");
H_fnc_Roadblock = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionRoadblock.sqf");
H_fnc_infAttack = compile (preprocessFileLineNumbers "Core\functions\Missions\infAttack.sqf");
H_fnc_mortarAttack = compile (preprocessFileLineNumbers "Core\functions\Missions\mortarAttack.sqf");
H_fnc_Truck = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionTruck.sqf");
H_fnc_largeAttack = compile (preprocessFileLineNumbers "Core\functions\Missions\largeAttack.sqf");
H_fnc_specialMissions = compile (preprocessFileLineNumbers "Core\functions\Missions\specialMissions.sqf");
H_fnc_VCP = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionVCP.sqf");
H_fnc_randomAttacks = compile (preprocessFileLineNumbers "Core\functions\Missions\randomAttacks.sqf");
H_fnc_HeliCrash = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionHeliCrash.sqf");
H_fnc_operationOutposts = compile (preprocessFileLineNumbers "Core\functions\Missions\operationOutposts.sqf");
H_fnc_AreaClear = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionClear.sqf");
H_fnc_CaptureHVT = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionCapture.sqf");

// Logistics
H_fnc_spawnVehicle = compile (preprocessFileLineNumbers "Core\functions\Logistics\spawnVehicle.sqf");
H_fnc_placeVehicle = compile (preprocessFileLineNumbers "Core\functions\Logistics\placeVehicle.sqf");
H_fnc_SetUpCommand = compile (preprocessFileLineNumbers "Core\functions\Logistics\setupCommand.sqf");
H_fnc_SetUpArmourer = compile (preprocessFileLineNumbers "Core\functions\Logistics\setupArmourer.sqf");
H_fnc_penalty = compile (preprocessFileLineNumbers "Core\functions\Logistics\penalty.sqf");
H_fnc_arsenal = compile (preprocessFileLineNumbers "Core\functions\Logistics\arsenal.sqf");
H_fnc_upgradeGear = compile (preprocessFileLineNumbers "Core\functions\Logistics\upgradeGear.sqf");
H_fnc_buyItem = compile (preprocessFileLineNumbers "Core\functions\Logistics\buyItem.sqf");
H_fnc_openShop = compile (preprocessFileLineNumbers "Core\functions\Logistics\openShop.sqf");
H_fnc_setupOfficer = compile (preprocessFileLineNumbers "Core\functions\Logistics\setUpOfficer.sqf");
H_fnc_equipment = compile (preprocessFileLineNumbers "Core\functions\Logistics\equipment.sqf");
// Supply
H_fnc_supplyBox = compile (preprocessFileLineNumbers "Core\functions\Logistics\Supply\supplyBox.sqf");
H_fnc_resupply = compile (preprocessFileLineNumbers "Core\functions\Logistics\Supply\resupply.sqf");


// Dialog
H_fnc_fillLB = compile (preprocessFileLineNumbers "Core\functions\dialog\fillLB.sqf");

// Compositions
H_fnc_outpost1 = compile (preprocessFileLineNumbers "Core\functions\Compositions\outpost1.sqf");
H_fnc_outpost2 = compile (preprocessFileLineNumbers "Core\functions\Compositions\outpost2.sqf");
H_fnc_outpost3 = compile (preprocessFileLineNumbers "Core\functions\Compositions\outpost3.sqf");
H_fnc_outpost4 = compile (preprocessFileLineNumbers "Core\functions\Compositions\outpost4.sqf");
H_fnc_depot1 = compile (preprocessFileLineNumbers "Core\functions\Compositions\depot1.sqf");
H_fnc_depot2 = compile (preprocessFileLineNumbers "Core\functions\Compositions\depot2.sqf");
H_fnc_depot3 = compile (preprocessFileLineNumbers "Core\functions\Compositions\depot3.sqf");
H_fnc_hq1 = compile (preprocessFileLineNumbers "Core\functions\Compositions\hq1.sqf");
H_fnc_hq2 = compile (preprocessFileLineNumbers "Core\functions\Compositions\hq2.sqf");
H_fnc_roadblock1 = compile (preprocessFileLineNumbers "Core\functions\Compositions\roadblock1.sqf");
H_fnc_roadblock2 = compile (preprocessFileLineNumbers "Core\functions\Compositions\roadblock2.sqf");
H_fnc_accom1 = compile (preprocessFileLineNumbers "Core\functions\Compositions\accom1.sqf");
H_fnc_accom2 = compile (preprocessFileLineNumbers "Core\functions\Compositions\accom2.sqf");
H_fnc_accom3 = compile (preprocessFileLineNumbers "Core\functions\Compositions\accom3.sqf");