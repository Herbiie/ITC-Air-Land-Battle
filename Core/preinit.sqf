// Variables
if (isServer) then {
	createFOB = false;
	createPB = false;
};



// Functions

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

// Bases Folder
H_fnc_pb = compile (preprocessFileLineNumbers "Core\functions\bases\pb.sqf");
H_fnc_spawnPB = compile (preprocessFileLineNumbers "Core\functions\bases\spawnPB.sqf");
H_fnc_newPB = compile (preprocessFileLineNumbers "Core\functions\bases\newPB.sqf");
H_fnc_NewFOB = compile (preprocessFileLineNumbers "Core\functions\bases\newFOB.sqf");
H_fnc_spawnFOB = compile (preprocessFileLineNumbers "Core\functions\bases\spawnFOB.sqf");
H_fnc_fob = compile (preprocessFileLineNumbers "Core\functions\bases\fob.sqf");
H_fnc_fobAttacks = compile (preprocessFileLineNumbers "Core\functions\bases\fobAttacks.sqf");

// ALB Core Folder
H_fnc_deploypoints = compile (preprocessFileLineNumbers "Core\functions\ALBCore\deploypoints.sqf");
H_fnc_showpoints = compile (preprocessFileLineNumbers "Core\functions\ALBCore\showpoints.sqf");
H_fnc_arsenal = compile (preprocessFileLineNumbers "Core\functions\ALBCore\arsenal.sqf");
H_fnc_townPoints = compile (preprocessFileLineNumbers "Core\functions\ALBCore\townPoints.sqf");
H_fnc_militaryBuildings = compile (preprocessFileLineNumbers "Core\functions\ALBCore\militaryBuildings.sqf");
H_fnc_setUpLocation = compile (preprocessFileLineNumbers "Core\functions\ALBCore\setUpLocation.sqf");

// Missions
H_fnc_Outpost = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionOutpost.sqf");
H_fnc_sideMissionRandom = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionRandom.sqf");
H_fnc_Hostage = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionHostage.sqf");
H_fnc_infAttack = compile (preprocessFileLineNumbers "Core\functions\Missions\infAttack.sqf");
H_fnc_mortarAttack = compile (preprocessFileLineNumbers "Core\functions\Missions\mortarAttack.sqf");
H_fnc_Truck = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionTruck.sqf");
H_fnc_largeAttack = compile (preprocessFileLineNumbers "Core\functions\Missions\largeAttack.sqf");
H_fnc_specialMissions = compile (preprocessFileLineNumbers "Core\functions\Missions\specialMissions.sqf");
H_fnc_VCP = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionVCP.sqf");
H_fnc_randomAttacks = compile (preprocessFileLineNumbers "Core\functions\Missions\randomAttacks.sqf");
H_fnc_HeliCrash = compile (preprocessFileLineNumbers "Core\functions\Missions\sideMissionHeliCrash.sqf");

// Logistics
H_fnc_SetUpMT = compile (preprocessFileLineNumbers "Core\functions\Logistics\setupMT.sqf");
H_fnc_ATV = compile (preprocessFileLineNumbers "Core\functions\Logistics\ATV.sqf");
H_fnc_Prowler = compile (preprocessFileLineNumbers "Core\functions\Logistics\prowler.sqf");
H_fnc_ProwlerHMG = compile (preprocessFileLineNumbers "Core\functions\Logistics\prowlerhmg.sqf");
H_fnc_ProwlerAT = compile (preprocessFileLineNumbers "Core\functions\Logistics\prowlerat.sqf");
H_fnc_Hunter = compile (preprocessFileLineNumbers "Core\functions\Logistics\hunter.sqf");
H_fnc_HunterHMG = compile (preprocessFileLineNumbers "Core\functions\Logistics\hunterhmg.sqf");
H_fnc_HunterGMG = compile (preprocessFileLineNumbers "Core\functions\Logistics\huntergmg.sqf");
H_fnc_setupAir = compile (preprocessFileLineNumbers "Core\functions\Logistics\setupair.sqf");
H_fnc_MH9 = compile (preprocessFileLineNumbers "Core\functions\Logistics\mh9.sqf");
H_fnc_AH9 = compile (preprocessFileLineNumbers "Core\functions\Logistics\ah9.sqf");
H_fnc_UH80 = compile (preprocessFileLineNumbers "Core\functions\Logistics\uh80.sqf");
H_fnc_CH67 = compile (preprocessFileLineNumbers "Core\functions\Logistics\ch67.sqf");
H_fnc_CH67A = compile (preprocessFileLineNumbers "Core\functions\Logistics\ch67a.sqf");
H_fnc_AH99 = compile (preprocessFileLineNumbers "Core\functions\Logistics\ah99.sqf");
H_fnc_A159 = compile (preprocessFileLineNumbers "Core\functions\Logistics\a159.sqf");
H_fnc_Gripen = compile (preprocessFileLineNumbers "Core\functions\Logistics\gripen.sqf");
H_fnc_F181E = compile (preprocessFileLineNumbers "Core\functions\Logistics\f181e.sqf");
H_fnc_A10E = compile (preprocessFileLineNumbers "Core\functions\Logistics\a10e.sqf");
H_fnc_SetUpArty = compile (preprocessFileLineNumbers "Core\functions\Logistics\setupArty.sqf");
H_fnc_MK6 = compile (preprocessFileLineNumbers "Core\functions\Logistics\mk6.sqf");
H_fnc_M4 = compile (preprocessFileLineNumbers "Core\functions\Logistics\m4.sqf");
H_fnc_M5 = compile (preprocessFileLineNumbers "Core\functions\Logistics\m5.sqf");