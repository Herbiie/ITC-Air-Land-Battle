[20, false] call H_fnc_deploypoints;
private _crate = "Land_PaperBox_open_full_F" createVehicle getMarkerPos "supplyspawn";
[_crate, 1] call ace_cargo_fnc_setSize;
[_crate, true, [0, 1.5, 0.3]] call ace_dragging_fnc_setCarryable;

[_crate, ["Resupply Crate", {
	private _target = _this select 0;
	private _box = nearestObject [_target, "B_supplyCrate_F"];
	if (_target distance _box > 10) then {
		hint "There are no supply crates in range.";
	} else {
		[_box] call H_fnc_supplyBox;
		deleteVehicle _target;
	};
}]] remoteExec ["addAction",0];
