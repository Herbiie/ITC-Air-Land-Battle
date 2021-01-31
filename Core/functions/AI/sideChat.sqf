params ["_unit","_text"];
_unit sideChat _text;
private _time = dayTime;
private _time24 = [_time,"HH:MM"] call BIS_fnc_timeToString;
private _callsign = groupID (group _unit);
private _logTitle = format ["%1 - %2",_callsign,_time24];
player createDiaryRecord ["radioLog",[_logTitle,_text]];