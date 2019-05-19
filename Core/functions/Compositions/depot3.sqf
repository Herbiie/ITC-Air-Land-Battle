params ["_position"];

private _spawn = [_position, 0,

/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14280.4, 15972.6]
Area size: 30
Using orientation of objects: yes
*/

[
	["CamoNet_BLUFOR_open_F",[1.12695,-0.236328,0],223.229,1,0,[0,0],"","",false,false], 
	["CargoNet_01_box_F",[2.62012,-0.989258,-9.53674e-006],95.492,1,0,[-5.8507e-006,-1.5346e-005],"","",false,false], 
	["Land_FoodSacks_01_cargo_brown_idap_F",[-1.44336,3.39551,1.52588e-005],120.932,1,0,[4.82271e-005,7.32097e-005],"","",false,false], 
	["Land_FoodSacks_01_cargo_brown_F",[0.371094,4.72363,-1.14441e-005],244.832,1,0,[0.000127397,3.40326e-005],"","",false,false], 
	["CargoNet_01_barrels_F",[3.5127,-3.23828,-9.53674e-006],0.000713003,1,0,[-4.60985e-005,0.000109555],"","",false,false], 
	["CargoNet_01_box_F",[4.95605,-1.12793,-1.14441e-005],242.232,1,0,[-0.000169193,7.98866e-006],"","",false,false], 
	["Land_FoodSacks_01_cargo_brown_F",[-1.52051,5.7666,1.52588e-005],134.035,1,0,[0.000138565,2.42332e-005],"","",false,false], 
	["Land_PaperBox_01_open_boxes_F",[5.56543,-3.7627,0.000919342],172.921,1,0,[8.85534e-005,-5.39933e-005],"","",false,false], 
	["Land_Pallet_MilBoxes_F",[3.58594,-6.21191,0],307.089,1,0,[0,0],"","",false,false], 
	["Land_PaperBox_01_small_destroyed_brown_F",[0.741211,-8.91113,0.000246048],292.886,1,0,[1.36897e-005,-0.000141091],"","",false,false], 
	["Land_PaperBox_01_small_destroyed_white_IDAP_F",[2.14941,-9.39941,0.000246048],0.0013847,1,0,[2.38973e-005,-7.45825e-005],"","",false,false], 
	["Land_PaperBox_01_small_ransacked_brown_F",[1.30664,-9.66406,0],260.462,1,0,[0,0],"","",false,false], 
	["Land_PaperBox_01_small_ransacked_white_IDAP_F",[0.167969,-9.84375,0],14.0755,1,0,[0,0],"","",false,false], 
	["Land_BagBunker_Small_F",[-6.59766,8.80078,0],136.334,1,0,[0,-0],"","",false,false], 
	["Land_BagBunker_Small_F",[10.5635,7.23242,0],224.372,1,0,[0,0],"","",false,false], 
	["Land_BagBunker_Small_F",[-7.05469,-10.9336,0],41.8896,1,0,[0,0],"","",false,false], 
	["Land_BagBunker_Small_F",[9.91992,-8.85547,0],311.208,1,0,[0,0],"","",false,false]
]

] call BIS_fnc_ObjectsMapper;