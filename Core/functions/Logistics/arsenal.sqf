params ["_box"];



[_box, ["ItemMap", "ItemCompass", "ItemWatch","ACE_fieldDressing","ACE_earplugs","ACE_morphine","ACE_tourniquet","ACE_packingBandage","ACE_quikclot","ACE_elasticBandage","ace_maptools","ACE_Flashlight_KSF1","HandGrenade","B_IR_Grenade","16Rnd_9x21_Mag","hgun_P07_khk_F","SmokeShell","SmokeShellRed","SmokeShellGreen","SmokeShellBlue","SmokeShellYellow","ACE_salineIV_250","ACE_salineIV_500","ACE_salineIV","Binocular","ACE_CableTie","ACE_ATragMX","ACE_SprayPaintBlack","ACE_SprayPaintRed","ACE_SprayPaintGreen","ACE_SprayPaintBlue","ACE_DefusalKit","ACE_EntrenchingTool","ACE_HuntIR_Monitor","ACE_IR_Strobe_Item","ACE_M26_Clacker","ACE_Clacker","ACE_PersonalAidKit","ACE_RangeCard","ACE_Sandbag_Empty","ACE_SurgicalKit","Toolkit","ACE_UavBattery","ACE_Wirecutters","DemoCharge_Remote_Mag","Chemlight_Blue","Chemlight_Green","ACE_Chemlight_HiOrange","ACE_Chemlight_HiOrange","ACE_Chemlight_HiRed","ACE_Chemlight_HiWhite","ACE_Chemlight_HiYellow","ACE_Chemlight_IR","ACE_Chemlight_Orange","Chemlight_Red","ACE_Chemlight_White","Chemlight_Yellow","B_IR_Grenade","ACE_HandFlare_Green","ACE_HandFlare_Red","ACE_HandFlare_White","ACE_HandFlare_Yellow","ACE_M84","HandGrenade_Stone","1Rnd_HE_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareCIR_F","U_B_HeliPilotCoveralls","U_B_PilotCoveralls","H_PilotHelmetFighter_B","H_PilotHelmetHeli_B","H_CrewHelmetHeli_B","B_respawn_TentDome_F"]] call ace_arsenal_fnc_initBox;

_faction = "Faction" call BIS_fnc_getParamValue;

	switch (_faction) do {

		case 1: {
			// CTRG
			[_box, ["H_HelmetSpecB_paint1","H_HelmetSpecB_paint2","H_HelmetSpecB_sand","H_HelmetSpecB_snakeskin","H_HelmetSpecB","U_B_CTRG_1","U_B_CTRG_3","V_PlateCarrier1_rgr","V_PlateCarrierL_CTRG","B_AssaultPack_cbr","B_CarryAll_oli","arifle_SPAR_01_blk_F","arifle_SPAR_02_blk_F","150Rnd_556x45_Drum_Mag_Tracer_F","30Rnd_556x45_Stanag","launch_NLAW_F","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Green","30Rnd_556x45_Stanag_Tracer_Yellow","NVGoggles"]] call ace_arsenal_fnc_addVirtualItems;
		};
		case 2: {
			// NATO
			[_box,
			["H_HelmetB","arifle_MX_F","arifle_MXC_F","arifle_MX_SW_F","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag_Tracer","100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag_Tracer","U_B_CombatUniform_mcam","V_PlateCarrier1_rgr","B_AssaultPack_cbr","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn","U_B_CombatUniform_wdl","U_B_CombatUniform_wdl_tshirt","U_B_CombatUniform_wdl_vest","U_B_CombatUniform_sgg","U_B_CombatUniform_sgg_tshirt","U_B_CombatUniform_sgg_vest","V_PlateCarrier2_rgr","V_PlateCarrier2_blk","V_PlateCarrier3_rgr","V_PlateCarrierGL_rgr","V_PlateCarrierGL_blk","V_PlateCarrierGL_mtp","V_PlateCarrier1_blk","V_PlateCarrierSpec_rgr","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_mtp","H_HelmetB_light","H_HelmetB_camo","H_HelmetB_paint","H_HelmetSpecB","H_HelmetB_plain_mcamo","H_HelmetSpecB_paint1","H_HelmetSpecB_paint2","H_HelmetSpecB_blk","H_HelmetB_grass","H_HelmetB_snakeskin","H_HelmetB_desert","H_HelmetB_sand","H_MilCap_mcamo","H_HelmetB_light_grass","H_HelmetB_light_snakeskin","H_HelmetB_light_desert","H_HelmetB_light_black","NVGoggles","B_CarryAll_cbr"]] call ace_arsenal_fnc_addVirtualItems;
		};
		
		case 3: {
			// CSAT
			[_box, ["H_HelmetO_ocamo","H_HelmetLeaderO_ocamo","H_MilCap_ocamo","H_HelmetO_oucamo","H_HelmetLeaderO_oucamo","H_HelmetSpecO_ocamo","H_HelmetSpecO_blk","U_O_CombatUniform_oucamo","U_O_SpecopsUniform_ocamo","U_O_SpecopsUniform_blk","U_O_OfficerUniform_ocamo","H_HelmetO_ViperSP_hex_F","H_HelmetO_ViperSP_ghex_F","H_HelmetSpecO_ghex_F","H_HelmetLeaderO_ghex_F","H_HelmetO_ghex_F","V_HarnessO_ghex_F","V_HarnessOGL_ghex_F","V_BandollierB_ghex_F","H_Tank_black_F","H_HelmetCrew_O_ghex_F","H_MilCap_ghex_F","U_O_CombatUniform_ocamo","V_HarnessO_brn","V_HarnessOGL_brn","V_HarnessO_gry","V_HarnessOGL_gry","V_HarnessOSpec_brn","V_HarnessOSpec_gry","H_MilCap_oucamo","B_AssaultPack_cbr","arifle_Katiba_F","arifle_CTARS_blk_F","100Rnd_580x42_Mag_F","30Rnd_65x39_caseless_green","launch_RPG32_F","30Rnd_65x39_caseless_green_mag_Tracer","B_ViperHarness_hex_F","NVGoggles_OPFOR"]] call ace_arsenal_fnc_addVirtualItems;
		};



	};
	
if (H_alb_gearTier >= 1) then {
	switch (_faction) do {

		case 1: {
			// CTRG
			[_box, ["20rnd_762x51_mag","arifle_SPAR_03_blk_F","arifle_SPAR_01_GL_blk_F","launch_Titan_F","launch_B_Titan_short_F","Titan_AA","Titan_AT","Titan_AP"]] call ace_arsenal_fnc_addVirtualItems;
		};
		Case 2: {
			// NATO
			[_box,
			["arifle_MX_GL_F","arifle_MXM_F","srifle_DMR_03_tan_F","20Rnd_762x51_Mag"]] call ace_arsenal_fnc_addVirtualItems;
		};
		case 3: {
			// CSAT
			[_box, ["srifle_DMR_05_blk_F","10Rnd_93x64_DMR_05_Mag","arifle_Katiba_GL_F","LMG_Zafir_F","150Rnd_762x54_Box"]] call ace_arsenal_fnc_addVirtualItems;
		};
	};
};
	
if (H_alb_gearTier >= 2) then {
	switch (_faction) do {

		case 1: {
			// CTRG
			[_box, ["MMG_02_black_F","130Rnd_338_Mag","srifle_LRR_F","7Rnd_408_Mag"]] call ace_arsenal_fnc_addVirtualItems;
		};
		Case 2: {
			// NATO
			[_box,
			["3Rnd_HE_Grenade_shell","3Rnd_UGL_FlareWhite_F","3Rnd_UGL_FlareGreen_F","3Rnd_UGL_FlareRed_F","3Rnd_UGL_FlareYellow_F","3Rnd_UGL_FlareCIR_F","3Rnd_Smoke_Grenade_shell","3Rnd_SmokeRed_Grenade_shell","3Rnd_SmokeGreen_Grenade_shell","3Rnd_SmokeYellow_Grenade_shell","3Rnd_SmokePurple_Grenade_shell","3Rnd_SmokeBlue_Grenade_shell","3Rnd_SmokeOrange_Grenade_shell","MMG_02_sand_F","130Rnd_338_Mag"]] call ace_arsenal_fnc_addVirtualItems;
		};
		case 3: {
			// CSAT
			[_box, ["launch_O_Vorona_green_F","Vorona_HEAT","Vorona_HE"]] call ace_arsenal_fnc_addVirtualItems;
		};
	};
};
	
if (H_alb_gearTier >= 3) then {
	switch (_faction) do {

		case 1: {
			// CTRG
			[_box, ["launch_MRAWS_olive_rail_F","MRAWS_HEAT_F","MRAWS_HE_F","NVGogglesB_blk_F"]] call ace_arsenal_fnc_addVirtualItems;
		};
		Case 2: {
			// NATO
			[_box,
			["srifle_LRR_F","7Rnd_408_Mag","launch_MRAWS_olive_rail_F","MRAWS_HEAT_F","MRAWS_HE_F","NVGogglesB_blk_F"]] call ace_arsenal_fnc_addVirtualItems;
		};
		case 3: {
			// CSAT
			[_box, ["launch_Titan_F","launch_B_Titan_short_F","Titan_AA","Titan_AT","Titan_AP","srifle_GM6_F","5Rnd_127x108_Mag"]] call ace_arsenal_fnc_addVirtualItems;
		};
	};
};

private _acre = isClass (configfile >> "CfgPatches" >> "acre_main");
private _tfar = isClass (configfile >> "CfgPatches" >> "task_force_radio");

if (_acre) then {
[_box,
		["ACRE_PRC152","ACRE_PRC148","ACRE_PRC117f","ACRE_PRC77","ACRE_PRC343"]] call ace_arsenal_fnc_addVirtualItems;
};


if (_tfar) then {
[_box,
		["TFAR_anprc152","TFAR_anprc148jem","TFAR_fadak","TFAR_rf7800str","TFAR_anprc154","TFAR_pnr1000a","TFAR_rt1523g","TFAR_anprc155","TFAR_mr3000"]] call ace_arsenal_fnc_addVirtualItems;
};