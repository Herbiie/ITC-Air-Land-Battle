params ["_command"];
_command addAction ["Create PB","[] call H_fnc_newPB",nil,1.5,true,true,"","true",5];
_command addAction ["Create FOB","[] call H_fnc_newFOB",nil,1.5,true,true,"","true",5];
_command addAction ["Close Down Base","[] call H_fnc_closeBase",nil,1.5,true,true,"","true",5];