params ["_amount","_add"];

if (_add) then {
	deploypoints = deploypoints + _amount;
} else {
	deploypoints = deploypoints - _amount;
};

publicVariable "deploypoints";