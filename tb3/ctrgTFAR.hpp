class CTRGTFAR { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 1;
		gogglesRandom = 0;
		uniformRandom = 1;
		backpackRandom = 0;
		vestRandom = 0;			
		
		weapons[] = {"arifle_SPAR_01_blk_F",};
		priKit[] = {"30Rnd_556x45_Stanag",};
		secKit[] = {};
		pisKit[] = {"16Rnd_9x21_Mag",};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio","NVGoggles"};
		
		headgear[] = {
			"H_HelmetSpecB_paint1",
			"H_HelmetSpecB_paint2",
			"H_HelmetSpecB_sand",
			"H_HelmetSpecB_snakeskin",
			"H_HelmetSpecB",
		};
		goggles[] = {};
		
		uniform[] = {
			"U_B_CTRG_1",
			"U_B_CTRG_3",
		};
			uniformContents[] = {
				{"ACE_fieldDressing",3},
				{"ACE_morphine",2},
				{"ACE_tourniquet",1},	
				{"ACE_packingBandage",3},
				{"ACE_quikclot",3},
				{"ACE_elasticBandage",3},
				{"ace_maptools",1},
				{"ACE_Flashlight_KSF1",1},
				{"TFAR_rf7800str",1},
			};
			
		vest[] = {"V_PlateCarrierH_CTRG",
		};
			vestContents[] = {					
				{"30Rnd_556x45_Stanag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"B_IR_Grenade",1},
			};
			
		backpack[] = {
			"B_AssaultPack_rgr",
		};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
	
	class R: baseUnit {};
};