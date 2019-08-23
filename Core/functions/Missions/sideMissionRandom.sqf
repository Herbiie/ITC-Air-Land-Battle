params ["_co"];

hint "Finding mission...";

private _mission = selectRandom ["H_fnc_Outpost","H_fnc_Hostage","H_fnc_Truck","H_fnc_VCP","H_fnc_HeliCrash","H_fnc_RoadBlock","H_fnc_AreaClear","H_fnc_captureHVT"];
private _text = "";
wait = true;
switch (_mission) do {
	case "H_fnc_Outpost": {_text = "Destroy Outpost"};
	case "H_fnc_Hostage": {_text = "Rescue Hostage"};
	case "H_fnc_Truck": {_text = "Destroy Truck"};
	case "H_fnc_VCP": {_text = "Set Up VCP"};
	case "H_fnc_HeliCrash": {_text = "Defend Crashsite"};
	case "H_fnc_RoadBlock": {_text = "Destroy Roadblock"};
	case "H_fnc_AreaClear": {_text = "Clear Area"};
	case "H_fnc_captureHVT": {_text = "Capture HVT"};
};
hint format ["Mission is: %1. Use self interact to accept within 30 seconds.",_text];
[player, 1, ["ACE_SelfActions","ALBOptions"],H_action_acceptMission] call ace_interact_menu_fnc_addActionToObject;
private _start = diag_ticktime;
waitUntil {!(wait) || ((diag_tickTime - _start) > 30)};

if (!(wait)) then {
	hint "Starting mission...";
	[position _co] remoteExec [_mission,2];
} else {
	hint "Mission declined";
};

[player,1,["ACE_SelfActions","ALBOptions","MissionAccept"]] call ace_interact_menu_fnc_removeActionFromObject;