params ["_position"];

private _spawn = [_position, 0,

/*
Grab data:
Mission: Compositions
World: Altis
Anchor position: [14712.4, 16413.7]
Area size: 20
Using orientation of objects: yes
*/

[
	["Land_Wreck_Skodovka_F",[-2.93359,1.61133,0.00288582],50.7618,1,0,[0,0],"","",true,false], 
	["Land_Wreck_Car3_F",[2.94922,-1.56445,0],38.3478,1,0,[0,0],"","",true,false], 
	["Land_WoodPile_large_F",[-2.51367,-2.55273,0.0232067],139.358,1,0,[0,-0],"","",true,false], 
	["Land_WoodPile_large_F",[3.35938,3.25977,0.0232067],139.358,1,0,[0,-0],"","",true,false], 
	["Campfire_burning_F",[-4.51074,2.67578,0.0299988],0,1,0,[0,0],"","",true,false], 
	["Land_PaperBox_01_open_boxes_F",[-3.46777,5.16602,0.000930786],359.999,1,0,[9.24749e-005,-0.000133345],"","",true,false]
]

] call BIS_fnc_ObjectsMapper;