params ["_class","_cost","_pos"];
private _vehicle = [_class,_cost,getMarkerPos "carspawn"] call H_fnc_placeVehicle;
[_vehicle,_pos] call H_fnc_heliTransport;