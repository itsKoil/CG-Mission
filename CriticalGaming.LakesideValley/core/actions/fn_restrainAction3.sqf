/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];


	[[player,"handcuff"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;	
	player setVariable["restrained",true,true];
	player setVariable["restrained2",true,true];
	[[player], "life_fnc_restrain", player, false] spawn life_fnc_MP;
