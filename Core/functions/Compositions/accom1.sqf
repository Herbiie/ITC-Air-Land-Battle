params ["_position"];

private _spawn = [_position, 0,

/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14757.3, 16463.5]
Area size: 20
Using orientation of objects: yes
*/

[
	["Land_Slum_House03_F",[5.40137,-1.76563,0],91.5803,1,0,[0,-0],"","",true,false], 
	["Land_Slum_House02_F",[-2.42969,5.38477,0],235.72,1,0,[0,0],"","",true,false], 
	["Land_Slum_House01_F",[-3.05078,-5.38867,0],27.2876,1,0,[0,0],"","",true,false], 
	["Land_cargo_addon02_V2_F",[9.40039,-1.00586,0],269.827,1,0,[0,0],"","",true,false], 
	["Land_BagBunker_Small_F",[-11.1553,-0.416016,0],99.5264,1,0,[0,-0],"","",true,false], 
	["Land_BagBunker_Small_F",[7.23926,9.22461,0],234.286,1,0,[0,0],"","",true,false], 
	["Land_BagBunker_Small_F",[2.18066,-13.8359,0],339.765,1,0,[0,0],"","",true,false]
]

] call BIS_fnc_ObjectsMapper;