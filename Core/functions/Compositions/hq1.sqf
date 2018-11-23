params ["_position"];

private _spawn = [_position, 0,

/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [15025.7, 16580.8]
Area size: 40
Using orientation of objects: yes
*/

[
	["CamoNet_BLUFOR_open_F",[0.46582,-0.6875,0],130.934,1,0,[0,-0],"","",true,false], 
	["Land_TentA_F",[2.30176,3.56836,0],182.09,1,0,[0,0],"","",true,false], 
	["Land_TentA_F",[2.07031,-4.00586,0],62.9971,1,0,[0,0],"","",true,false], 
	["Land_TentA_F",[-4.77539,-0.392578,0],132.084,1,0,[0,-0],"","",true,false], 
	["Campfire_burning_F",[-2.26074,4.28516,0.0299988],0,1,0,[0,0],"","",true,false], 
	["Land_Ammobox_rounds_F",[-5.16699,3.39063,-0.000177383],0.0031905,1,0,[-0.00126932,-0.0596945],"","",true,false], 
	["Land_Ammobox_rounds_F",[-5.3623,3.14453,-0.000177383],0.0031905,1,0,[-0.00126932,-0.0596945],"","",true,false], 
	["Land_Map_unfolded_Altis_F",[-4.29395,4.63672,-9.53674e-006],46.1388,1,0,[7.68389e-005,6.55875e-005],"","",true,false], 
	["Land_Ammobox_rounds_F",[-5.65527,2.89648,-0.000177383],0.0031905,1,0,[-0.0012693,-0.0596934],"","",true,false], 
	["Land_TentA_F",[6.18457,-4.67188,0],336.284,1,0,[0,0],"","",true,false], 
	["Land_TentA_F",[-0.430664,8.15625,0],227.783,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-7.55469,-3.79688,-0.000999451],47.3305,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-3.55469,-8.04883,-0.000999451],47.3305,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[6.60645,5.92188,-0.000999451],227.512,1,0,[0,0],"","",true,false], 
	["Land_TentA_F",[8.79688,-1.96289,0],297.111,1,0,[0,0],"","",true,false], 
	["CamoNet_BLUFOR_F",[6.90137,-6.33398,0.00177574],133.473,1,0,[0.527192,-0.320713],"","",true,false], 
	["Land_BagFence_Long_F",[4.5293,8.04883,-0.000999451],227.512,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-9.53711,-1.69336,-0.000999451],47.3305,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-1.4707,-10.1699,-0.000999451],47.3305,1,0,[0,0],"","",true,false], 
	["Box_Syndicate_Ammo_F",[-9.15527,4.75586,-1.14441e-005],313.214,1,0,[-0.000160662,-3.89769e-005],"","",true,false], 
	["Land_BagFence_Long_F",[2.55176,10.1582,-0.000999451],227.512,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-5.85352,8.81445,-0.000999451],316.537,1,0,[0,0],"","",true,false], 
	["Box_Syndicate_Ammo_F",[-9.9873,3.81836,-1.14441e-005],313.214,1,0,[-0.000160636,-3.87046e-005],"","",true,false], 
	["Land_BagFence_Long_F",[10.5928,1.65625,-0.000999451],227.512,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-9.8291,4.55078,-0.00122261],316.537,1,0,[0,0],"","",true,false], 
	["Box_Syndicate_Wps_F",[-10.8389,2.72266,-1.14441e-005],137.891,1,0,[2.03156e-005,5.28499e-005],"","",true,false], 
	["Land_BagFence_Long_F",[-3.76172,10.9277,-0.000999451],316.537,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[0.512695,-12.2734,-0.000999451],47.3305,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-12.126,2.74414,-0.000999451],316.537,1,0,[0,0],"","",true,false], 
	["Land_BagBunker_Small_F",[-12.8779,-0.728516,0],44.865,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[12.5684,-0.455078,-0.000999451],227.512,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[-1.68555,12.9395,-0.000999451],316.537,1,0,[0,0],"","",true,false], 
	["Land_BagBunker_Small_F",[1.7002,13.668,0],223.524,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[10.8975,-8.65039,-0.000999451],316.537,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[6.70117,-12.709,-0.000999451],316.537,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[12.9893,-6.53711,-0.000999451],316.537,1,0,[0,0],"","",true,false], 
	["Land_BagBunker_Small_F",[1.24121,-15.5273,0],44.865,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[4.625,-14.7207,-0.000999451],316.537,1,0,[0,0],"","",true,false], 
	["Land_BagBunker_Small_F",[15.7803,-1.24805,0],223.524,1,0,[0,0],"","",true,false], 
	["Land_BagFence_Long_F",[15.0654,-4.52539,-0.000999451],316.537,1,0,[0,0],"","",true,false]
]

] call BIS_fnc_ObjectsMapper;