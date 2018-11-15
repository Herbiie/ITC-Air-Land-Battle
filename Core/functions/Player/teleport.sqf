params ["_unit"];

_leader = leader _unit;

if (vehicle _leader == _leader) then
        {
        
        //Getting the coords

        _X = (getpos _leader select 0) +
                        (3*sin ((getDir _leader) -180));
        _Y = (getpos _leader select 1) +
                        (3*cos ((getDir _leader) -180));
        _Z = (getpos _leader select 2);
        
        _unit setpos [_X,_Y,_Z];
        [_unit,1,["ACE_SelfActions","Teleport"]] call ace_interact_menu_fnc_removeActionFromObject;
        };
		
if ((vehicle _leader != _leader) && ((vehicle _leader) emptyPositions "cargo"==0)) then
			{hint "No room in squad leader's vehicle."};
        
if ((vehicle _leader != _leader) && ((vehicle _leader) emptyPositions "cargo">0)) then		
        {
        _unit moveincargo vehicle _leader;
        [_unit,1,["ACE_SelfActions","Teleport"]] call ace_interact_menu_fnc_removeActionFromObject;
        };
        