class NATOTFAR { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 0;
		gogglesRandom = 0;
		uniformRandom = 0;
		backpackRandom = 0;
		vestRandom = 0;			
		
		weapons[] = {"arifle_MX_ACO_pointer_F",};
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
	class TL: baseUnit {
			vestContents[] = {					
				{"30Rnd_65x39_caseless_mag",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"ACE_DAGR",1},
				{"ACE_Vector",1},
				{"NVGoggles",1},
				{"TFAR_anprc152",1},
			};	
		backpackContents[] = {
				{"30Rnd_65x39_caseless_mag",4},
				{"SmokeShellRed",2},
				{"SmokeShellGreen",2},
				{"SmokeShellBlue",2},
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
				{"NVGoggles",1},
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