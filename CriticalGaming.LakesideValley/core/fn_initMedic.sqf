#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/

// TFR Variables API
tf_no_auto_long_range_radio = true; 

TF_terrain_interception_coefficient = 1;


private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};



if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

[] call life_fnc_spawnMenu;
//[] execVM "core\welcomemedic.sqf";
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.


sleep 2;
hint "EMS FREQ: 33.1 / CO FREQ: 33.2 / SO FREQ: 33.3";