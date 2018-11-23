params ["_position"];

private _spawn = [_position, 0,

/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14227.7, 15918.7]
Area size: 30
Using orientation of objects: yes
*/

[
	["CamoNet_BLUFOR_open_F",[0.273438,-0.570313,0],78.9638,1,0,[0,0],"","",true,false], 
	["Land_PaperBox_open_full_F",[-0.546875,-1.95605,0],299.846,1,0,[0,0],"","",true,false], 
	["Land_PaperBox_01_small_stacked_F",[2.84375,1.34473,0.000463486],241.239,1,0,[-0.0929244,-0.00288796],"","",true,false], 
	["Land_FoodSacks_01_cargo_white_idap_F",[0.598633,3.19824,0.000680923],359.999,1,0,[0.0469443,-0.0403688],"","",true,false], 
	["CargoNet_01_box_F",[2.91699,3.42871,-5.72205e-006],360,1,0,[0.0765005,-0.0764907],"","",true,false], 
	["Land_ConcreteHedgehog_01_palette_F",[3.0791,-3.49609,0.00298309],0.00213847,1,0,[0.000105875,0.0251108],"","",true,false], 
	["CargoNet_01_barrels_F",[-3.14355,3.5127,-1.14441e-005],360,1,0,[0.000170401,1.38431e-005],"","",true,false], 
	["Land_PaperBox_01_open_water_F",[-0.756836,4.69824,0.00168037],360,1,0,[0.0498312,-0.038195],"","",true,false], 
	["Land_Pallet_MilBoxes_F",[-1.77832,-4.37305,0.000234604],295.228,1,0,[-0.0366611,-0.101947],"","",true,false], 
	["Land_Pallet_MilBoxes_F",[1.36621,-5.21582,0.000152588],0,1,0,[0.0765974,-0.0766167],"","",true,false], 
	["CargoNet_01_box_F",[2.12695,5.40137,-5.72205e-006],208.439,1,0,[-0.103831,0.0308606],"","",true,false], 
	["Land_BagBunker_Small_F",[-6.59766,8.80078,0],136.334,1,0,[0,-0],"","",true,false], 
	["Land_BagBunker_Small_F",[10.5645,7.23242,0.000518799],224.372,1,0,[-0.0517619,0.0529101],"","",true,false], 
	["Land_BagBunker_Small_F",[-7.05469,-10.9336,0],41.8896,1,0,[0,0],"","",true,false], 
	["Land_BagBunker_Small_F",[9.91992,-8.85547,0],311.208,1,0,[0,0],"","",true,false]
]

] call BIS_fnc_ObjectsMapper;