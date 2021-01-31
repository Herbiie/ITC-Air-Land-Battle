params ["_dude"];
private _heli = vehicle _dude;
waitUntil {speed (_heli) < 10};
_heli setSlingLoad objNull;