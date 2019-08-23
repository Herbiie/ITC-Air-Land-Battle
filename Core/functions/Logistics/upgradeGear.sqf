if ((missionNameSpace getVariable "H_alb_deploypoints") >= 1000) then {
	H_alb_gearTier = H_alb_gearTier + 1;
	publicVariable "H_alb_gearTier";
	missionNameSpace setVariable ["H_alb_gearTier",(missionNameSpace getVariable "H_alb_gearTier")+1,true];
	missionNameSpace setVariable ["H_alb_deploypoints",(missionNameSpace getVariable "H_alb_deploypoints")-1000,true];
	
	{
		[_x] call H_fnc_arsenal
	} forEach allMissionObjects "B_supplyCrate_F";

} else {
	hint "Not enough deployment points.";
};