params ["_position"];
_closestLoc = nil;
	{
	   if(isNil "_closestLoc" || {(_position distance (_x # 1)) < (_position distance (_closestLoc # 1))}) then {_closestLoc = _x};
	} forEach (missionNameSpace getVariable "H_alb_locations");
_closestLoc