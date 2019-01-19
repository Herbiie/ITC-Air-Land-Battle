private _allyness = score player;

if (_allyness < 25) then {
	hint format ["%1 Allyness Remaining. You're one of the least cool soldiers in theatre.", _allyness];
};
if ((_allyness >= 25) && (_allyness < 50)) then {
	hint format ["%1 Allyness Remaining. You're not cool, but then again, not uncool either.", _allyness];
};
if ((_allyness >= 50) && (_allyness < 75)) then {
	hint format ["%1 Allyness Remaining. There's nothing to fault, but nothing to distinguish either.", _allyness];
};
if ((_allyness >= 75) && (_allyness < 100)) then {
	hint format ["%1 Allyness Remaining. Getting there, like a grenade pin on a zip.", _allyness];
};
if ((_allyness >= 100) && (_allyness < 150)) then {
	hint format ["%1 Allyness Remaining. Doing well, like a scrimmed up helmet.", _allyness];
};
if ((_allyness >= 150) && (_allyness < 200)) then {
	hint format ["%1 Allyness Remaining. Have you sprayed your body armour? Did you use your laundry bag?", _allyness];
};
if ((_allyness >= 200) && (_allyness < 250)) then {
	hint format ["%1 Allyness Remaining. Pretty cool man, totally not a dick.", _allyness];
};
if ((_allyness >= 250) && (_allyness < 300)) then {
	hint format ["%1 Allyness Remaining. Doing well - practically one of THEM.", _allyness];
};
if (_allyness >= 300) then {
	hint format ["%1 Allyness Remaining. You as ally as a guy in T-shirt and shorts firing a gimpy.", _allyness];
};