if (vehicle player != player) then {
	player action ["Eject",vehicle player];
	waitUntil {vehicle player == player};
};
titleText ["Returning to Theatre HQ...","BLACK",2];
sleep 2;
player setPos getMarkerPos "hqmarker";
titleFadeOut 2;