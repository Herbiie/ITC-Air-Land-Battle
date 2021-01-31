switch (H_Faction) do {
	case "NATO": {
		missionNameSpace setVariable ["H_MT_vehicles",[["B_Quadbike_01_F",10],["B_LSV_01_unarmed_F",20],["B_LSV_01_armed_F",30],["B_LSV_01_AT_F",40],["B_Truck_01_covered_F",50],["B_MRAP_01_F",50],["B_MRAP_01_hmg_F",60],["B_MRAP_01_gmg_F",70]],true];
		missionNameSpace setVariable ["H_Air_vehicles",[["B_Heli_Light_01_F",100],["B_Heli_Light_01_dynamicLoadout_F",150],["B_Heli_Transport_01_F",250],["B_Heli_Transport_03_unarmed_F",300],["B_Heli_Transport_03_F",350],["B_Heli_Attack_01_F",500],["ITC_A519",750],["ITC_Gripen",1000],["ITC_F181E",1250],["ITC_A10E",1500]],true];
		missionNameSpace setVariable ["H_Arty_vehicles",[["B_Mortar_01_F",100],["itc_land_b_SPH_Sholef2",400],["itc_land_b_mlrs_seara2",700]],true];
	};
	case "CTRG": {
		missionNameSpace setVariable ["H_MT_vehicles",[["B_Quadbike_01_F",10],["B_LSV_01_unarmed_F",20],["B_LSV_01_armed_F",30],["B_LSV_01_AT_F",40],["B_Truck_01_covered_F",50],["B_MRAP_01_F",50],["B_MRAP_01_hmg_F",60],["B_MRAP_01_gmg_F",70]],true];
		missionNameSpace setVariable ["H_Air_vehicles",[["B_Heli_Light_01_F",100],["B_Heli_Light_01_dynamicLoadout_F",150],["B_Heli_Transport_01_F",250],["B_Heli_Transport_03_unarmed_F",300],["B_Heli_Transport_03_F",350],["B_Heli_Attack_01_F",500],["ITC_A519",750],["ITC_Gripen",1000],["ITC_F181E",1250],["ITC_A10E",1500]],true];
		missionNameSpace setVariable ["H_Arty_vehicles",[["B_Mortar_01_F",100],["itc_land_b_SPH_Sholef2",400],["itc_land_b_mlrs_seara2",700]],true];
	};
	case "CSAT": {
		missionNameSpace setVariable ["H_MT_vehicles",[["O_Quadbike_01_F",10],["O_LSV_02_unarmed_F",20],["O_LSV_02_armed_F",30],["O_LSV_02_AT_F",40],["O_Truck_03_covered_F",50],["O_MRAP_02_F",50],["O_MRAP_02_hmg_F",60],["O_MRAP_02_gmg_F",70]],true];
		missionNameSpace setVariable ["H_Air_vehicles",[["O_Heli_Light_02_unarmed_F",100],["O_Heli_Light_02_dynamicLoadout_F",150],["O_Heli_Transport_04_bench_F",250],["O_Heli_Transport_04_covered_F",300],["O_Heli_Attack_02_dynamicLoadout_F",500],["ITC_A519",750],["ITC_Gripen",1000],["ITC_F181E",1250],["ITC_A10E",1500]],true];
		missionNameSpace setVariable ["H_Arty_vehicles",[["B_Mortar_01_F",100],["itc_land_o_sph_sochor2",400],["itc_land_o_mlrs_zamak",700]],true];
	};
	case "AAF": {
		missionNameSpace setVariable ["H_MT_vehicles",[["I_Quadbike_01_F",10],["I_MRAP_03_F",30],["I_Truck_02_covered_F",30],["I_MRAP_03_hmg_F",40],["I_MRAP_03_gmg_F",60]],true];
		missionNameSpace setVariable ["H_Air_vehicles",[["I_Heli_light_03_unarmed_F",100],["I_Heli_light_03_dynamicLoadout_F",150],["I_Heli_Transport_02_F",250],["ITC_A519",750],["ITC_Gripen",1000],["ITC_F181E",1250],["ITC_A10E",1500]],true];
		missionNameSpace setVariable ["H_Arty_vehicles",[["B_Mortar_01_F",100],["itc_land_o_sph_sochor2",400],["itc_land_o_mlrs_zamak",700]],true];
	};
	case "CUSTOM": {
		private _MT = missionNameSpace getVariable ["H_custom_MT",[]];
		private _air = missionNameSpace getVariable ["H_custom_air",[]];
		private _arty = missionNameSpace getVariable ["H_custom_arty",[]];
		missionNameSpace setVariable ["H_MT_vehicles",_MT,true];
		missionNameSpace setVariable ["H_Air_vehicles",_air,true];
		missionNameSpace setVariable ["H_Arty_vehicles",_arty,true];
	};

};
