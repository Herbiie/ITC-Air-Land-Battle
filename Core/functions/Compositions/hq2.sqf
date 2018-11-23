params ["_position"];

private _spawn = [_position, 0,

/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14929.4, 16639.5]
Area size: 30
Using orientation of objects: yes
*/

[
	["CamoNet_BLUFOR_open_F",[1.11426,-0.326172,0],238.224,1,0,[0,0],"","",true,false], 
	["Land_PortableLongRangeRadio_F",[0.554688,1.47266,-0.00198936],355.325,1,0,[0.000243759,0.00684818],"","",true,false], 
	["Land_CampingTable_F",[0.489258,1.72656,-0.003582],230.778,1,0,[0.000398963,-2.13372e-005],"","",true,false], 
	["Land_BagFence_Long_F",[0.808594,2.45508,-0.000999451],47.3562,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[2.66113,2.04297,-0.000999451],314.054,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[0.0439453,-3.77344,-0.000999451],138.171,1,0,[0,-0],"","",true,false], 
	["Land_MapBoard_F",[-4.03809,1.78125,-0.00222588],285.787,1,0,[-0.327661,-0.000186299],"","",true,false], 
	["Land_BagFence_Long_F",[1.86133,-4.31641,-0.000999451],231.474,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-1.19922,4.64063,-0.000999451],47.3562,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-5.32129,2.15625,-0.000999451],314.054,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[3.70703,-6.64063,-0.000999451],231.474,1,0,[0,0],"","",true,false], 
	["Land_BagBunker_Large_F",[-7.3252,-4.68164,0],47.5004,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[5.83105,-6.46289,-0.000999451],138.171,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_Long_F",[7.99707,-4.45898,-0.000999451],138.171,1,0,[0,-0],"","",true,false], 
	["Land_BagBunker_Large_F",[9.91602,2.47461,0],226.041,1,0,[0,0],"","",true,false]
]

] call BIS_fnc_ObjectsMapper;