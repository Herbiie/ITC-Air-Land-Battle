class NATO { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 0;
		gogglesRandom = 0;
		uniformRandom = 0;
		backpackRandom = 0;
		vestRandom = 0;			
		
		weapons[] = {"arifle_MX_F",};
		priKit[] = {"30Rnd_65x39_caseless_mag",};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio"};
		
		headgear[] = {
			"H_HelmetB"
		};
		goggles[] = {};
		
		uniform[] = {
			"U_B_CombatUniform_mcam",
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
			};
			
		vest[] = {
			"V_PlateCarrier1_rgr",						
		};
			vestContents[] = {					
				{"30Rnd_65x39_caseless_mag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"NVGoggles",1},
			};
			
		backpack[] = {
			"B_AssaultPack_cbr",
		};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
	
	class R: baseUnit {};
	
};

class NATOACRE { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 0;
		gogglesRandom = 0;
		uniformRandom = 0;
		backpackRandom = 0;
		vestRandom = 0;			
		
		weapons[] = {"arifle_MX_F",};
		priKit[] = {"30Rnd_65x39_caseless_mag",};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio"};
		
		headgear[] = {
			"H_HelmetB"
		};
		goggles[] = {};
		
		uniform[] = {
			"U_B_CombatUniform_mcam",
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
			};
			
		vest[] = {
			"V_PlateCarrier1_rgr",						
		};
			vestContents[] = {					
				{"30Rnd_65x39_caseless_mag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"NVGoggles",1},
			};
			
		backpack[] = {
			"B_AssaultPack_cbr",
		};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
	
	class R: baseUnit {};
};

class NATOAI { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 1;
		gogglesRandom = 0;
		uniformRandom = 1;
		backpackRandom = 0;
		vestRandom = 1;			
		
		weapons[] = {"arifle_MX_ACO_pointer_F",};
		priKit[] = {"30Rnd_65x39_caseless_mag",};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio","NVGoggles"};
		
		headgear[] = {
			"H_HelmetB",
			"H_HelmetB_camo",
			"H_HelmetB_paint",
			"H_HelmetB_light",
		};
		goggles[] = {};
		
		uniform[] = {
			"U_B_CombatUniform_mcam",
			"U_B_CombatUniform_mcam_tshirt",
			"U_B_CombatUniform_mcam_vest",
			"U_B_CombatUniform_mcam_worn",
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
				{"ACE_PersonalAidKit",1},
			};
			
		vest[] = {
			"V_PlateCarrier1_rgr",
			"V_PlateCarrier2_rgr",
			"V_PlateCarrier3_rgr",
			"V_PlateCarrierGL_rgr",
			"V_PlateCarrierSpec_rgr",
			"V_PlateCarrierSpec_mtp",
		};
			vestContents[] = {					
				{"30Rnd_65x39_caseless_mag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
			};
			
		backpack[] = {
			"B_AssaultPack_cbr",
		};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
	class SL: baseUnit {
			vestContents[] = {					
				{"30Rnd_65x39_caseless_mag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"ACE_DAGR",1},
				{"ACE_Vector",1},
			};	
		backpackContents[] = {
				{"30Rnd_65x39_caseless_mag",4},
				{"SmokeShellRed",2},
				{"SmokeShellGreen",2},
				{"SmokeShellBlue",2},
		};
	};
	class OF: baseUnit {
		headgear[] = {
			"H_Cap_tan_specops_US",
		};
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
				{"30Rnd_556x45_Stanag",4},
				{"SmokeShellRed",2},
				{"SmokeShellGreen",2},
				{"SmokeShellBlue",2},
		};
	};
	class TL: baseUnit {
			vestContents[] = {					
				{"30Rnd_65x39_caseless_mag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"Binocular",1},
			};	
		backpackContents[] = {
				{"30Rnd_65x39_caseless_mag",12},
		};
	};
	class R: baseUnit {	
		backpackContents[] = {				
				{"30Rnd_65x39_caseless_mag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},				
		};
	};
	class AR: baseUnit {	
		weapons[] = {"arifle_MX_SW_pointer_F",};
		priKit[] = {"100Rnd_65x39_caseless_mag",};	
			vestContents[] = {					
				{"100Rnd_65x39_caseless_mag",3},
				{"HandGrenade",2},
				{"SmokeShell",2},
			};
		backpackContents[] = {				
				{"100Rnd_65x39_caseless_mag",4},
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

class NATOTFAR { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 0;
		gogglesRandom = 0;
		uniformRandom = 0;
		backpackRandom = 0;
		vestRandom = 0;			
		
		weapons[] = {"arifle_MX_F",};
		priKit[] = {"30Rnd_65x39_caseless_mag",};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio"};
		
		headgear[] = {
			"H_HelmetB"
		};
		goggles[] = {};
		
		uniform[] = {
			"U_B_CombatUniform_mcam",
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
			};
			
		vest[] = {
			"V_PlateCarrier1_rgr",						
		};
			vestContents[] = {					
				{"30Rnd_65x39_caseless_mag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"NVGoggles",1},
			};
			
		backpack[] = {
			"B_AssaultPack_cbr",
		};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
	
	class R: baseUnit {};
};

