/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14542.2, 16083.1]
Area size: 20
Using orientation of objects: yes
*/

params ["_position"];

private _spawn = [_position, 0,[
	["Land_Ground_sheet_khaki_F",[-2.25977,0.311523,0],291.34,1,0,[0,0],"","",false,false], 
	["Campfire_burning_F",[1.2959,2.87793,0.0299988],0,1,0,[0,0],"","",false,false], 
	["Land_GasTank_01_blue_F",[3.64746,-1.69727,1.52588e-005],359.992,1,0,[-0.00339194,-0.0016557],"","",false,false], 
	["Land_WoodPile_F",[2.91602,-2.85254,0],52.7178,1,0,[0,0],"","",false,false], 
	["Land_TentA_F",[4.09863,0.90625,0],80.0548,1,0,[0,0],"","",false,false], 
	["Land_Garbage_square5_F",[-3.68359,-2.32617,0],0,1,0,[0,0],"","",false,false], 
	["Land_TentA_F",[-3.43262,2.95313,0],281.063,1,0,[0,0],"","",false,false], 
	["Land_Ground_sheet_khaki_F",[0.291992,5.02637,0],145.732,1,0,[0,-0],"","",false,false], 
	["Land_Sacks_goods_F",[-2.25391,5.50195,0],0,1,0,[0,0],"","",false,false], 
	["Land_BagFence_Round_F",[5.9707,-1.87598,-0.00130081],290.611,1,0,[0,0],"","",false,false], 
	["Land_Garbage_square3_F",[3.91895,4.67188,0],0,1,0,[0,0],"","",false,false], 
	["Land_TentA_F",[-1.85547,-5.99414,0],0,1,0,[0,0],"","",false,false], 
	["Land_BagFence_Round_F",[-7.04395,1.43848,-0.00130081],109.19,1,0,[0,-0],"","",false,false], 
	["Land_BagFence_Round_F",[-1.03418,7.82422,-0.00130081],140.294,1,0,[0,-0],"","",false,false], 
	["Land_BagFence_Round_F",[7.09668,5.36914,-0.00126648],258.512,1,0,[0,0],"","",false,false], 
	["Land_BagFence_Round_F",[-5.48828,-7.26172,-0.0027256],22.7683,1,0,[0.10028,-0.041003],"","",false,false], 
	["Land_TentA_F",[-8.39355,-3.57617,-9.53674e-006],169.946,1,0,[-0.0620451,0.0888127],"","",false,false], 
	["Land_TentA_F",[4.21387,8.16699,-1.71661e-005],96.0938,1,0,[0.0680524,0.084298],"","",false,false]
]
] call BIS_fnc_ObjectsMapper;