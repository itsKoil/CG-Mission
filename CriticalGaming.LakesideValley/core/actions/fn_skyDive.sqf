#include <macro.h>
/*
	File: fn_skyDive.sqf
	
	Description:
	Catch the plane to los diablos airfield.
*/
private ["_num","_color","_backpackName","_backpackItems","_x","_myposy","_timer"];


_myposy = getPos player;


if(KWEFookxWQOk < 5000) exitWith { titleText["FLY GUY: Not enough money, I need $5000.","PLAIN"]; };


if(life_action_inUse) exitWith {

};	

if((player getVariable "tied")) exitWith {

};		
if((player getVariable "restrained")) exitWith {

};

life_action_inUse = true;
_timer=45;
while {_timer > 0} do {
		hintsilent format ["%1 seconds til take off...",_timer];
		sleep 1;
		_timer = _timer - 1;
};

if( player distance _myposy > 3 ) exitwith { life_action_inUse = false; };

if(KWEFookxWQOk < 5000) exitWith { titleText["FLY GUY: Not enough money, I need $5000.","PLAIN"]; life_action_inUse = false;};

if((player getVariable "tied")) exitWith {
life_action_inUse = false;
};		
if((player getVariable "restrained")) exitWith {
life_action_inUse = false;
};

_price = 5000;

if(life_karma > 100) then {
	titleText["You have received a 10% discount due to good Reputation.","PLAIN"];
	_price = _price * 0.9;
	KWEFookxWQOk = KWEFookxWQOk - _price;	
} else {
	KWEFookxWQOk = KWEFookxWQOk - _price;	
};

_backpackName = backpack player;
_backpackItems = backpackItems player;
sleep 1;

player unassignItem _backpackName;
player removeItem _backpackName;

removeBackpack player;
player addBackpack "B_Parachute"; 

player setPos [getMarkerPos "air_g_8" select 0, getMarkerPos "air_g_8" select 1, 600];

sleep 2;

waitUntil {(vehicle player != player)};	
	

	_num = floor(random 7);

	_color = switch (_num) do {
		case 0: {"SmokeShell";};
		case 1: {"SmokeShellGreen";};
		case 2: {"SmokeShellRed";};
		case 3: {"SmokeShellBlue";};
		case 4: {"SmokeShellOrange";};
		case 5: {"SmokeShellOrange";};
		case 6: {"SmokeShellPurple";};
		case 7: {"SmokeShell";};
	};

	_smoke = _color createVehicle position player;
    _smoke attachTo [vehicle player, [0,-0.1,1.5]];

waitUntil {isTouchingGround player};
	sleep 1;
	
	removeBackpack player;
	sleep 1;
	
	player addBackpack _backpackName;
	hint "You have landed, you can now get a free taxi from the NPC.";
	clearBackpackCargo player;
	{
		[_x,true,true] call life_fnc_handleItem;
	} foreach _backpackItems;


life_action_inUse = false; 

life_koil_parachute = 2;

sleep 300;

life_koil_parachute = 1;