	class USMC { 
		class baseUnit {
			ace_earplugs = 1;
			headgearRandom = 0;
			gogglesRandom = 0;
			uniformRandom = 0;
			backpackRandom = 0;
			vestRandom = 0;			
			
			weapons[] = {"rhs_weap_m4_carryhandle_grip3","binocular",};
			priKit[] = {"rhs_mag_30Rnd_556x45_Mk318_Stanag",};
			secKit[] = {};
			pisKit[] = {};
			
			assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio",};
			
			headgear[] = {
				"rhsusf_lwh_helmet_marpatwd",
			};
			goggles[] = {};
			
			uniform[] = {
				"rhs_uniform_FROG01_wd",
			};
				uniformContents[] = {
					{"ACE_fieldDressing",1},
					{"ACE_morphine",1},
					{"ACE_tourniquet",1},	
					{"ACE_epinephrine",1},
					{"ACE_packingBandage",2},
					{"ACE_quikclot",2},
					{"ACE_elasticBandage",2},
					{"ACE_PersonalAidKit",1},
					};
				
			vest[] = {
				"rhsusf_spc_rifleman",
				
			};
				vestContents[] = {					
					{"rhs_mag_30Rnd_556x45_Mk318_Stanag",8},
					{"HandGrenade",2},
					{"ACE_Flashlight_MX991",1},
					{"ace_maptools",1},
					{"SmokeShell",2},
					{"ACE_EntrenchingTool",1},
				};
				
			backpack[] = {
				"rhsusf_falconii_coy_gr",
				};
				backpackContents[] = {
					};
				
			magazines[] = {}; items[] = {};
		};
		class PL: baseUnit {	
				backpackContents[] = {
					{"ACRE_PRC117f",1},
					{"rhs_mag_30Rnd_556x45_Mk318_Stanag",2},
					{"SmokeShell",4},
					{"SmokeShellRed",4},				
				};
		};
		class PSG: baseUnit {	
				vestContents[] = {					
					{"rhs_mag_30Rnd_556x45_Mk318_Stanag",8},
					{"HandGrenade",2},
					{"ACE_Flashlight_MX991",1},
					{"ACE_EntrenchingTool",1},
					{"SmokeShell",2},
					{"ACRE_PRC148",1},
				};
				backpackContents[] = {
					{"rhs_mag_30Rnd_556x45_Mk318_Stanag",20},
					{"SmokeShell",4},					
				};
		};
		class MED: baseUnit {	
				backpackContents[] = {
					{"ACE_fieldDressing",20},
					{"ACE_morphine",25},
					{"ACE_tourniquet",10},	
					{"ACE_epinephrine",15},
					{"ACE_packingBandage",25},
					{"ACE_quikclot",20},
					{"ACE_elasticBandage",25},
					{"ACE_salineIV_250",12},			
				};
		};
		class RTO: baseUnit {	
				backpackContents[] = {
					{"ACRE_PRC117f",1},
					{"rhs_mag_30Rnd_556x45_Mk318_Stanag",2},
					{"SmokeShell",2},				
				};
		};
		class R: baseUnit {	
				backpackContents[] = {
					{"rhs_mag_30Rnd_556x45_Mk318_Stanag",2},
					{"SmokeShell",2},
					{"HandGrenade",2},
					{"rhsusf_100Rnd_556x45_soft_pouch",2},				
				};
		};
		class SL: baseUnit {	
			weapons[] = {"rhs_weap_m16a4_carryhandle_M203","binocular",};
			priKit[] = {"rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_M441_HE"};
				vestContents[] = {					
					{"rhs_mag_30Rnd_556x45_Mk318_Stanag",8},
					{"HandGrenade",2},
					{"ACE_Flashlight_MX991",1},
					{"ACE_EntrenchingTool",1},
					{"SmokeShell",2},
					{"ACRE_PRC148",1},
				};
				backpackContents[] = {
					{"rhs_mag_30Rnd_556x45_Mk318_Stanag",6},
					{"SmokeShell",4},
					{"SmokeShellRed",4},
					{"rhs_mag_M441_HE",14},				
				};
		};
		class TL: baseUnit {
			weapons[] = {"rhs_weap_m16a4_carryhandle_M203","binocular",};
			priKit[] = {"rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_M441_HE"};
				vestContents[] = {					
					{"rhs_mag_30Rnd_556x45_Mk318_Stanag",8},
					{"HandGrenade",2},
					{"ACE_Flashlight_MX991",1},
					{"ACE_EntrenchingTool",1},
					{"SmokeShell",2},
					{"ACRE_PRC148",1},
				};
				backpackContents[] = {
					{"rhs_mag_30Rnd_556x45_Mk318_Stanag",6},
					{"SmokeShell",4},
					{"rhsusf_100Rnd_556x45_soft_pouch",1},
					{"rhs_mag_M441_HE",14},				
				};
		};
		class AR: baseUnit {
			weapons[] = {"rhs_weap_m249_pip_usmc","binocular",};
			priKit[] = {"rhsusf_100Rnd_556x45_soft_pouch",};
				vestContents[] = {					
					{"rhsusf_100Rnd_556x45_soft_pouch",1},
					{"HandGrenade",2},
					{"ACE_Flashlight_MX991",1},
					{"ACE_EntrenchingTool",1},
					{"ace_maptools",1},
					{"SmokeShell",2},
				};
				backpackContents[] = {
					{"rhsusf_100Rnd_556x45_soft_pouch",2},
					{"SmokeShell",4},				
				};
		};
		class Pilot: baseUnit {
			headgear[] = {
				"rhsusf_hgu56p",
			};
				vestContents[] = {					
					{"rhs_mag_30Rnd_556x45_Mk318_Stanag",4},
					{"ACE_Flashlight_MX991",1},
					{"SmokeShellRed",2},
					{"ACRE_PRC148",1},
				};
		};
		
		};
			
			

		