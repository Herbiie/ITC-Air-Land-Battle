/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14395.5, 15933]
Area size: 20
Using orientation of objects: yes
*/

params ["_position"];

private _spawn = [_position, 0,[
	["Land_WoodenLog_F",[0.786133,1.54785,1.71661e-005],0.00739725,1,0,[0.00218958,0.00231924],"","",true,false], 
	["Land_Axe_F",[1.13477,1.95117,-0.00335121],17.8447,1,0,[-5.14864e-006,1.26181e-007],"","",true,false], 
	["Land_BagFence_Round_F",[1.80469,-2.75879,-0.00388527],330.979,1,0,[0.0298112,-0.104156],"","",true,false], 
	["Land_BagFence_Round_F",[-3.47266,1.38672,0.000566483],101.92,1,0,[0.0591431,0.090771],"","",true,false], 
	["Campfire_burning_F",[2.5918,2.42871,0.0299988],0,1,0,[0,0],"","",true,false], 
	["Land_TentA_F",[-0.988281,3.61816,0],293.339,1,0,[0,0],"","",true,false], 
	["Land_RattanChair_01_F",[3.80273,1.02148,7.62939e-006],147.654,1,0,[0.000615093,0.000977386],"","",true,false], 
	["Land_TentA_F",[1.28125,6.06836,-1.90735e-006],343.089,1,0,[0.070802,-0.0215257],"","",true,false], 
	["Land_TentA_F",[4.77539,4.66602,-7.62939e-006],41.2245,1,0,[0.108103,-0.00714752],"","",true,false]
]
] call BIS_fnc_ObjectsMapper;