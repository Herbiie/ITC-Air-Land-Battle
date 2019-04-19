params ["_base"];
private _adjective = selectRandom ["Husky","Icy","Aboriginal","Troubled","Faithful","Weak","Uneven","Jittery","Nimble","Useless","Rotten","Eager","Wanting","Expensive","Roomy","Knotty","Agonising","Odd","Scientific","Repulsive","Magical","Knowledgeable","Toothsome","Chivalrous","Gusty","Steep","Ossified","Next","Thinkable","Sloppy","Honourable","Limping","Material","Hulking","Scarce","Damp","Voracious","Awake","Ahead","Empty","Motionless","Attractive","Dazzling","Unbecoming","Materialistic","Nebulous","Difficult","Graceful","Elastic"];
private _noun = selectRandom ["Cheetah","Mole","Seal","Chimpanzee","Otter","Mongoose","Burro","Aoudad","Antelope","Chameleon","Capybara","Marten","Skunk","Kangaroo","Eagle","Owl","Bull","Bumble Bee","Vicuna","Starfish","Ferret","Polar Bear","Leopard","Monkey","Alpaca","Budgerigar","Grizzly Bear","Lovebird","Salamander","Panda","Yak","Deer","Ocelot","Sheep","Steer","Hog","Parrot","Colt","Elk","Llama","Gazelle","Duckbill Platypus","Pig","Warthog","Rat","Hamster","Bat","Anteater","Groundhog","Mandrill","Coyote"];

private _opname = format ["Operation %1 %2", _adjective, _noun];
private _task = _opname;


	private _pos1 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos1, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos1, [], 20];
	private _nBuilding = _pos1 distance (nearestBuilding _pos1);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20 OR (_pos1 distance getMarkerPos "marker_0" < 500)} do {
    _pos1 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos1, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos1, [], 20];
	private _nBuilding = _pos1 distance (nearestBuilding _pos1);
};

	private _pos2 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos2, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos2, [], 20];
	private _nBuilding = _pos2 distance (nearestBuilding _pos2);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20 OR (_pos2 distance getMarkerPos "marker_0" < 500)} do {
    _pos2 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos2, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos2, [], 20];
	private _nBuilding = _pos2 distance (nearestBuilding _pos2);
};


	private _pos3 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos3, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos3, [], 20];
	private _nBuilding = _pos3 distance (nearestBuilding _pos3);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20 OR (_pos3 distance getMarkerPos "marker_0" < 500)} do {
    _pos3 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos3, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos3, [], 20];
	private _nBuilding = _pos3 distance (nearestBuilding _pos3);
};


	private _pos4 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    private _nearRoad = [_pos4, 50] call BIS_fnc_nearestRoad;
	private _closeObjects = count nearestObjects [_pos4, [], 20];
	private _nBuilding = _pos4 distance (nearestBuilding _pos4);
while {!isNull _nearRoad OR _closeObjects < 12 OR _nBuilding < 20 OR (_pos4 distance getMarkerPos "marker_0" < 500)} do {
    _pos4 = [_base, 300, 1500, 10, 0, 10, 0]  call BIS_fnc_findSafePos;
    _nearRoad = [_pos4, 50] call BIS_fnc_nearestRoad;
	_closeObjects = count nearestObjects [_pos4, [], 20];
	private _nBuilding = _pos4 distance (nearestBuilding _pos4);
};

[west,[_task],["
Situation:<br/>
A prominent insurgent commander has moved into the area in one of the four locations marked. The capture of this commander would be a blow to the insurgency.<br/>
<br/>
Situation Enemy Forces:<br/>
Each outpost will have 6 - 10 insurgents manning defensive positions or carrying out patrols. Insurgents are armed with a mixture of small arms and RPGs. It is not known which location has the commander.<br/>
<br/>
Situation Friendly Forces:<br/>
As per map.<br/>
<br/>
Mission:<br/>
Capture the insurgent commander in order to disrupt the insurgency. The commander will be unarmed and wearing military clothing. Cable ties will be required.<br/>
<br/>
Execution:<br/>
Strike team will insert near objectives and destroy enemy forces at each outpost.<br/>
<br/>
Service Support:<br/>
As per SOPs.<br/>
<br/>
Command and Signals:<br/>
As per SOPs.<br/>
",format ["%1: Capture Insurgent Commander", _opname],"_taskmarker"],objNull,1,2,true] call BIS_fnc_taskCreate;

private _objType1 = selectRandom [H_fnc_hq1,H_fnc_hq2];
private _objType2 = selectRandom [H_fnc_outpost1,H_fnc_outpost2,H_fnc_outpost3,H_fnc_outpost4,H_fnc_depot1,H_fnc_depot2,H_fnc_depot3,H_fnc_accom1,H_fnc_accom2,H_fnc_accom3];
private _objType3 = selectRandom [H_fnc_outpost1,H_fnc_outpost2,H_fnc_outpost3,H_fnc_outpost4,H_fnc_depot1,H_fnc_depot2,H_fnc_depot3,H_fnc_accom1,H_fnc_accom2,H_fnc_accom3];
private _objType4 = selectRandom [H_fnc_outpost1,H_fnc_outpost2,H_fnc_outpost3,H_fnc_outpost4,H_fnc_depot1,H_fnc_depot2,H_fnc_depot3,H_fnc_accom1,H_fnc_accom2,H_fnc_accom3];


[_pos1] call _objType1;
[_pos2] call _objType2;
[_pos3] call _objType3;
[_pos4] call _objType4;

private _marker1 = createMarker [format ["Location%1", random 1000], _pos1];
_marker1 setMarkerType "hd_objective";
_marker1 setMarkerColor "ColorRed";
_marker1 setMarkerText "Insurgent Outpost";
private _marker2 = createMarker [format ["Location%1", random 1000], _pos2];
_marker2 setMarkerType "hd_objective";
_marker2 setMarkerColor "ColorRed";
_marker2 setMarkerText "Insurgent Outpost";
private _marker3 = createMarker [format ["Location%1", random 1000], _pos3];
_marker3 setMarkerType "hd_objective";
_marker3 setMarkerColor "ColorRed";
_marker3 setMarkerText "Insurgent Outpost";
private _marker4 = createMarker [format ["Location%1", random 1000], _pos4];
_marker4 setMarkerType "hd_objective";
_marker4 setMarkerColor "ColorRed";
_marker4 setMarkerText "Insurgent Outpost";

