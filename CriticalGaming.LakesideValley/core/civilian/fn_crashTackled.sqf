/*
	File: fn_crashtackled.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts and monitors the knocked out state.
*/
private["_target","_who","_obj"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_who = [_this,1,"",[""]] call BIS_fnc_param;
if(isNull _target) exitWith {};
if(_target != player) exitWith {};
if(_who == "") exitWith {};

titleText["You have been crash tackled.","PLAIN"];
titleFadeOut 3;

player playMoveNow "Incapacitated";
_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
_obj setPosATL (getPosATL player);
player attachTo [_obj,[0,0,0]];
[] call life_fnc_stage3pain;



if(!(player getVariable["restrained",false]) && !(player getVariable["tied",false])) then {
	player playMoveNow "amovppnemstpsraswrfldnon";
};




detach player;
deleteVehicle _obj;
player setVariable["robbed",FALSE,TRUE];