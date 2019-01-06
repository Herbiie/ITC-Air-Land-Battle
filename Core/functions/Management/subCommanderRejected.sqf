params ["_applicantID"];
private _profileID = getPlayerUID player;

if (_profileID == _applicantID) then {
	hint "The commander has rejected your application.";
};