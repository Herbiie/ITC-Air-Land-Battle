class CTRGTFAR { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 1;
		gogglesRandom = 0;
		uniformRandom = 1;
		backpackRandom = 0;
		vestRandom = 0;			
		
		weapons[] = {"arifle_SPAR_01_blk_ERCO_Pointer_F","hgun_P07_khk_F",};
		priKit[] = {"30Rnd_556x45_Stanag",};
		secKit[] = {};
		pisKit[] = {"16Rnd_9x21_Mag",};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio","NVGogglesB_blk_F"};
		
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
				{"16Rnd_9x21_Mag",2},
			};
			
		backpack[] = {
			"B_AssaultPack_rgr",
		};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
	class TL: baseUnit {
			vestContents[] = {					
				{"30Rnd_556x45_Stanag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"ACE_DAGR",1},
				{"ACE_Vector",1},
				{"B_IR_Grenade",1},
				{"16Rnd_9x21_Mag",2},
				{"TFAR_anprc152",1},
			};	
		backpackContents[] = {
				{"ITC_Land_B_AR2i_Packed",1},
		};
	};
	class JTAC: baseUnit {
			vestContents[] = {					
				{"30Rnd_556x45_Stanag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"ACE_DAGR",1},
				{"ACE_Vector",1},
				{"B_IR_Grenade",1},
				{"16Rnd_9x21_Mag",2},
			};	
		backpackContents[] = {
		};
	};
	class R: baseUnit {	
		backpackContents[] = {				
				{"30Rnd_556x45_Stanag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},				
		};
	};
	class AR: baseUnit {
		weapons[] = {"arifle_SPAR_02_blk_F","hgun_P07_khk_F",};
		priKit[] = {"150Rnd_556x45_Drum_Mag_Tracer_F","optic_erco_blk_F",};	
			vestContents[] = {					
				{"150Rnd_556x45_Drum_Mag_Tracer_F",2},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"B_IR_Grenade",1},
				{"16Rnd_9x21_Mag",2},
			};
		backpackContents[] = {				
				{"150Rnd_556x45_Drum_Mag_Tracer_F",3},
				{"HandGrenade",2},
				{"SmokeShell",2},				
		};
	};
	class MED: baseUnit {	
		backpackContents[] = {	
			{"ACE_fieldDressing",15},
			{"ACE_morphine",15},
			{"ACE_tourniquet",5},	
			{"ACE_epinephrine",15},
			{"ACE_packingBandage",10},
			{"ACE_quikclot",15},
			{"ACE_elasticBandage",20},
			{"ACE_salineIV_250",12},				
		};
	};
};