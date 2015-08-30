/*
File: gather evidence
*/
[[player,"seatbelt"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;

if(!life_seatbelt) then {
	hint "Your seatbelt is ON";
	life_seatbelt = true;
} else {
	hint "Your seatbelt is OFF";
	life_seatbelt = false;
};