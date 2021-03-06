params ["_box"];
_faction = "Faction" call BIS_fnc_getParamValue;

clearItemCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;

// Global Equipment
_box addItemCargoGlobal ["ACE_fieldDressing", 20];
_box addItemCargoGlobal ["ACE_earplugs", 10];
_box addItemCargoGlobal ["ACE_splint", 10];
_box addItemCargoGlobal ["ACE_morphine", 30];
_box addItemCargoGlobal ["ACE_tourniquet", 30];
_box addItemCargoGlobal ["ACE_packingBandage", 30];
_box addItemCargoGlobal ["ACE_quikclot", 30];
_box addItemCargoGlobal ["ACE_elasticBandage", 20];
_box addItemCargoGlobal ["ACE_salineIV_250", 20];
_box addItemCargoGlobal ["ACE_CableTie", 10];
_box addItemCargoGlobal ["ACE_SprayPaintRed", 5];
_box addItemCargoGlobal ["ACE_DefusalKit", 2];
_box addItemCargoGlobal ["ACE_EntrenchingTool", 3];
_box addItemCargoGlobal ["ACE_PersonalAidKit", 5];
_box addItemCargoGlobal ["ACE_Chemlight_IR", 10];
_box addItemCargoGlobal ["Chemlight_Red", 10];
_box addItemCargoGlobal ["ACE_SurgicalKit", 5];
_box addItemCargoGlobal ["Toolkit", 1];
_box addItemCargoGlobal ["ACE_Clacker", 1];
_box addMagazineCargoGlobal ["HandGrenade", 20];
_box addMagazineCargoGlobal ["B_IR_Grenade", 5];
_box addMagazineCargoGlobal ["SmokeShell", 10];
_box addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 3];
_box addBackpackCargoGlobal ["B_respawn_TentDome_F", 1];

switch (_faction) do {

	case 1: {
	// CTRG
		_box addWeaponCargoGlobal ["arifle_SPAR_02_blk_F", 1];
		_box addWeaponCargoGlobal ["launch_NLAW_F", 2];
		_box addMagazineCargoGlobal ["150Rnd_556x45_Drum_Mag_Tracer_F", 7];
		_box addMagazineCargoGlobal ["30Rnd_556x45_Stanag_red", 30];		
		if (H_alb_gearTier >= 1) then {
			_box addMagazineCargoGlobal ["20rnd_762x51_mag", 8];
			_box addWeaponCargoGlobal ["arifle_SPAR_03_blk_F", 1];
			_box addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 10];
			_box addWeaponCargoGlobal ["arifle_SPAR_01_GL_blk_F", 1];
			_box addMagazineCargoGlobal ["Titan_AP", 1];
			_box addWeaponCargoGlobal ["launch_B_Titan_short_F", 1];
		};
		if (H_alb_gearTier >= 2) then {
			_box addMagazineCargoGlobal ["130Rnd_338_Mag", 5];
			_box addWeaponCargoGlobal ["MMG_02_black_F", 1];
			_box addMagazineCargoGlobal ["7Rnd_408_Mag", 8];
			_box addWeaponCargoGlobal ["srifle_LRR_F", 1];
			_box additemCargoGlobal ["optic_LRPS", 1];
		};
		if (H_alb_gearTier >= 3) then {
			_box addMagazineCargoGlobal ["MRAWS_HEAT_F", 2];
			_box addWeaponCargoGlobal ["launch_MRAWS_olive_rail_F", 1];
			_box additemCargoGlobal ["NVGogglesB_blk_F", 5];
		};
	};
	
	case 2: {
	// NATO
		_box addWeaponCargoGlobal ["arifle_MX_SW_F", 1];
		_box addWeaponCargoGlobal ["launch_NLAW_F", 2];
		_box addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag_Tracer", 7];
		_box addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 30];
		if (H_alb_gearTier >= 1) then {
			_box addMagazineCargoGlobal ["20rnd_762x51_mag", 8];
			_box addWeaponCargoGlobal ["arifle_MXM_F", 1];
			_box addWeaponCargoGlobal ["srifle_DMR_03_tan_F", 1];
			_box addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 10];
			_box addWeaponCargoGlobal ["arifle_MX_GL_F", 1];
			_box additemCargoGlobal ["optic_AMS_snd", 1];
		};
		if (H_alb_gearTier >= 2) then {
			_box addMagazineCargoGlobal ["130Rnd_338_Mag", 5];
			_box addWeaponCargoGlobal ["MMG_02_sand_F", 1];
			_box addMagazineCargoGlobal ["3Rnd_HE_Grenade_shell", 10];
		};
		if (H_alb_gearTier >= 3) then {
			_box addMagazineCargoGlobal ["7Rnd_408_Mag", 8];
			_box addWeaponCargoGlobal ["srifle_LRR_F", 1];
			_box additemCargoGlobal ["optic_LRPS", 1];
			_box addMagazineCargoGlobal ["MRAWS_HEAT_F", 2];
			_box addWeaponCargoGlobal ["launch_MRAWS_olive_rail_F", 1];
			_box additemCargoGlobal ["NVGogglesB_blk_F", 5];
		};
	
	};
	case 3: {
	// CSAT
		_box addWeaponCargoGlobal ["arifle_CTARS_blk_F", 1];
		_box addWeaponCargoGlobal ["launch_RPG32_F", 2];
		_box addMagazineCargoGlobal ["100Rnd_580x42_Mag_F", 7];
		_box addMagazineCargoGlobal ["30Rnd_65x39_caseless_green", 30];
		if (H_alb_gearTier >= 1) then {
			_box addMagazineCargoGlobal ["10Rnd_93x64_DMR_05_Mag", 8];
			_box addWeaponCargoGlobal ["srifle_DMR_05_blk_F", 1];
			_box addWeaponCargoGlobal ["arifle_Katiba_GL_F", 1];
			_box addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 10];
			_box additemCargoGlobal ["optic_DMS", 1];
			_box addMagazineCargoGlobal ["LMG_Zafir_F", 1];
			_box addWeaponCargoGlobal ["150Rnd_762x54_Box", 5];
		};
		if (H_alb_gearTier >= 2) then {
			_box addMagazineCargoGlobal ["launch_O_Vorona_green_F", 1];
			_box addWeaponCargoGlobal ["Vorona_HEAT", 2];
		};
		if (H_alb_gearTier >= 3) then {
			_box addMagazineCargoGlobal ["5Rnd_127x108_Mag", 8];
			_box addWeaponCargoGlobal ["srifle_GM6_F", 1];
			_box additemCargoGlobal ["optic_SOS", 1];
		};
	
	};
	case 4: {
	// AAF
		_box addWeaponCargoGlobal ["LMG_Mk200_LP_BI_F", 1];
		_box addWeaponCargoGlobal ["launch_NLAW_F", 2];
		_box addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 3];
		_box addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 30];
		if (H_alb_gearTier >= 1) then {
			_box addMagazineCargoGlobal ["20Rnd_762x51_Mag", 8];
			_box addWeaponCargoGlobal ["srifle_EBR_F", 1];
			_box addWeaponCargoGlobal ["arifle_Mk20_GL_F", 1];
			_box addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 10];
			_box additemCargoGlobal ["optic_DMS", 1];
			_box addMagazineCargoGlobal ["LMG_Mk200_LP_BI_F", 1];
			_box addWeaponCargoGlobal ["200Rnd_65x39_cased_Box", 5];
		};
		if (H_alb_gearTier >= 2) then {
			_box addMagazineCargoGlobal ["launch_MRAWS_olive_rail_F", 1];
			_box addWeaponCargoGlobal ["MRAWS_HEAT_F", 2];
		};
		if (H_alb_gearTier >= 3) then {
			_box addMagazineCargoGlobal ["5Rnd_127x108_Mag", 8];
			_box addWeaponCargoGlobal ["srifle_GM6_F", 1];
			_box additemCargoGlobal ["optic_SOS", 1];
		};
	case 5: {
	// Custom
		private _tier1w = missionNamespace getVariable ["H_custom_tier1w",[]];
		private _tier1m = missionNamespace getVariable ["H_custom_tier1m",[]];
		private _tier1i = missionNamespace getVariable ["H_custom_tier1i",[]];
		private _tier2w = missionNamespace getVariable ["H_custom_tier2w",[]];
		private _tier2m = missionNamespace getVariable ["H_custom_tier2m",[]];
		private _tier2i = missionNamespace getVariable ["H_custom_tier2i",[]];
		private _tier3w = missionNamespace getVariable ["H_custom_tier3w",[]];
		private _tier3m = missionNamespace getVariable ["H_custom_tier3m",[]];
		private _tier3i = missionNamespace getVariable ["H_custom_tier3i",[]];
		private _tier4w = missionNamespace getVariable ["H_custom_tier4w",[]];
		private _tier4m = missionNamespace getVariable ["H_custom_tier4m",[]];
		private _tier4i = missionNamespace getVariable ["H_custom_tier4i",[]];
		{
			private _item = _x # 0;
			private _amount = _x # 1;
			_box addWeaponCargoGlobal [_item,_amount];
		} forEach _tier1w;
		{
			private _item = _x # 0;
			private _amount = _x # 1;
			_box addMagazineCargoGlobal [_item,_amount];
		} forEach _tier1m;
		{
			private _item = _x # 0;
			private _amount = _x # 1;
			_box addItemCargoGlobal [_item,_amount];
		} forEach _tier1i;
		if (H_alb_gearTier >= 1) then {
			{
				private _item = _x # 0;
				private _amount = _x # 1;
				_box addWeaponCargoGlobal [_item,_amount];
			} forEach _tier2w;
			{
				private _item = _x # 0;
				private _amount = _x # 1;
				_box addMagazineCargoGlobal [_item,_amount];
			} forEach _tier2m;
			{
				private _item = _x # 0;
				private _amount = _x # 1;
				_box addItemCargoGlobal [_item,_amount];
			} forEach _tier2i;
		};
		if (H_alb_gearTier >= 2) then {
			{
				private _item = _x # 0;
				private _amount = _x # 1;
				_box addWeaponCargoGlobal [_item,_amount];
			} forEach _tier3w;
			{
				private _item = _x # 0;
				private _amount = _x # 1;
				_box addMagazineCargoGlobal [_item,_amount];
			} forEach _tier3m;
			{
				private _item = _x # 0;
				private _amount = _x # 1;
				_box addItemCargoGlobal [_item,_amount];
			} forEach _tier3i;
		};
		if (H_alb_gearTier >= 3) then {
			{
				private _item = _x # 0;
				private _amount = _x # 1;
				_box addWeaponCargoGlobal [_item,_amount];
			} forEach _tier4w;
			{
				private _item = _x # 0;
				private _amount = _x # 1;
				_box addMagazineCargoGlobal [_item,_amount];
			} forEach _tier4m;
			{
				private _item = _x # 0;
				private _amount = _x # 1;
				_box addItemCargoGlobal [_item,_amount];
			} forEach _tier4i;
		};
	};
	
	};
};

