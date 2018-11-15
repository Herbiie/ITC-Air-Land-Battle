params ["_unit"];

private _group = group _unit;
private _leader = leader _group;

while {true} do {
	sleep 5;
	private _leader = leader _group;
	if ({(_leader knowsAbout _x >= 1.5) && (side _x == east)} count allUnits > 0) then {
	sleep 5;
	[_leader] call H_fnc_sendContactReport;
	};	
};