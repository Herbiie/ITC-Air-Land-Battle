// Edit the below values to customise features in ALB

// Set the vehicle that is spawned when building new bases
private _fobVehicle = "B_Truck_01_box_F";

// Set the personal items that are available at the shop and their price
private _itemsArray = [["H_Beret_red",5],["H_Beret_grn",5],["H_Beret_blk",5],["H_Beret_grn_SF",5],["H_Beret_brn_SF",5],["H_Beret_02",5],["H_Watchcap_blk",5],["optic_ams",35],["optic_khs_blk",25],["bipod_01_f_blk",25],["acc_pointer_ir",25],["acc_flashlight",25],["optic_arco_blk_f",25],["optic_holosight_blk_f",15],["optic_hamr",25],["optic_nvs",35],["ACE_MX2A",35],["ACE_Yardage450",35],["LaserDesignator",35],["B_UavTerminal",35],["ACE_Altimeter",5],["ACE_DAGR",15],["ACE_Vector",15],["ACE_MicroDAGR",15],["ACE_SpottingScope",15],["ACE_Tripod",15],["ClaymoreDirectionalMine_Remote_mag",100],["ACE_FlareTripMine_Mag",100],["ACE_M14",100],["Laserbatteries",100],["APERSTripMine_Wire_Mag",100],["ATMine_Range_Mag",100],["SatchelCharge_Remote_Mag",100],["U_B_GhillieSuit",200],["muzzle_snds_B",35],["muzzle_snds_L",35],["muzzle_snds_M",35],["muzzle_snds_H",35],["optic_tws",35],["optic_AMS_snd",35],["optic_LRPS",35],["hgun_ACPC2_F",50],["9Rnd_45ACP_Mag",1],["hgun_P07_F",60],["16Rnd_9x21_Mag",1],["30Rnd_9x21_Mag",3],["hgun_Pistol_heavy_01_F",70],["11Rnd_45ACP_Mag",1],["hgun_Pistol_heavy_02_F",80],["6Rnd_45ACP_Cylinder",1],["hgun_Rook40_F",60],["hgun_PDW2000_F",90],["optic_DMS",35],["hgun_Pistol_Signal_F",20],["6Rnd_GreenSignal_F",1],["6Rnd_RedSignal_F",1],["srifle_DMR_02_F",200],["10Rnd_338_Mag",1],["srifle_DMR_02_camo_F",205],["srifle_DMR_02_sniper_F",210],["Rangefinder",35],["muzzle_snds_H_MG",35],["muzzle_snds_H_SW",35],["optic_Arco",25],["optic_Aco",15],["optic_ACO_grn",15],["optic_Aco_smg",15],["optic_ACO_grn_smg",15],["optic_Holosight",15],["optic_Holosight_smg",15],["optic_SOS",35],["acc_flashlight_smg_01",25],["acc_flashlight_pistol",25],["optic_MRCO",35],["muzzle_snds_acp",35],["optic_Nightstalker",35],["optic_tws_mg",35],["optic_Yorris",15],["optic_MRD",15],["muzzle_snds_338_black",35],["muzzle_snds_338_green",35],["muzzle_snds_338_sand",35],["muzzle_snds_93mmg",35],["muzzle_snds_93mmg_tan",35],["optic_AMS_khk",35],["optic_AMS_snd",35],["optic_KHS_hex",35],["optic_KHS_old",35],["optic_KHS_tan",25],["bipod_01_F_snd",25],["bipod_01_F_mtp",25],["bipod_02_F_blk",25],["bipod_02_F_tan",25],["bipod_02_F_hex",25],["bipod_03_F_blk",25],["bipod_03_F_oli",35],["muzzle_snds_570",35],["muzzle_snds_H_khk_F",35],["muzzle_snds_H_snd_F",35],["muzzle_snds_m_khk_F",35],["muzzle_snds_m_snd_F",35],["muzzle_snds_58_blk_F",35],["muzzle_snds_58_wdm_F",35],["muzzle_snds_58_ghex_F",35],["muzzle_snds_58_hex_F",35],["muzzle_snds_B_khk_F",35],["muzzle_snds_B_snd_F",35],["muzzle_snds_65_TI_blk_F",35],["muzzle_snds_65_TI_hex_F",35],["muzzle_snds_65_TI_ghex_F",35],["muzzle_snds_H_MG_blk_F",35],["muzzle_snds_H_MG_khk_F",35],["optic_Arco_ghex_F",25],["optic_DMS_ghex_F",35],["optic_Hamr_khk_F",25],["optic_ERCO_blk_F",25],["optic_ERCO_khk_F",25],["optic_ERCO_snd_F",25],["optic_SOS_khk_F",35],["optic_LRPS_tna_F",35],["optic_LRPS_ghex_F",35],["optic_Holosight_smg_khk_F",15],["optic_Holosight_khk_F",15],["optic_Holosight_smg_blk_F",15],["bipod_01_F_khk",25],["H_Booniehat_khk",5],["H_Booniehat_oli",5],["H_Booniehat_indp",5],["H_Booniehat_mcamo",5],["H_Booniehat_grn",5],["H_Booniehat_tan",5],["H_Booniehat_dirty",5],["H_Booniehat_dgtl",5],["H_Booniehat_khk_hs",5],["H_Cap_red",5],["H_Cap_blu",5],["H_Cap_oli",5],["H_Cap_headphones",5],["H_Cap_tan",5],["H_Cap_blk",5],["H_Cap_blk_CMMG",5],["H_Cap_brn_SPECOPS",5],["H_Cap_tan_specops_US",5],["H_Cap_khaki_specops_UK",5],["H_Cap_grn",5],["H_Cap_grn_BI",5],["H_Cap_blk_Raven",5],["H_Cap_blk_ION",5],["H_Cap_oli_hs",5],["H_Cap_press",5],["H_Cap_usblack",5],["H_MilCap_ocamo",5],["H_MilCap_mcamo",5],["H_MilCap_oucamo",5],["H_MilCap_rucamo",5],["H_MilCap_gry",5],["H_MilCap_dgtl",5],["H_MilCap_blue",5],["H_BandMask_blk",5],["H_BandMask_khk",5],["H_BandMask_reaper",5],["H_BandMask_demon",5],["H_Bandanna_surfer",5],["H_Bandanna_khk",5],["H_Bandanna_khk_hs",5],["H_Bandanna_cbr",5],["H_Bandanna_sgg",5],["H_Bandanna_sand",5],["H_Bandanna_surfer_blk",5],["H_Bandanna_surfer_grn",5],["H_Bandanna_gry",5],["H_Bandanna_blu",5],["H_Bandanna_camo",5],["H_Bandanna_mcamo",5],["H_Shemag_khk",5],["H_Shemag_tan",5],["H_Shemag_olive",5],["H_Shemag_olive_hs",5],["H_ShemagOpen_khk",5],["H_ShemagOpen_tan",5],["H_Beret_ocamo",5],["H_Beret_Colonel",5],["H_Watchcap_cbr",5],["H_Watchcap_khk",5],["H_Watchcap_camo",5],["H_Watchcap_sgg",5],["H_Cap_marshal",5],["H_Helmet_Skate",5],["H_MilCap_tna_F",5],["H_MilCap_ghex_F",5],["H_Booniehat_tna_F",5],["H_Beret_gen_F",5],["H_MilCap_gen_F",5],["H_Cap_oli_Syndikat_F",5],["H_Cap_tan_Syndikat_F",5],["H_Cap_blk_Syndikat_F",5],["H_Cap_grn_Syndikat_F",5]];

// Set the gear available at the theatre HQ arsenal crate per Equipment Tier (the higher tiers will include all items from the lower tiers):
private _arsenalTier1 = ["H_HelmetSpecB_paint1","H_HelmetSpecB_paint2","H_HelmetSpecB_sand","H_HelmetSpecB_snakeskin","H_HelmetSpecB","U_B_CTRG_1","U_B_CTRG_3","V_PlateCarrier1_rgr","V_PlateCarrierL_CTRG","B_AssaultPack_cbr","B_CarryAll_oli","arifle_SPAR_01_blk_F","arifle_SPAR_02_blk_F","150Rnd_556x45_Drum_Mag_Tracer_F","30Rnd_556x45_Stanag","launch_NLAW_F","30Rnd_556x45_Stanag_green","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Green","30Rnd_556x45_Stanag_Tracer_Yellow","NVGoggles"];

private _arsenalTier2 = ["20rnd_762x51_mag","arifle_SPAR_03_blk_F","arifle_SPAR_01_GL_blk_F","launch_Titan_F","launch_B_Titan_short_F","Titan_AA","Titan_AT","Titan_AP"];

private _arsenalTier3 = ["MMG_02_black_F","130Rnd_338_Mag","srifle_LRR_F","7Rnd_408_Mag"];

private _arsenalTier4 = ["launch_MRAWS_olive_rail_F","MRAWS_HEAT_F","MRAWS_HE_F","NVGogglesB_blk_F"];

// Set the vehicles available from the Motor Transport Officer, Air Officer and Artillery Officer at Theatre HQ (with price)
private _mtVehicles = [["B_Quadbike_01_F",10],["B_LSV_01_unarmed_F",20],["B_LSV_01_armed_F",30],["B_LSV_01_AT_F",40],["B_Truck_01_covered_F",50],["B_MRAP_01_F",50],["B_MRAP_01_hmg_F",60],["B_MRAP_01_gmg_F",70]];
private _airVehicles = [["B_Heli_Light_01_F",100],["B_Heli_Light_01_dynamicLoadout_F",150],["B_Heli_Transport_01_F",250],["B_Heli_Transport_03_unarmed_F",300],["B_Heli_Transport_03_F",350],["B_Heli_Attack_01_F",500],["ITC_A519",750],["ITC_Gripen",1000],["ITC_F181E",1250],["ITC_A10E",1500]];
private _artyVehicles = [["B_Mortar_01_F",100],["itc_land_b_SPH_Sholef2",400],["itc_land_b_mlrs_seara2",700]];

// Set the weapons/magazines/items found in the supply boxes per tier. Format is an array of arrays with item and number [["item1",5],["item2",3]];
private _tier1w = [["arifle_SPAR_02_blk_F", 1],["launch_NLAW_F", 2]];
private _tier1m = [["150Rnd_556x45_Drum_Mag_Tracer_F", 7],["30Rnd_556x45_Stanag_red", 30]];
private _tier1i = [];
private _tier2w = [["arifle_SPAR_03_blk_F", 1],["arifle_SPAR_01_GL_blk_F", 1],["launch_B_Titan_short_F", 1]];
private _tier2m = [["20rnd_762x51_mag", 8],["1Rnd_HE_Grenade_shell", 10],["Titan_AP", 1]];
private _tier2i = [];
private _tier3w = [["MMG_02_black_F", 1],["srifle_LRR_F", 1]];
private _tier3m = [["130Rnd_338_Mag", 5],["7Rnd_408_Mag", 8]];
private _tier3i = [["optic_LRPS", 1]];
private _tier4w = [["launch_MRAWS_olive_rail_F", 1]];
private _tier4m = [["MRAWS_HEAT_F", 2]];
private _tier4i = [["NVGogglesB_blk_F", 5]];


// **** DO NOT EDIT BELOW THIS LINE ****
missionNameSpace setVariable ["H_custom_fobVehicle",_fobVehicle,true];
_itemsArray sort true;
missionNameSpace setVariable ["H_custom_itemsArray",_itemsArray,true];
missionNameSpace setvariable ["H_custom_arsenalTier1",_arsenalTier1,true];
missionNameSpace setVariable ["H_custom_arsenalTier2",_arsenalTier2,true];
missionNameSpace setVariable ["H_custom_arsenalTier3",_arsenalTier3,true];
missionNameSpace setVariable ["H_custom_arsenalTier4",_arsenalTier4,true];
missionNameSpace setVariable ["H_custom_MT",_mtVehicles,true];
missionNameSpace setVariable ["H_custom_air",_airVehicles,true];
missionNameSpace setVariable ["H_custom_arty",_artyVehicles,true];
missionNameSpace setVariable ["H_custom_tier1w",_tier1w,true];
missionNameSpace setVariable ["H_custom_tier1m",_tier1m,true];
missionNameSpace setVariable ["H_custom_tier1i",_tier1i,true];
missionNameSpace setVariable ["H_custom_tier2w",_tier2w,true];
missionNameSpace setVariable ["H_custom_tier2m",_tier2m,true];
missionNameSpace setVariable ["H_custom_tier2i",_tier2i,true];
missionNameSpace setVariable ["H_custom_tier3w",_tier3w,true];
missionNameSpace setVariable ["H_custom_tier3m",_tier3m,true];
missionNameSpace setVariable ["H_custom_tier3i",_tier3i,true];
missionNameSpace setVariable ["H_custom_tier4w",_tier4w,true];
missionNameSpace setVariable ["H_custom_tier4m",_tier4m,true];
missionNameSpace setVariable ["H_custom_tier4i",_tier4i,true];