params ["_co","_fob"];

[_co, 0, ["ACE_MainActions"],H_action_returnToTheatreHQ] call ace_interact_menu_fnc_addActionToObject;

[_co, 0, ["ACE_MainActions"],H_action_requestSideMission] call ace_interact_menu_fnc_addActionToObject;

[_co, 0, ["ACE_MainActions"],H_action_purchaseItems] call ace_interact_menu_fnc_addActionToObject;

if (_fob) then {
	[_co, 0, ["ACE_MainActions"],H_action_requestOp] call ace_interact_menu_fnc_addActionToObject;
};

[_co, 0, ["ACE_MainActions"],H_action_supplyHeliBase] call ace_interact_menu_fnc_addActionToObject;
[_co, 0, ["ACE_MainActions","supplyHeliBase"],H_action_checkSupplyHeli] call ace_interact_menu_fnc_addActionToObject;
[_co, 0, ["ACE_MainActions","supplyHeliBase"],H_action_requestOldVehicle] call ace_interact_menu_fnc_addActionToObject;
[_co, 0, ["ACE_MainActions","supplyHeliBase"],H_action_requestNewVehicle] call ace_interact_menu_fnc_addActionToObject;
[_co, 0, ["ACE_MainActions","supplyHeliBase"],H_action_requestSupply] call ace_interact_menu_fnc_addActionToObject;

private _vehicles = missionNameSpace getVariable ["H_MT_vehicles",[]];
{
	_x params ["_type","_cost"];
	private _name = getText (configFile >> "CfgVehicles" >> _type >> "displayName");
	private _text = format ["%1 (%2)",_name,_cost];
	private _vehicle = _type createVehicle [0,0,0];
	private _mass = getMass _vehicle;
	deleteVehicle _vehicle;
	private _params = _x;
	_params pushBack _mass;
	private _action = [_name,_text,"",{
		(_this # 2) params ["_class","_cost","_mass"];
		private _pos = position _target;
		if ((missionNameSpace getVariable "H_alb_deploypoints") >= _cost) then {
			[_class, _cost, _pos] remoteExec ["H_fnc_heliNewVehicle",2];		
		} else {
			hint "Not Enough Points";
		};
	},{
		private _heli = [] call H_fnc_getSupplyHeli;
		private _type = typeOf _heli;
		private _slingMax = getNumber (configfile >> "CfgVehicles" >> _type >> "slingLoadMaxCargoMass");
		private _vehMass = (_this # 2) # 2;
		(_vehMass <= _slingMax)
	},{},_params] call ace_interact_menu_fnc_createAction;
	[_co, 0, ["ACE_MainActions","supplyHeliBase","requestNewVehicle"],_action] call ace_interact_menu_fnc_addActionToObject;
} forEach _vehicles;


private _fuelAction = ["fuelResupply","Request Fuel Bladder","",{
	private _pos = position _target;
	if ((missionNameSpace getVariable "H_alb_deploypoints") >= 10) then {
		["FUEL",_pos] remoteExec ["H_fnc_heliSupply",2];		
	} else {
		hint "Not Enough Points";
	};
},{
	private _heli = [] call H_fnc_getSupplyHeli;
	private _type = typeOf _heli;
	private _slingMax = getNumber (configfile >> "CfgVehicles" >> _type >> "slingLoadMaxCargoMass");
	(300 <= _slingMax)
},{}] call ace_interact_menu_fnc_createAction;

[_co, 0, ["ACE_MainActions","supplyHeliBase","requestSupply"],_fuelAction] call ace_interact_menu_fnc_addActionToObject;

private _boxAction = ["boxResupply","Request Crate Resupply","",{
	private _pos = position _target;
	if ((missionNameSpace getVariable "H_alb_deploypoints") >= 20) then {
		["RESUPPLY",_pos] remoteExec ["H_fnc_heliSupply",2];		
	} else {
		hint "Not Enough Points";
	};
},{
	private _heli = [] call H_fnc_getSupplyHeli;
	private _type = typeOf _heli;
	private _slingMax = getNumber (configfile >> "CfgVehicles" >> _type >> "slingLoadMaxCargoMass");
	(1000 <= _slingMax)
},{}] call ace_interact_menu_fnc_createAction;

[_co, 0, ["ACE_MainActions","supplyHeliBase","requestSupply"],_boxAction] call ace_interact_menu_fnc_addActionToObject;

[_co, 0, ["ACE_MainActions","supplyHeliBase"],H_action_newsupplyHeliBase] call ace_interact_menu_fnc_addActionToObject;

private _airVehicles = missionNameSpace getVariable ["H_Air_vehicles",[]];
{
	private _type = _x # 0;
	private _slingCap = getNumber (configfile >> "CfgVehicles" >> _type >> "slingLoadMaxCargoMass");
	if (!(_slingCap>0)) exitWith {};
	private _name = getText (configFile >> "CfgVehicles" >> _type >> "displayName");
	private _cost = _x # 1;
	private _text = format ["%1 (%2)",_name,_cost];
	private _action = [_name,_text,"",{
		(_this # 2) params ["_class","_cost"];		
		if ((missionNameSpace getVariable "H_alb_deploypoints") >= _cost) then {
			[_class,_cost] remoteExec ["H_fnc_newResupplyHeli",2];		
		} else {
			hint "Not Enough Points";
		};		
		},{true},{},[_type,_cost]] call ace_interact_menu_fnc_createAction;
	[_co, 0, ["ACE_MainActions","supplyHeliBase","newsupplyHeliBase"],_action] call ace_interact_menu_fnc_addActionToObject;
} forEach _airVehicles;


