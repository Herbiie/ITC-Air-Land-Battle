class HNF { 
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
			"H_PASGT_basic_olive_F",
			"H_PASGT_basic_black_F",
			"H_cap_oli",
		};
		goggles[] = {};
		
		uniform[] = {
			"U_I_C_Soldier_Camo_F",
			"U_I_C_Soldier_Para_2_F",
			"U_I_C_Soldier_Para_1_F",
		};
			uniformContents[] = {
				{"ACE_fieldDressing",3},
				{"ACE_morphine",1},
				{"ACE_tourniquet",1},	
				{"ACE_packingBandage",3},
			};
			
		vest[] = {
			"V_PlateCarrier1_rgr_noflag_F",
			"V_PlateCarrier2_rgr_noflag_F",
			"V_TacChestrig_oli_F",
			"V_TacVest_oli",
		};
			vestContents[] = {					
				{"30Rnd_762x39_Mag_F",6},
				{"HandGrenade",2},
			};
			
		backpack[] = {"B_FieldPack_oli",};
		backpackContents[] = {
				
		};
			
		magazines[] = {}; items[] = {};
	};
class TL: baseUnit {	
			vestContents[] = {					
				{"30Rnd_762x39_Mag_F",6},
				{"HandGrenade",2},
				{"SmokeShell",2},
				{"ACE_Vector",1},
			};
		backpackContents[] = {					
			{"30Rnd_762x39_Mag_F",6},
			{"HandGrenade",2},			
		};
	};
class R1: baseUnit {
		backpackContents[] = {					
			{"30Rnd_762x39_Mag_F",3},		
		};
	};
class LMG: baseUnit {
		weapons[] = {"LMG_03_F",};
		priKit[] = {"200Rnd_556x45_Box_F",};	
		vestContents[] = {					
			{"200Rnd_556x45_Box_F",2},
			{"HandGrenade",2},
		};
		backpackContents[] = {					
			{"200Rnd_556x45_Box_F",2},				
		};
	};
class RPG: baseUnit {
		weapons[] = {"arifle_AKM_F","launch_RPG7_F"};	
		secKit[] = {"RPG7_F",};
		backpackContents[] = {					
			{"RPG7_F",3},				
		};
	};
class POL: baseUnit {
		ace_earplugs = 1;
		headgearRandom = 1;
		gogglesRandom = 0;
		uniformRandom = 0;
		backpackRandom = 0;
		vestRandom = 0;			
		
		weapons[] = {"arifle_AKS_F",};
		
		headgear[] = {
			"H_Cap_police",
			"H_Beret_blk_POLICE",
			"H_MilCap_gen_F",
			"H_Beret_gen_F",
		};
		goggles[] = {};
		
		uniform[] = {
			"U_B_GEN_Commander_F",
		};
			uniformContents[] = {
				{"ACE_fieldDressing",3},
				{"ACE_tourniquet",1},	
			};
			
		vest[] = {
			"V_TacVest_blk_POLICE",
		};
			vestContents[] = {					
				{"30Rnd_762x39_Mag_F",6},
			};
	};
};