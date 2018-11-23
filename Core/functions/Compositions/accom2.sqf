params ["_position"];

private _spawn = [_position, 0,

/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14672.6, 16369.3]
Area size: 20
Using orientation of objects: yes
*/

[
	["Land_cargo_house_slum_F",[-4.30762,-4.32617,0],330.333,1,0,[0,0],"","",true,false], 
	["Land_Slum_House03_F",[3.44238,3.4707,0],63.4235,1,0,[0,0],"","",true,false], 
	["Land_Slum_House01_F",[-4.71582,1.56641,0],147.89,1,0,[0,-0],"","",true,false], 
	["Land_Slum_01_F",[4.35645,-6.70215,0],146.838,1,0,[0,-0],"","",true,false], 
	["Land_BagBunker_Small_F",[-2.09375,10.5381,0],153.278,1,0,[0,-0],"","",true,false], 
	["Land_BagBunker_Small_F",[-4.11816,-11.9766,0],57.1339,1,0,[0,0],"","",true,false]
]

] call BIS_fnc_ObjectsMapper;