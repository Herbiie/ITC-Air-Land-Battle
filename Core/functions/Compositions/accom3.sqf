params ["_position"];

private _spawn = [_position, 0,

/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14632.6, 16329]
Area size: 30
Using orientation of objects: yes
*/

[
	["Land_Slum_05_F",[-4.03223,0.462891,0],0,1,0,[0,0],"","",false,false], 
	["Land_Slum_01_F",[7.46973,5.48438,0],275.211,1,0,[0,0],"","",false,false], 
	["Land_Slum_House02_F",[5.31934,-7.07813,0],0,1,0,[0,0],"","",false,false], 
	["Land_Slum_House03_ruins_F",[-5.33398,-8.94336,0],6.35841,1,0,[0,0],"","",false,false], 
	["Land_BagBunker_Small_F",[12.3008,-6.85059,0],271.89,1,0,[0,0],"","",false,false], 
	["Land_BagBunker_Small_F",[-14.8018,0.351563,0],94.7773,1,0,[0,-0],"","",false,false], 
	["Land_BagBunker_Small_F",[14.3496,5.50781,0.000717163],271.89,1,0,[-0.0740485,-0.0790829],"","",false,false]
]

] call BIS_fnc_ObjectsMapper;