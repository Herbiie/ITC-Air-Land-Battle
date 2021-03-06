/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14495.7, 16037.8]
Area size: 20
Using orientation of objects: yes
*/

params ["_position"];

private _spawn = [_position, 0,[
	["Campfire_burning_F",[1.61816,1.72559,0.0339508],0,1,0,[0.151948,-0.151952],"","",false,false], 
	["Land_Ground_sheet_khaki_F",[1.96484,-1.38379,1.90735e-006],145.732,1,0,[-0.082433,0.148873],"","",false,false], 
	["Land_TentA_F",[-3.11035,1.80176,6.10352e-005],281.061,1,0,[-0.610454,0.0901317],"","",false,false], 
	["Land_TentA_F",[1.00391,4.6416,-2.67029e-005],80.0552,1,0,[0.17591,0.123423],"","",false,false], 
	["Land_Garbage_square5_F",[-3.36133,-3.47852,0.000484467],0,1,0,[0.151948,-0.076617],"","",false,false], 
	["Land_Garbage_square3_F",[4.24121,3.51953,0.000923157],0,1,0,[0.151948,-0.076617],"","",false,false], 
	["Land_GarbageBarrel_01_english_F",[2.16211,-5.02637,-0.00600052],78.2115,1,0,[0.556331,0.957822],"","",false,false], 
	["Land_WoodPile_F",[6.00391,-0.308594,0.000436783],176.038,1,0,[-0.146292,0.0869314],"","",false,false], 
	["Land_BagFence_Round_F",[-3.56543,5.69043,0.0026722],140.294,1,0,[0.0381437,0.165835],"","",false,false], 
	["Land_BagFence_Round_F",[-6.71973,0.286133,0.0010643],109.19,1,0,[0.11833,0.122288],"","",false,false], 
	["Land_BagFence_Round_F",[6.29395,-3.02734,-0.00521851],290.612,1,0,[-0.0182222,-0.169193],"","",false,false], 
	["Land_TentA_F",[-1.5332,-7.14551,0.015377],0,1,0,[-0.610698,0.0906454],"","",false,false], 
	["Land_BagFence_Round_F",[7.41992,4.21777,-0.00357628],258.512,1,0,[-0.105345,-0.133645],"","",false,false], 
	["Land_TentA_F",[3.08105,7.89551,1.33514e-005],329.561,1,0,[0.0272242,-0.104862],"","",false,false], 
	["Land_TentA_F",[-8.07129,-4.72852,0.0130711],169.946,1,0,[-0.0620451,0.0888127],"","",false,false], 
	["Land_BagFence_Round_F",[-5.16699,-8.41406,-0.000713348],22.7683,1,0,[0.0682355,0.0286391],"","",false,false]
]
] call BIS_fnc_ObjectsMapper;