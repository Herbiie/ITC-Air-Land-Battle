/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14443, 15981.9]
Area size: 20
Using orientation of objects: yes
*/

params ["_position"];

private _spawn = [_position, 0,[
	["CamoNet_BLUFOR_open_F",[-2.4082,-0.6875,0.000612259],355.213,1,0,[-0.0699573,0.082724],"","",false,false], 
	["Land_TentA_F",[2.02539,-2.23145,1.33514e-005],150.014,1,0,[0.0280782,-0.104637],"","",false,false], 
	["Land_BagFence_Round_F",[0.0830078,3.86914,-0.00356865],175.214,1,0,[0.0699593,-0.0827223],"","",false,false], 
	["Land_BagFence_Round_F",[3.88867,2.53809,-0.00174904],226.096,1,0,[0.108319,0.00208495],"","",false,false], 
	["Land_TentA_F",[-5.46582,0.273438,0],172.966,1,0,[0,-0],"","",false,false], 
	["Land_BagFence_Round_F",[5.7168,-1.80273,-0.000614166],251.374,1,0,[0.0970557,0.0481402],"","",false,false], 
	["Land_BagFence_Round_F",[1.26855,-5.91113,0.0021019],317.061,1,0,[-0.00391005,0.108268],"","",false,false], 
	["Land_BagFence_Round_F",[-1.42871,-5.8877,-0.00130081],38.4359,1,0,[0,0],"","",false,false], 
	["Land_BagFence_Round_F",[4.58496,-4.25195,0.00128365],332.749,1,0,[-0.0330402,0.103178],"","",false,false], 
	["Land_BagFence_Round_F",[-5.04395,3.99121,-0.00351334],177.447,1,0,[0.0731289,-0.0799341],"","",false,false], 
	["Land_BagFence_Round_F",[-3.44434,-5.36816,-0.00130081],313.696,1,0,[0,0],"","",false,false], 
	["Land_BagFence_Round_F",[-6.13867,-5.50391,-0.00130081],35.0707,1,0,[0,0],"","",false,false], 
	["Land_BagFence_Round_F",[-8.69238,1.7373,-0.00129128],109.212,1,0,[0,-0],"","",false,false], 
	["Land_BagFence_Round_F",[-8.70313,-2.52539,-0.00130081],76.914,1,0,[0,0],"","",false,false]
]
] call BIS_fnc_ObjectsMapper;