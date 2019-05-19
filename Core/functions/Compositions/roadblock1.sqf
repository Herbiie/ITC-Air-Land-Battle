params ["_position"];

private _spawn = [_position, 0,

/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14852.4, 16556.8]
Area size: 20
Using orientation of objects: yes
*/

[
	["Land_IronPipes_F",[5.8291,2.21289,0],230.56,1,0,[0,0],"","",false,false], 
	["Flag_Syndikat_F",[-3.46289,2.69727,0.000522614],0,1,0,[0,0],"","",false,false], 
	["Land_Wreck_Car_F",[-1.23633,6.44336,0.0012455],229.444,1,0,[-0.0562376,0.048126],"","",false,false], 
	["Land_Wreck_Truck_dropside_F",[-6.87695,1.75195,0.00030899],49.694,1,0,[-0.0478805,-0.0564468],"","",false,false], 
	["Land_Wreck_Van_F",[5.98047,-4.10547,0],225.359,1,0,[0,0],"","",false,false], 
	["Land_IronPipes_F",[-6.28906,-3.99023,0.000347137],230.56,1,0,[-0.0571642,0.0470216],"","",false,false], 
	["Land_Wreck_Car2_F",[1.54492,-8.83984,0],40.1371,1,0,[0,0],"","",false,false]
]

] call BIS_fnc_ObjectsMapper;