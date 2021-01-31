class options {
    class setOptions {
        file = "Core\functions\options\aceOptions.sqf";
    };
    class initialOptions {
        file = "Core\functions\options\initialOptions.sqf";
    };
    class checkCommand {
        file = "Core\functions\options\checkCommander.sqf";
    };
    class commanderOptions {
        file = "Core\functions\options\commanderOptions.sqf";
    };
    class allynessCheck {
        file = "Core\functions\options\allynessCheck.sqf";
    };
};

class management {
	class callVote {
		file = "Core\functions\management\callVote.sqf";
	};
	class placeVote {
		file = "Core\functions\management\placeVote.sqf";
	};
	class commanderVote {
		file = "Core\functions\management\commanderVote.sqf";
	};
	class becomeCommander {
		file = "Core\functions\management\becomeCommander.sqf";
	};
	class removeCommander {
		file = "Core\functions\management\removeCommander.sqf";
	};
	class becomeSubCommander {
		file = "Core\functions\management\becomeSubCommander.sqf";
	};
	class removeSubCommander {
		file = "Core\functions\management\removeSubCommander.sqf";
	};
	class voteOptions {
		file = "Core\functions\management\voteOptions.sqf";
	};
	class squadMenu {
		file = "Core\functions\management\squadMenu.sqf";
	};
	class newSquad {
		file = "Core\functions\management\newSquad.sqf";
	};
	class findSquad {
		file = "Core\functions\management\findSquad.sqf";
	};
	class leaveSquad {
		file = "Core\functions\management\leaveSquad.sqf";
	};
	class joinSquad {
		file = "Core\functions\management\joinSquad.sqf";
	};
	class lockSquad {
		file = "Core\functions\management\lockSquad.sqf";
	};
};

class persistence {
	class saveMission {
		file = "Core\functions\persistence\saveMission.sqf";
	};
	class saveMissionExit {
		file = "Core\functions\persistence\saveMissionExit.sqf";
	};
	class loadMission {
		file = "Core\functions\persistence\loadMission.sqf";
	};
	class loadPB {
		file = "Core\functions\persistence\loadPB.sqf";
	};
	class loadFOB {
		file = "Core\functions\persistence\loadFOB.sqf";
	};
	class loadVehicles {
		file = "Core\functions\persistence\loadVehicles.sqf";
	};
	class loadLocation {
		file = "Core\functions\persistence\loadLocation.sqf";
	};
	class loadPlayer {
		file = "Core\functions\persistence\loadPlayer.sqf";
	};
	class savePlayer {
		file = "Core\functions\persistence\savePlayer.sqf";
	};
	class loadSupplies {
		file = "Core\functions\persistence\loadSupplies.sqf";
	};
	class playerExit {
		file = "Core\functions\persistence\playerExit.sqf";
	};
	class savePlayers {
		file = "Core\functions\persistence\savePlayers.sqf";
	};
};

class player {
	class respawn {
		file = "Core\functions\player\respawn.sqf";
	};
	class setup {
		file = "Core\functions\player\setup.sqf";
	};
	class TeleportToSL {
		file = "Core\functions\player\teleport.sqf";
	};
	class startOnSafe {
		file = "Core\functions\player\startOnSafe.sqf";
	};
	class loadout {
		file = "Core\functions\player\loadout.sqf";
	};
};

class ai {
	class tracker {
		file = "Core\functions\ai\tracker.sqf";
	};
	class sendcontactReport {
		file = "Core\functions\ai\sendcontactReport.sqf";
	};
	class contact {
		file = "Core\functions\ai\contact.sqf";
	};
	class aiSetup {
		file = "Core\functions\ai\aiSetup.sqf";
	};
	class sideChat {
		file = "Core\functions\ai\sideChat.sqf";
	};
};

class groups {
	class opforFireteam {
		file = "Core\functions\ai\groups\OPFORFireteam.sqf";
	};
	class opforSquad {
		file = "Core\functions\ai\groups\OPFORSquad.sqf";
	};
	class HNFPatrol {
		file = "Core\functions\ai\groups\HNFPatrol.sqf";
	};
	class POLPatrol {
		file = "Core\functions\ai\groups\POLPatrol.sqf";
	};
	class BLUFORSquad {
		file = "Core\functions\ai\groups\BLUFORSquad.sqf";
	};
	class BLUFORFireTeam {
		file = "Core\functions\ai\groups\BLUFORFireTeam.sqf";
	};
};

class bases {
	class pb {
		file = "Core\functions\bases\pb.sqf";
	};
	class spawnPB {
		file = "Core\functions\bases\spawnPB.sqf";
	};
	class newPB {
		file = "Core\functions\bases\newPB.sqf";
	};
	class NewFOB {
		file = "Core\functions\bases\newFOB.sqf";
	};
	class spawnFOB {
		file = "Core\functions\bases\spawnFOB.sqf";
	};
	class fob {
		file = "Core\functions\bases\fob.sqf";
	};
	class fobAttacks {
		file = "Core\functions\bases\fobAttacks.sqf";
	};
	class closeBase {
		file = "Core\functions\bases\closeBase.sqf";
	};
	class teleport {
		file = "Core\functions\bases\teleport.sqf";
	};
	class addCOOptions {
		file = "Core\functions\bases\addCOOptions.sqf";
	};
};

class ALBCore {
	class townPoints {
		file = "Core\functions\ALBCore\townPoints.sqf";
	};
	class setUpLocation {
		file = "Core\functions\ALBCore\setUpLocation.sqf";
	};
	class setUpJIP {
		file = "Core\functions\ALBCore\setUpJIP.sqf";
	};
	class civilians {
		file = "Core\functions\ALBCore\civilians.sqf";
	};
	class civPop {
		file = "Core\functions\ALBCore\civPop.sqf";
	};
	class preInit {
		file = "Core\functions\ALBCore\preInit.sqf"
		preinit = 1;
	};
	class findClosestTown {
		file = "Core\functions\ALBCore\findClosestTown.sqf";
	};
	class ambientCivs {
		file = "Core\functions\ALBCore\ambientCivs.sqf";
	};
	class addCivActions {
		file = "Core\functions\ALBCore\addCivActions.sqf";
	};
};

class missons {
	class Outpost {
		file = "Core\functions\Missions\sideMissionOutpost.sqf";
	};
	class sideMissionRandom {
		file = "Core\functions\Missions\sideMissionRandom.sqf";
	};
	class operationRandom {
		file = "Core\functions\Missions\operationRandom.sqf";
	};
	class Hostage {
		file = "Core\functions\Missions\sideMissionHostage.sqf";
	};
	class Roadblock {
		file = "Core\functions\Missions\sideMissionRoadblock.sqf";
	};
	class infAttack {
		file = "Core\functions\Missions\infAttack.sqf";
	};
	class mortarAttack {
		file = "Core\functions\Missions\mortarAttack.sqf";
	};
	class Truck {
		file = "Core\functions\Missions\sideMissionTruck.sqf";
	};
	class largeAttack {
		file = "Core\functions\Missions\largeAttack.sqf";
	};
	class specialMissions {
		file = "Core\functions\Missions\specialMissions.sqf";
	};
	class VCP {
		file = "Core\functions\Missions\sideMissionVCP.sqf";
	};
	class randomAttacks {
		file = "Core\functions\Missions\randomAttacks.sqf";
	};
	class HeliCrash {
		file = "Core\functions\Missions\sideMissionHeliCrash.sqf";
	};
	class operationOutposts {
		file = "Core\functions\Missions\operationOutposts.sqf";
	};
	class AreaClear {
		file = "Core\functions\Missions\sideMissionClear.sqf";
	};
	class CaptureHVT {
		file = "Core\functions\Missions\sideMissionCapture.sqf";
	};
};

class logistics {
	class spawnVehicle {
		file = "Core\functions\Logistics\spawnVehicle.sqf";
	};
	class placeVehicle {
		file = "Core\functions\Logistics\placeVehicle.sqf";
	};
	class SetUpCommand {
		file = "Core\functions\Logistics\setupCommand.sqf";
	};
	class SetUpArmourer {
		file = "Core\functions\Logistics\setupArmourer.sqf";
	};
	class arsenal {
		file = "Core\functions\Logistics\arsenal.sqf";
	};
	class upgradeGear {
		file = "Core\functions\Logistics\upgradeGear.sqf";
	};
	class buyItem {
		file = "Core\functions\Logistics\buyItem.sqf";
	};
	class openShop {
		file = "Core\functions\Logistics\openShop.sqf";
	};
	class setupOfficer {
		file = "Core\functions\Logistics\setUpOfficer.sqf";
	};
	class equipment {
		file = "Core\functions\Logistics\equipment.sqf";
	};
	class setUpSupply {
		file = "Core\functions\Logistics\setUpSupply.sqf";
	};
	class fuelBladder {
		file = "Core\functions\Logistics\fuelBladder.sqf";
	};
	class cones {
		file = "Core\functions\Logistics\cones.sqf";
	};
	class spareWheel {
		file = "Core\functions\Logistics\spareWheel.sqf";
	};
	class medical {
		file = "Core\functions\Logistics\medical.sqf";
	};
	class addVehicleActions {
		file = "Core\functions\Logistics\addVehicleActions.sqf";
	};
	class getSupplyHeli {
		file = "Core\functions\Logistics\getSupplyHeli.sqf";
	};
	class resupplyHeliTracker {
		file = "Core\functions\Logistics\resupplyHeliTracker.sqf";
	};
	class returnVehicleHQ {
		file = "Core\functions\Logistics\returnVehicleHQ.sqf";
	};
	class release {
		file = "Core\functions\Logistics\release.sqf";
	};
	class heliNewVehicle {
		file = "Core\functions\Logistics\heliNewVehicle.sqf";
	};
	class heliTransport {
		file = "Core\functions\Logistics\heliTransport.sqf";
	};
	class heliSupply {
		file = "Core\functions\Logistics\heliSupply.sqf";
	};
	class requestMPVehicle {
		file = "Core\functions\Logistics\requestMPVehicle.sqf";
	};
	class openMP {
		file = "Core\functions\Logistics\openMP.sqf";
	};
	class repairVehicleHQ {
		file = "Core\functions\Logistics\repairVehicleHQ.sqf";
	};
	class newResupplyHeli {
		file = "Core\functions\Logistics\newResupplyHeli.sqf";
	};
};

class supply {
	class supplyBox {
		file = "Core\functions\Logistics\Supply\supplyBox.sqf";
	};
	class resupply {
		file = "Core\functions\Logistics\Supply\resupply.sqf";
	};
};

class dialog {
	class fillLB {
		file = "Core\functions\dialog\fillLB.sqf";
	};
};

class compositions {
	class outpost1 {
		file = "Core\functions\Compositions\outpost1.sqf";
	};
	class outpost2 {
		file = "Core\functions\Compositions\outpost2.sqf";
	};
	class outpost3 {
		file = "Core\functions\Compositions\outpost3.sqf";
	};
	class outpost4 {
		file = "Core\functions\Compositions\outpost4.sqf";
	};
	class depot1 {
		file = "Core\functions\Compositions\depot1.sqf";
	};
	class depot2 {
		file = "Core\functions\Compositions\depot2.sqf";
	}
	class depot3 {
		file = "Core\functions\Compositions\depot3.sqf";
	};
	class hq1 {
		file = "Core\functions\Compositions\hq1.sqf";
	};
	class hq2 {
		file = "Core\functions\Compositions\hq2.sqf";
	};
	class roadblock1 {
		file = "Core\functions\Compositions\roadblock1.sqf";
	};
	class roadblock2  {
		file = "Core\functions\Compositions\roadblock2.sqf";
	};
	class accom1 {
		file = "Core\functions\Compositions\accom1.sqf";
	};
	class accom2 {
		file = "Core\functions\Compositions\accom2.sqf";
	};
	class accom3 {
		file = "Core\functions\Compositions\accom3.sqf";
	};
};