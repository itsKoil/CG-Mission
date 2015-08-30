/*
	File: fn_knockoutAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Knocks out the target.
*/
private["_target"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;


life_antispamactive = true;
//Temp fail safe.
[] spawn {
	sleep 0.5;
	life_antispamactive = false;
};



if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};
if(player distance _target > 4) exitWith {};
life_knockout = true;
[[player,"AwopPercMstpSgthWrflDnon_End2"],"life_fnc_animSync",nil,false] call life_fnc_MP;
sleep 0.08;
[[player,"punch2"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;	
[[_target,profileName],"life_fnc_knockedOut",_target,false] call life_fnc_MP;

sleep 3;
life_knockout = false;