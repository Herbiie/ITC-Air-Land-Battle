if (H_alb_deployPoints >= 1000) then {
	H_alb_gearTier = H_alb_gearTier + 1;
	publicVariable "H_alb_gearTier";
	[500, false] call H_fnc_deploypoints;
	
	{
		[_x] call H_fnc_arsenal
	} forEach allMissionObjects "B_supplyCrate_F";

} else {
	hint "Not enough deployment points.";
};