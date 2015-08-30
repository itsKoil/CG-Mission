/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];

life_antispamactive = true;
//Temp fail safe.
[] spawn {
	sleep 0.5;
	life_antispamactive = false;
};


_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

_myposy = getPos player;




_degrees = getDir player; 
_degreesu = getDir _unit;
_totald = _degrees - _degreesu;

if(_totald >= -90 && _totald < 1 || _totald <= 90 && _totald > -1 || _totald >= 270 || _totald <= -270 || (animationState _unit) == "Incapacitated" || (animationState _unit) == "AinjPfalMstpSnonWnonDf_carried_fallwc" ) then {
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	[[player,"handcuff"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;	
	_unit setVariable["restrained",true,true];
	_unit setVariable["restrained2",true,true];
	[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
} else {
	hint "You must be behind your target to restrain them.";	
};