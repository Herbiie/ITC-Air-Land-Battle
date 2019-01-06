class NATOACRE { 
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
	
	class R: baseUnit {};
};