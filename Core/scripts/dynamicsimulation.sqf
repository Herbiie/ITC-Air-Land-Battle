_distance = "DynamicSimulation" call BIS_fnc_getParamValue;
enableDynamicSimulationSystem true;
"Group" setDynamicSimulationDistance _distance;
"IsMoving" setDynamicSimulationDistanceCoef 3;