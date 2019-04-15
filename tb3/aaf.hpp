class AAF { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 0;
		gogglesRandom = 0;
		uniformRandom = 0;
		backpackRandom = 0;
		vestRandom = 0;			
		
		weapons[] = {"arifle_Mk20_F",};
		priKit[] = {"30Rnd_556x45_Stanag"};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio"};
		
		headgear[] = {
			"H_HelmetIA"
		};
		goggles[] = {};
		
		uniform[] = {
			"U_I_CombatUniform",
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
			"V_PlateCarrierIA1_dgtl",						
		};
			vestContents[] = {					
				{"30Rnd_556x45_Stanag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"NVGoggles",1},
			};
			
		backpack[] = {
			"B_AssaultPack_dgtl",
		};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
	
	class R: baseUnit {};
	
};

class AAFACRE { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 0;
		gogglesRandom = 0;
		uniformRandom = 0;
		backpackRandom = 0;
		vestRandom = 0;			
		
		weapons[] = {"arifle_Mk20_F",};
		priKit[] = {"30Rnd_556x45_Stanag",};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio"};
		
		headgear[] = {
			"H_HelmetIA"
		};
		goggles[] = {};
		
		uniform[] = {
			"U_I_CombatUniform",
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
			"V_PlateCarrierIA1_dgtl",						
		};
			vestContents[] = {					
				{"30Rnd_556x45_Stanag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"NVGoggles",1},
			};
			
		backpack[] = {
			"B_AssaultPack_dgtl",
		};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
	
	class R: baseUnit {};
};

class AAFAI { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 1;
		gogglesRandom = 0;
		uniformRandom = 1;
		backpackRandom = 0;
		vestRandom = 1;			
		
		weapons[] = {"arifle_Mk20_ACO_pointer_F",};
		priKit[] = {"30Rnd_556x45_Stanag",};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio","NVGoggles"};
		
		headgear[] = {
			"H_HelmetIA"
		};
		goggles[] = {};
		
		uniform[] = {
			"U_I_CombatUniform"
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
			"V_PlateCarrierIA1_dgtl"
		};
			vestContents[] = {					
				{"30Rnd_556x45_Stanag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
			};
			
		backpack[] = {
			"B_AssaultPack_dgtl",
		};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
	class SL: baseUnit {
			vestContents[] = {					
				{"30Rnd_556x45_Stanag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"ACE_DAGR",1},
				{"ACE_Vector",1},
			};	
		backpackContents[] = {
				{"30Rnd_556x45_Stanag",4},
				{"SmokeShellRed",2},
				{"SmokeShellGreen",2},
				{"SmokeShellBlue",2},
		};
	};
	class OF: baseUnit {
		headgear[] = {
			"H_MilCap_dgtl",
		};
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio"};
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
				{"30Rnd_556x45_Stanag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"Binocular",1},
			};	
		backpackContents[] = {
				{"30Rnd_556x45_Stanag",12},
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
		weapons[] = {"LMG_Mk200_LP_BI_F",};
		priKit[] = {"200Rnd_65x39_cased_Box",};	
			vestContents[] = {					
				{"200Rnd_65x39_cased_Box",3},
				{"HandGrenade",2},
				{"SmokeShell",2},
			};
		backpackContents[] = {				
				{"200Rnd_65x39_cased_Box",4},
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

class AAFTFAR { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 0;
		gogglesRandom = 0;
		uniformRandom = 0;
		backpackRandom = 0;
		vestRandom = 0;			
		
		weapons[] = {"arifle_Mk20_F",};
		priKit[] = {"30Rnd_556x45_Stanag",};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio"};
		
		headgear[] = {
			"H_HelmetIA"
		};
		goggles[] = {};
		
		uniform[] = {
			"U_I_CombatUniform",
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
			"V_PlateCarrierIA1_dgtl",						
		};
			vestContents[] = {					
				{"30Rnd_556x45_Stanag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"NVGoggles",1},
			};
			
		backpack[] = {
			"B_AssaultPack_dgtl",
		};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
	
	class R: baseUnit {};
};

