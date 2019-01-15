class ALTISI { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 1;
		gogglesRandom = 1;
		uniformRandom = 1;
		backpackRandom = 1;
		vestRandom = 1;			
		
		weapons[] = {"arifle_AKM_F",};
		priKit[] = {"30Rnd_762x39_Mag_F",};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
		
		headgear[] = {
			"H_Booniehat_khk",
			"H_Booniehat_oli",
			"H_Booniehat_indp",
			"H_Booniehat_grn",
			"H_Booniehat_tan",
			"H_Booniehat_dirty",
			"H_Cap_red",
			"H_Cap_blu",
			"H_Cap_oli",
			"H_Cap_tan",
			"H_Cap_blk",
			"H_Cap_blk_CMMG",
			"H_Cap_grn",
			"H_Cap_grn_BI",
			"H_BandMask_blk",
			"H_BandMask_khk",
			"H_BandMask_reaper",
			"H_BandMask_demon",
			"H_Bandanna_surfer",
			"H_Bandanna_khk",
			"H_Bandanna_cbr",
			"H_Bandanna_sgg",
			"H_Bandanna_sand",
			"H_Bandanna_surfer_blk",
			"H_Bandanna_surfer_grn",
			"H_Bandanna_gry",
			"H_Bandanna_blu",
			"H_Bandanna_camo",
			"H_Shemag_khk",
			"H_Shemag_tan",
			"H_Shemag_olive",
			"H_Shemag_olive_hs",
			"H_ShemagOpen_khk",
			"H_ShemagOpen_tan",
			"H_Watchcap_blk",
			"H_Watchcap_cbr",
			"H_Watchcap_khk",
			"H_Watchcap_camo",
			"H_Watchcap_sgg",
			"H_TurbanO_blk",
			"H_StrawHat",
			"H_StrawHat_dark",
			"H_Hat_blue",
			"H_Hat_brown",
			"H_Hat_camo",
			"H_Hat_grey",
			"H_Hat_checker",
			"H_Hat_tan",
		};
		goggles[] = {};
		
		uniform[] = {
			"U_C_Poloshirt_blue",
			"U_C_Poloshirt_burgundy",
			"U_C_Poloshirt_stripped",
			"U_C_Poloshirt_tricolour",
			"U_C_Poloshirt_salmon",
			"U_C_Poloshirt_redwhite",
			"U_C_Commoner1_1",
			"U_C_Commoner1_2",
			"U_C_Commoner1_3",
			"U_NikosBody",
			"U_OrestesBody",
			"U_Competitor",
			"U_IG_Guerilla1_1",
			"U_IG_Guerilla2_1",
			"U_IG_Guerilla2_2",
			"U_IG_Guerilla2_3",
			"U_IG_Guerilla3_1",
			"U_IG_Guerilla3_2",
			"U_BG_Guerilla1_1",
			"U_BG_Guerilla2_1",
			"U_BG_Guerilla2_2",
			"U_BG_Guerilla2_3",
			"U_BG_Guerilla3_1",
			"U_BG_Guerilla3_2",
			"U_C_Poor_1",
			"U_C_WorkerCoveralls",
			"U_C_HunterBody_grn",
			"U_C_Poor_shorts_1",
			"U_C_ShirtSurfer_shorts",
			"U_C_TeeSurfer_shorts_1",
			"U_C_Scientist",
			"U_NikosAgedBody",
			"U_C_Scientist",
		};
			uniformContents[] = {
				{"ACE_fieldDressing",3},
			};
			
		vest[] = {
			"V_BandollierB_khk",
			"V_BandollierB_cbr",
			"V_BandollierB_rgr",
			"V_BandollierB_blk",
			"V_BandollierB_oli",
			"V_Chestrig_khk",
			"V_Chestrig_rgr",
			"V_Chestrig_blk",
			"V_Chestrig_oli",
			"V_TacVest_khk",
			"V_TacVest_brn",
			"V_TacVest_oli",
			"V_TacVest_blk",
			"V_TacVest_camo",
			"V_TacVest_blk_POLICE",
			"V_TacVestCamo_khk",
		};
			vestContents[] = {					
				{"30Rnd_762x39_Mag_F",6},
				{"HandGrenade",2},
			};
			
		backpack[] = {};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
class TL: baseUnit {
		weapons[] = {"arifle_AK12_F",};	
	};
class R1: baseUnit {
	};
class R2: baseUnit {
		weapons[] = {"arifle_AKS_F",};	
		vestContents[] = {					
			{"30Rnd_545x39_Mag_F",6},
			{"HandGrenade",2},
		};
	};
class R3: baseUnit {
		weapons[] = {"arifle_Katiba_F",};	
		vestContents[] = {					
			{"30Rnd_65x39_caseless_green",6},
			{"HandGrenade",2},
		};
	};
class R4: baseUnit {
		weapons[] = {"arifle_Mk20_plain_F",};	
		vestContents[] = {					
			{"30Rnd_556x45_Stanag",6},
			{"HandGrenade",2},
		};
	};
class R5: baseUnit {
		weapons[] = {"arifle_TRG21_F",};	
		vestContents[] = {					
			{"30Rnd_556x45_Stanag",6},
			{"HandGrenade",2},
		};
	};
class R6: baseUnit {
		weapons[] = {"hgun_PDW2000_F",};	
		vestContents[] = {					
			{"30Rnd_9x21_Mag",6},
			{"HandGrenade",2},
		};
	};
class R7: baseUnit {
		weapons[] = {"SMG_02_F",};	
		vestContents[] = {					
			{"30Rnd_9x21_Mag",6},
			{"HandGrenade",2},
		};
	};
class LMG: baseUnit {
		weapons[] = {"LMG_03_F",};
		priKit[] = {"200Rnd_556x45_Box_F",};	
		vestContents[] = {					
			{"200Rnd_556x45_Box_F",2},
			{"HandGrenade",2},
		};
		backpack[] = {"B_FieldPack_oli",};
		backpackContents[] = {					
			{"200Rnd_556x45_Box_F",2},				
		};
	};
class RPG: baseUnit {
		weapons[] = {"arifle_AKM_F","launch_RPG7_F"};	
		secKit[] = {"RPG7_F",};
		backpack[] = {"B_FieldPack_oli",};
		backpackContents[] = {					
			{"RPG7_F",3},				
		};
	};
};

class ALTISG { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 1;
		gogglesRandom = 1;
		uniformRandom = 1;
		backpackRandom = 1;
		vestRandom = 1;			
		
		weapons[] = {"arifle_AKM_F",};
		priKit[] = {"30Rnd_762x39_Mag_F",};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
		
		headgear[] = {
			"H_Booniehat_khk",
			"H_Booniehat_oli",
			"H_Booniehat_indp",
			"H_Booniehat_grn",
			"H_Booniehat_tan",
			"H_Booniehat_dirty",
			"H_BandMask_blk",
			"H_BandMask_khk",
			"H_BandMask_reaper",
			"H_BandMask_demon",
			"H_Bandanna_surfer",
			"H_Bandanna_khk",
			"H_Bandanna_cbr",
			"H_Bandanna_sgg",
			"H_Bandanna_sand",
			"H_Bandanna_surfer_blk",
			"H_Bandanna_surfer_grn",
			"H_Bandanna_gry",
			"H_Bandanna_blu",
			"H_Bandanna_camo",
			"H_Shemag_khk",
			"H_Shemag_tan",
			"H_Shemag_olive",
			"H_Shemag_olive_hs",
			"H_ShemagOpen_khk",
			"H_ShemagOpen_tan",
		};
		goggles[] = {};
		
		uniform[] = {
			"U_IG_Guerilla1_1",
			"U_IG_Guerilla2_1",
			"U_IG_Guerilla2_2",
			"U_IG_Guerilla2_3",
			"U_IG_Guerilla3_1",
			"U_IG_Guerilla3_2",
			"U_IG_leader",
			"U_BG_Guerilla1_1",
		};
			uniformContents[] = {
				{"ACE_fieldDressing",3},
			};
			
		vest[] = {
			"V_BandollierB_khk",
			"V_BandollierB_cbr",
			"V_BandollierB_rgr",
			"V_BandollierB_blk",
			"V_BandollierB_oli",
			"V_Chestrig_khk",
			"V_Chestrig_rgr",
			"V_Chestrig_blk",
			"V_Chestrig_oli",
			"V_TacVest_khk",
			"V_TacVest_brn",
			"V_TacVest_oli",
			"V_TacVest_blk",
			"V_TacVest_camo",
			"V_TacVestCamo_khk",
		};
			vestContents[] = {					
				{"30Rnd_762x39_Mag_F",6},
				{"HandGrenade",2},
			};
			
		backpack[] = {};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
class TL: baseUnit {
		weapons[] = {"arifle_AK12_F",};	
	};
class R1: baseUnit {
	};
class R2: baseUnit {
		weapons[] = {"arifle_AKS_F",};	
		vestContents[] = {					
			{"30Rnd_545x39_Mag_F",6},
			{"HandGrenade",2},
		};
	};
class R3: baseUnit {
		weapons[] = {"arifle_Katiba_F",};	
		vestContents[] = {					
			{"30Rnd_65x39_caseless_green",6},
			{"HandGrenade",2},
		};
	};
class R4: baseUnit {
		weapons[] = {"arifle_Mk20_plain_F",};	
		vestContents[] = {					
			{"30Rnd_556x45_Stanag",6},
			{"HandGrenade",2},
		};
	};
class R5: baseUnit {
		weapons[] = {"arifle_TRG21_F",};	
		vestContents[] = {					
			{"30Rnd_556x45_Stanag",6},
			{"HandGrenade",2},
		};
	};
class R6: baseUnit {
		weapons[] = {"hgun_PDW2000_F",};	
		vestContents[] = {					
			{"30Rnd_9x21_Mag",6},
			{"HandGrenade",2},
		};
	};
class R7: baseUnit {
		weapons[] = {"SMG_02_F",};	
		vestContents[] = {					
			{"30Rnd_9x21_Mag",6},
			{"HandGrenade",2},
		};
	};
class LMG: baseUnit {
		weapons[] = {"LMG_03_F",};
		priKit[] = {"200Rnd_556x45_Box_F",};	
		vestContents[] = {					
			{"200Rnd_556x45_Box_F",2},
			{"HandGrenade",2},
		};
		backpack[] = {"B_FieldPack_oli",};
		backpackContents[] = {					
			{"200Rnd_556x45_Box_F",2},				
		};
	};
class RPG: baseUnit {
		weapons[] = {"arifle_AKM_F","launch_RPG7_F"};	
		secKit[] = {"RPG7_F",};
		backpack[] = {"B_FieldPack_oli",};
		backpackContents[] = {					
			{"RPG7_F",3},				
		};
	};
};

class TANOAR { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 1;
		gogglesRandom = 1;
		uniformRandom = 1;
		backpackRandom = 1;
		vestRandom = 1;			
		
		weapons[] = {"arifle_AKM_F",};
		priKit[] = {"30Rnd_762x39_Mag_F",};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
		
		headgear[] = {
			"H_Booniehat_khk",
			"H_Booniehat_oli",
			"H_Booniehat_grn",
			"H_Booniehat_dirty",
			"H_BandMask_blk",
			"H_BandMask_khk",
			"H_BandMask_reaper",
			"H_Bandanna_surfer",
			"H_Bandanna_khk",
			"H_Bandanna_cbr",
			"H_Bandanna_sgg",
			"H_Bandanna_sand",
			"H_Bandanna_surfer_blk",
			"H_Bandanna_surfer_grn",
			"H_Bandanna_gry",
			"H_Bandanna_blu",
			"H_Bandanna_camo",
		};
		goggles[] = {};
		
		uniform[] = {
			"U_I_C_Soldier_Para_1_F",
			"U_I_C_Soldier_Para_2_F",
			"U_I_C_Soldier_Para_3_F",
			"U_I_C_Soldier_Para_4_F",
			"U_I_C_Soldier_Para_5_F",
			"U_I_C_Soldier_Bandit_1_F",
			"U_I_C_Soldier_Bandit_2_F",
			"U_I_C_Soldier_Bandit_3_F",
			"U_I_C_Soldier_Bandit_4_F",
			"U_I_C_Soldier_Bandit_5_F",
			"U_I_C_Soldier_Camo_F",
		};
			uniformContents[] = {
				{"ACE_fieldDressing",3},
			};
			
		vest[] = {
			"V_BandollierB_khk",
			"V_BandollierB_cbr",
			"V_BandollierB_rgr",
			"V_BandollierB_blk",
			"V_BandollierB_oli",
			"V_Chestrig_khk",
			"V_Chestrig_rgr",
			"V_Chestrig_blk",
			"V_Chestrig_oli",
			"V_TacVest_khk",
			"V_TacVest_brn",
			"V_TacVest_oli",
			"V_TacVest_blk",
			"V_TacVest_camo",
			"V_TacVest_blk_POLICE",
			"V_TacVestCamo_khk",
		};
			vestContents[] = {					
				{"30Rnd_762x39_Mag_F",6},
				{"HandGrenade",2},
			};
			
		backpack[] = {};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
class TL: baseUnit {
		weapons[] = {"arifle_AK12_F",};	
	};
class R1: baseUnit {
	};
class R2: baseUnit {
		weapons[] = {"arifle_AKS_F",};	
		vestContents[] = {					
			{"30Rnd_545x39_Mag_F",6},
			{"HandGrenade",2},
		};
	};
class R3: baseUnit {
		weapons[] = {"arifle_Katiba_F",};	
		vestContents[] = {					
			{"30Rnd_65x39_caseless_green",6},
			{"HandGrenade",2},
		};
	};
class R4: baseUnit {
		weapons[] = {"arifle_Mk20_plain_F",};	
		vestContents[] = {					
			{"30Rnd_556x45_Stanag",6},
			{"HandGrenade",2},
		};
	};
class R5: baseUnit {
		weapons[] = {"arifle_TRG21_F",};	
		vestContents[] = {					
			{"30Rnd_556x45_Stanag",6},
			{"HandGrenade",2},
		};
	};
class R6: baseUnit {
		weapons[] = {"hgun_PDW2000_F",};	
		vestContents[] = {					
			{"30Rnd_9x21_Mag",6},
			{"HandGrenade",2},
		};
	};
class R7: baseUnit {
		weapons[] = {"SMG_02_F",};	
		vestContents[] = {					
			{"30Rnd_9x21_Mag",6},
			{"HandGrenade",2},
		};
	};
class LMG: baseUnit {
		weapons[] = {"LMG_03_F",};
		priKit[] = {"200Rnd_556x45_Box_F",};	
		vestContents[] = {					
			{"200Rnd_556x45_Box_F",2},
			{"HandGrenade",2},
		};
		backpack[] = {"B_FieldPack_oli",};
		backpackContents[] = {					
			{"200Rnd_556x45_Box_F",2},				
		};
	};
class RPG: baseUnit {
		weapons[] = {"arifle_AKM_F","launch_RPG7_F"};	
		secKit[] = {"RPG7_F",};
		backpack[] = {"B_FieldPack_oli",};
		backpackContents[] = {					
			{"RPG7_F",3},				
		};
	};
};