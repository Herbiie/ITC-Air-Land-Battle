params ["_position"];

private _spawn = [_position, 0,

/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14790.4, 16502.2]
Area size: 20
Using orientation of objects: yes
*/

[
	["CamoNet_INDP_open_F",[0.663086,0.326172,0],249.296,1,0,[0,0],"","",true,false], 
	["PortableHelipadLight_01_red_F",[-1.84277,0.443359,-1.90735e-006],359.996,1,0,[-0.000756577,-0.000911525],"","",true,false], 
	["PortableHelipadLight_01_red_F",[-1.29785,1.45117,-0.0383472],339.481,1,0,[-5.03726e-005,115.134],"","",true,false], 
	["PortableHelipadLight_01_red_F",[-0.794922,-1.98438,-1.90735e-006],0.00567281,1,0,[-0.00180041,0.000476375],"","",true,false], 
	["Land_BagFence_Round_F",[-1.91504,2.35156,-0.00130081],106.472,1,0,[0,-0],"","",true,false], 
	["PortableHelipadLight_01_red_F",[-0.22168,-2.7832,-1.14441e-005],359.996,1,0,[-0.000753385,-0.000892446],"","",true,false], 
	["Land_BagFence_Round_F",[-3.05859,-0.0273438,-0.00130081],106.643,1,0,[0,-0],"","",true,false], 
	["Land_BagFence_Round_F",[-1.99512,-2.47656,-0.00130081],22.7226,1,0,[0,0],"","",true,false], 
	["PortableHelipadLight_01_red_F",[0.932617,2.85352,-1.90735e-006],359.996,1,0,[-0.000824686,-0.000859078],"","",true,false], 
	["PortableHelipadLight_01_red_F",[1.8252,2.38672,-1.90735e-006],359.996,1,0,[-0.000756585,-0.000911333],"","",true,false], 
	["PortableHelipadLight_01_red_F",[3.19336,-0.195313,-0.00100136],359.997,1,0,[-0.000751248,-0.000887253],"","",true,false], 
	["Land_BagFence_Round_F",[0.402344,3.67578,-0.00130081],190.392,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[2.84375,2.8125,-0.00130081],197.975,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[-0.0546875,-3.95117,-0.00130081],35.61,1,0,[0,0],"","",true,false], 
	["PortableHelipadLight_01_red_F",[2.52344,-2.76563,-1.14441e-005],359.996,1,0,[-0.000753382,-0.000892594],"","",true,false], 
	["Land_BagFence_Round_F",[4.10645,0.460938,-0.00130081],281.895,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Round_F",[2.60645,-3.74023,-0.00130081],311.69,1,0,[0,0],"","",true,false]
]

] call BIS_fnc_ObjectsMapper;