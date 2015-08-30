#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/

// TFR Variables API
tf_no_auto_long_range_radio = true; 

TF_terrain_interception_coefficient = 1;

private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};


if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 35;
};

//if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then { };




player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
//[] execVM "core\welcomecop.sqf";
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

//player setVariable ["tf_sendingDistanceMultiplicator", 1, true];
//player setVariable ["tf_receivingDistanceMultiplicator", 1, true];
player setUnitRecoilCoefficient 2.8;
sleep 2;
hint "EMS FREQ: 33.1 / CO FREQ: 33.2 / SO FREQ: 33.3";