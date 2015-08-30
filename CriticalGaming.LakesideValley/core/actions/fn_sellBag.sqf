/*
	File: sell bag of cash.
*/

if (typeOf _x == "Land_Sleeping_bag_blue_folded_F") then {
detach _x;
deletevehicle _x;
_money = 100000;
KWEFookxWQOk = KWEFookxWQOk + _money;
if (side player == civilian) then {
[format ["You swapped the stolen cash and received %1",_money],30,"green"] call A3L_Fnc_Msg;
life_karma = life_karma - 50;
[7] call SOCK_fnc_updatePartial;
};
_money = 25000;
if (side player == west) then {
[format ["You recovered a bag of cash and received %1",_money],30,"green"] call A3L_Fnc_Msg;
};		
};	

if (typeOf _x == "Land_Screwdriver_V1_F") then {
if (side player == west) then {
detach _x;
deletevehicle _x;
_money = 10000;
KWEFookxWQOk = KWEFookxWQOk + _money;
[format ["You swapped the shank and received %1",_money],30,"green"] call A3L_Fnc_Msg;
};		
};	


if (typeOf _x == "Land_ExtensionCord_F") then {
if (side player == west) then {
detach _x;
deletevehicle _x;
_money = 10000;
KWEFookxWQOk = KWEFookxWQOk + _money;
[format ["You swapped the tie rope and received %1",_money],30,"green"] call A3L_Fnc_Msg;
};		
};	

