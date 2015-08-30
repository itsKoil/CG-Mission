/*
	File: fn_unrestrain.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {}; //Error check?
_unit setVariable["restrained2",FALSE,TRUE];
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];
[[player,"handcuff"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
detach _unit;

//[[0,format[localize "STR_NOTF_Unrestrain",_unit getVariable["realname",name _unit], profileName]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;