params ["_position"];

private _spawn = [_position, 0,

/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14299.8, 15839.1]
Area size: 30
Using orientation of objects: yes
*/

[
	["CamoNet_BLUFOR_open_F",[0.789063,-1.11719,0],0.542743,1,0,[0,0],"","",true,false], 
	["Land_Ammobox_rounds_F",[-2.94531,-0.530273,-0.000165939],0.00330779,1,0,[-0.00126879,-0.0596826],"","",true,false], 
	["FlexibleTank_01_forest_F",[-2.35742,-1.93262,-1.33514e-005],0.00719869,1,0.00956258,[0.00210456,-0.00992345],"","",true,false], 
	["Land_Ammobox_rounds_F",[-3.21387,-0.995117,-0.000165939],0.00330779,1,0,[-0.00126879,-0.0596826],"","",true,false], 
	["CargoNet_01_barrels_F",[-1.4248,-3.18945,0],310.097,1,0,[-8.59317e-005,-0.000264828],"","",true,false], 
	["Land_Portable_generator_F",[-3.13184,1.60352,-0.000814438],313.407,1,0,[-0.051466,0.2796],"","",true,false], 
	["FlexibleTank_01_forest_F",[-3.12305,-2.07324,-1.33514e-005],0.00719869,1,0.00956258,[0.00210456,-0.00992345],"","",true,false], 
	["Box_FIA_Support_F",[-4.41992,-0.989258,1.90735e-006],10.7315,1,0,[5.8602e-005,0.000164367],"","",true,false], 
	["CargoNet_01_barrels_F",[-3.44531,-3.77734,0],0.000731053,1,0,[-4.7992e-005,0.000110812],"","",true,false], 
	["Land_Pallet_MilBoxes_F",[4.875,1.78613,-0.0001297],254.099,1,0,[0.0946577,0.0526992],"","",true,false], 
	["Land_PaperBox_closed_F",[4.31152,-3.27441,0],286.149,1,0,[0,0],"","",true,false], 
	["Land_EngineCrane_01_F",[-5.25293,1.39258,1.90735e-005],266.431,1,0,[0.0352948,0.0767156],"","",true,false], 
	["Land_PaperBox_open_full_F",[5.8125,-1.66113,1.71661e-005],54.6236,1,0,[-0.106812,-0.0181249],"","",true,false], 
	["Land_Pallets_stack_F",[3.24902,-5.62988,0],357.587,1,0,[2.18756e-005,-2.22003e-005],"","",true,false], 
	["Land_BagBunker_Small_F",[8.90137,-8.04297,-1.90735e-006],311.208,1,0,[0,0],"","",true,false], 
	["Land_BagBunker_Small_F",[-7.61719,9.61133,-2.47955e-005],136.334,1,0,[0.00253516,-0.108309],"","",true,false], 
	["Land_BagBunker_Small_F",[9.54395,8.04297,-0.00104713],224.372,1,0,[0.108332,-0.00117459],"","",true,false], 
	["Land_BagBunker_Small_F",[-8.07422,-10.123,0.00104713],41.8896,1,0,[-0.10818,0.00586479],"","",true,false]
]

] call BIS_fnc_ObjectsMapper;