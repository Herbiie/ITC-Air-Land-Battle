params ["_amount","_add"];

if (_add) then {
	H_alb_deploypoints = H_alb_deploypoints + _amount;
} else {
	H_alb_deploypoints = H_alb_deploypoints - _amount;
};

publicVariable "H_alb_deploypoints";