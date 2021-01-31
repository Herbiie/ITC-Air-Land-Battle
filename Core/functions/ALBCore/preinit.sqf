if (isServer) then {
	createFOB = false;
	createPB = false;

// Set Factions
	private _factionValue = "Faction" call BIS_fnc_getParamValue;

	switch (_factionValue) do {
		case 1: {
			missionNameSpace setVariable ["H_faction","CTRG",true];
			missionNameSpace setVariable ["H_supplyVehicle","B_Truck_01_box_F",true];
		};
		case 2: {
			missionNameSpace setVariable ["H_faction","NATO",true];
			missionNameSpace setVariable ["H_supplyVehicle","B_Truck_01_box_F",true];
		};
		case 3: {
			missionNameSpace setVariable ["H_faction","CSAT",true];
			missionNameSpace setVariable ["H_supplyVehicle","O_Truck_03_device_F",true];
		};
		case 4: {
			missionNameSpace setVariable ["H_faction","AAF",true];
			missionNameSpace setVariable ["H_supplyVehicle","I_Truck_02_covered_F",true];
		};
		case 5: {
			private _supply = missionNameSpace getVariable "H_custom_fobVehicle";
			missionNameSpace setVariable ["H_faction","CUSTOM",true];
			missionNameSpace setVariable ["H_supplyVehicle",_supply,true];
		};
	};
	
	missionNameSpace setVariable ["H_aiFaction",format ["%1AI",H_Faction],true];
	
	private _enfactionValue = "enFaction" call BIS_fnc_getParamValue;

	switch (_enfactionValue) do {
		case 1: {
			missionNameSpace setVariable ["H_enFaction","ALTISI",true];
		};
		case 2: {
			missionNameSpace setVariable ["H_enFaction","ALTISG",true];
		};
		case 3: {
			missionNameSpace setVariable ["H_enFaction","TANOAR",true];
		};
	};
	
	// Load mods
	missionNameSpace setVariable ["H_acreEnabled",isClass (configfile >> "CfgPatches" >> "acre_main"),true];
	missionNameSpace setVariable ["H_tfarEnabled",isClass (configfile >> "CfgPatches" >> "task_force_radio"),true];
	missionNameSpace setVariable ["H_itcAirEnabled",isClass (configfile >> "CfgPatches" >> "itc_air"),true];
	missionNameSpace setVariable ["H_itcLandEnabled",isClass (configfile >> "CfgPatches" >> "itc_land_common"),true];
	
	// Variables
	missionNameSpace setVariable ["voteInProgress",false,true];
	missionNameSpace setVariable ["h_flagpoles",[],true];
	missionNameSpace setVariable ["h_civLeaders",[],true];
	missionNameSpace setVariable ["h_groups",[],true];
};