class AirACRE { 
	class baseUnit {
		ace_earplugs = 1;
		headgearRandom = 0;
		gogglesRandom = 0;
		uniformRandom = 0;
		backpackRandom = 0;
		vestRandom = 0;			
		
		weapons[] = {"SMG_01_Holo_F",};
		priKit[] = {"30Rnd_45ACP_Mag_SMG_01",};
		secKit[] = {};
		pisKit[] = {};
		
		assignedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio"};
		
		headgear[] = {
			"H_PilotHelmetFighter_B"
		};
		goggles[] = {};
		
		uniform[] = {
			"U_B_PilotCoveralls",
		};
			uniformContents[] = {
				{"ACE_fieldDressing",1},
				{"ACE_morphine",1},
				{"ACE_tourniquet",1},	
				{"ACE_packingBandage",2},
				{"ACE_quikclot",2},
				{"ACE_elasticBandage",2},
				{"ace_maptools",1},
				{"ACE_Flashlight_KSF1",1},
				{"ACE_MicroDAGR",1},
				{"30Rnd_45ACP_Mag_SMG_01",5},
			};
			
		vest[] = {
			
			
		};
			vestContents[] = {					
				
			};
			
		backpack[] = {
			"ACE_NonSteerableParachute",
		};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
	class PILOT: baseUnit {	
	};
};