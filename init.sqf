// THis is my INIT!

[] execVM "settings\briefing.sqf";

_time =  "TimeAcceleration" call BIS_fnc_getParamValue;
settimemultiplier _time;
[] execVM "core\scripts\dynamicsimulation.sqf";
[] call H_fnc_setOptions;
radioNotifications = true;
enableDynamicSimulationSystem true;

[west, "hqmarker", "Theatre HQ"] call BIS_fnc_addRespawnPosition;


if (isServer) then {
	allPatrols = [];
	publicVariable "allPatrols";
	[] call H_fnc_equipment;
	currentCommander = [];
	subCommanders = [];
	publicVariable "currentCommander";
	publicVariable "subCommanders";
	H_saved = profileNamespace getVariable "H_alb_Altis";
	publicVariable "H_saved";
	voteInProgress = false;
	publicVariable "voteInProgress";
};


if (isServer && ("LoadPrevious" call BIS_fnc_getParamValue == 0)) then {
	H_alb_fobs = [];
	publicVariable "H_alb_fobs";
	H_alb_platoons = ["Alpha 1","Alpha 2","Alpha 3","Bravo 1","Bravo 2","Bravo 3","Charlie 1","Charlie 2","Charlie 3","Delta 1","Delta 2","Delta 3","Echo 1","Echo 2","Echo 3","Foxtrot 1","Foxtrot 2","Foxtrot 3","Golf 1","Golf 2","Golf 3","Hotel 1","Hotel 2","Hotel 3","India 1","India 2","India 3","Juliet 1","Juliet 2","Juliet 3","Kilo 1","Kilo 2","Kilo 3"];
	H_alb_coolCallsigns = ["Beast","Arsenic","Emerald","Leopard","Ugly","Hog","Warthog","Jaguar","Widow","Trickster","Knight","Spooky","Cowboy","Eagle","Hawk","Thunder","Kitten","Bulldog","Blade","Sabre","Star","Panther","Rhino","Falcon","Toxic","Raider"];
	H_alb_opNameA = ["Husky","Icy","Aboriginal","Troubled","Faithful","Weak","Uneven","Jittery","Nimble","Useless","Rotten","Eager","Wanting","Expensive","Roomy","Knotty","Agonising","Odd","Scientific","Repulsive","Magical","Knowledgeable","Toothsome","Chivalrous","Gusty","Steep","Ossified","Next","Thinkable","Sloppy","Honourable","Limping","Material","Hulking","Scarce","Damp","Voracious","Awake","Ahead","Empty","Motionless","Attractive","Dazzling","Unbecoming","Materialistic","Nebulous","Difficult","Graceful","Elastic"];
	H_alb_opNameB = ["Cheetah","Mole","Seal","Chimpanzee","Otter","Mongoose","Burro","Aoudad","Antelope","Chameleon","Capybara","Marten","Skunk","Kangaroo","Eagle","Owl","Bull","Bumble Bee","Vicuna","Starfish","Ferret","Polar Bear","Leopard","Monkey","Alpaca","Budgerigar","Grizzly Bear","Lovebird","Salamander","Panda","Yak","Deer","Ocelot","Sheep","Steer","Hog","Parrot","Colt","Elk","Llama","Gazelle","Duckbill Platypus","Pig","Warthog","Rat","Hamster","Bat","Anteater","Groundhog","Mandrill","Coyote"];
	H_alb_locations = [];
	H_alb_deploypoints = 150;
	publicVariable "H_alb_deploypoints";
	H_alb_westVehicles = [];
	publicVariable "H_alb_westVehicles";
	H_alb_playerIDs = [];
	publicVariable "H_alb_playerIDs";
	H_alb_players = [];
	publicVariable "H_alb_players";
	[] execVM "core\scripts\findTowns.sqf";
	[] execVM "core\scripts\handlepoints.sqf";
	H_alb_gearTier = 0;
	publicVariable "H_alb_gearTier";
};

if (isServer && ("LoadPrevious" call BIS_fnc_getParamValue == 1) && !(isNil "H_saved")) then {
	H_alb_platoons = ["Alpha 1","Alpha 2","Alpha 3","Bravo 1","Bravo 2","Bravo 3","Charlie 1","Charlie 2","Charlie 3","Delta 1","Delta 2","Delta 3","Echo 1","Echo 2","Echo 3","Foxtrot 1","Foxtrot 2","Foxtrot 3","Golf 1","Golf 2","Golf 3","Hotel 1","Hotel 2","Hotel 3","India 1","India 2","India 3","Juliet 1","Juliet 2","Juliet 3","Kilo 1","Kilo 2","Kilo 3"];
	H_alb_coolCallsigns = ["Beast","Arsenic","Emerald","Leopard","Ugly","Hog","Warthog","Jaguar","Widow","Trickster","Knight","Spooky","Cowboy","Eagle","Hawk","Thunder","Kitten","Bulldog","Blade","Sabre","Star","Panther","Rhino","Falcon","Toxic","Raider"];
	H_alb_opNameA = ["Husky","Icy","Aboriginal","Troubled","Faithful","Weak","Uneven","Jittery","Nimble","Useless","Rotten","Eager","Wanting","Expensive","Roomy","Knotty","Agonising","Odd","Scientific","Repulsive","Magical","Knowledgeable","Toothsome","Chivalrous","Gusty","Steep","Ossified","Next","Thinkable","Sloppy","Honourable","Limping","Material","Hulking","Scarce","Damp","Voracious","Awake","Ahead","Empty","Motionless","Attractive","Dazzling","Unbecoming","Materialistic","Nebulous","Difficult","Graceful","Elastic"];
	H_alb_opNameB = ["Cheetah","Mole","Seal","Chimpanzee","Otter","Mongoose","Burro","Aoudad","Antelope","Chameleon","Capybara","Marten","Skunk","Kangaroo","Eagle","Owl","Bull","Bumble Bee","Vicuna","Starfish","Ferret","Polar Bear","Leopard","Monkey","Alpaca","Budgerigar","Grizzly Bear","Lovebird","Salamander","Panda","Yak","Deer","Ocelot","Sheep","Steer","Hog","Parrot","Colt","Elk","Llama","Gazelle","Duckbill Platypus","Pig","Warthog","Rat","Hamster","Bat","Anteater","Groundhog","Mandrill","Coyote"];
	[] execVM "core\scripts\handlepoints.sqf";
	[] call H_fnc_loadMission;
};

if (isServer && ("LoadPrevious" call BIS_fnc_getParamValue == 1) && (isNil "H_saved")) then {
	H_alb_fobs = [];
	publicVariable "H_alb_fobs";
	H_alb_platoons = ["Alpha 1","Alpha 2","Alpha 3","Bravo 1","Bravo 2","Bravo 3","Charlie 1","Charlie 2","Charlie 3","Delta 1","Delta 2","Delta 3","Echo 1","Echo 2","Echo 3","Foxtrot 1","Foxtrot 2","Foxtrot 3","Golf 1","Golf 2","Golf 3","Hotel 1","Hotel 2","Hotel 3","India 1","India 2","India 3","Juliet 1","Juliet 2","Juliet 3","Kilo 1","Kilo 2","Kilo 3"];
	H_alb_coolCallsigns = ["Beast","Arsenic","Emerald","Leopard","Ugly","Hog","Warthog","Jaguar","Widow","Trickster","Knight","Spooky","Cowboy","Eagle","Hawk","Thunder","Kitten","Bulldog","Blade","Sabre","Star","Panther","Rhino","Falcon","Toxic","Raider"];
	H_alb_opNameA = ["Husky","Icy","Aboriginal","Troubled","Faithful","Weak","Uneven","Jittery","Nimble","Useless","Rotten","Eager","Wanting","Expensive","Roomy","Knotty","Agonising","Odd","Scientific","Repulsive","Magical","Knowledgeable","Toothsome","Chivalrous","Gusty","Steep","Ossified","Next","Thinkable","Sloppy","Honourable","Limping","Material","Hulking","Scarce","Damp","Voracious","Awake","Ahead","Empty","Motionless","Attractive","Dazzling","Unbecoming","Materialistic","Nebulous","Difficult","Graceful","Elastic"];
	H_alb_opNameB = ["Cheetah","Mole","Seal","Chimpanzee","Otter","Mongoose","Burro","Aoudad","Antelope","Chameleon","Capybara","Marten","Skunk","Kangaroo","Eagle","Owl","Bull","Bumble Bee","Vicuna","Starfish","Ferret","Polar Bear","Leopard","Monkey","Alpaca","Budgerigar","Grizzly Bear","Lovebird","Salamander","Panda","Yak","Deer","Ocelot","Sheep","Steer","Hog","Parrot","Colt","Elk","Llama","Gazelle","Duckbill Platypus","Pig","Warthog","Rat","Hamster","Bat","Anteater","Groundhog","Mandrill","Coyote"];
	H_alb_locations = [];
	H_alb_deploypoints = 150;
	publicVariable "H_alb_deploypoints";
	H_alb_westVehicles = [];
	publicVariable "H_alb_westVehicles";
	[] execVM "core\scripts\findTowns.sqf";
	[] execVM "core\scripts\handlepoints.sqf";
};


if (!isDedicated) then {
	[] spawn H_fnc_loadPlayer;
};

if (isServer && "FOBAttacks" call BIS_fnc_getParamValue == 1) then {
	["hqmarker"] spawn H_fnc_fobattacks;
};

if (("LoadPrevious" call BIS_fnc_getParamValue == 1) && (isNil "H_saved")) then {
	_date =  "Daytime" call BIS_fnc_getParamValue;
	_date call BIS_fnc_paramDaytime;
};
if ("LoadPrevious" call BIS_fnc_getParamValue == 0) then {
	_date =  "Daytime" call BIS_fnc_getParamValue;
	_date call BIS_fnc_paramDaytime;
};



if (isNull player) then {
	waitUntil {!isNull player};
	[] spawn H_fnc_setupJIP;
	[] spawn H_fnc_loadPlayer;
};

["CAManBase", 0, ["ACE_MainActions"], H_action_makeSubcommander, true] call ace_interact_menu_fnc_addActionToClass;
["CAManBase", 0, ["ACE_MainActions"], H_action_makeMedic, true] call ace_interact_menu_fnc_addActionToClass;
