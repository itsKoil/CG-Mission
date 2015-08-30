/*
	File: fn_removeItem2.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/

private["_unit","_val"];
_val = ctrlText 2010;
ctrlShow[2002,false];


if((lbCurSel 2005) == -1) exitWith {hint "You didn't select an item you wanted to drop.";ctrlShow[2002,true];};
_item = lbData [2005,(lbCurSel 2005)];

//A series of checks *ugh*
if(!([_val] call fnc_isnumber)) exitWith {hint "You didn't enter an actual number format.";ctrlShow[2002,true];};
if(parseNumber(_val) <= 0) exitWith {hint "You need to enter an actual amount you want to drop.";ctrlShow[2002,true];};



if(!([false,_item,(parseNumber _val)] call life_fnc_handleInv)) exitWith {hint "Couldn't drop that much of that item, maybe you don't have that amount?";ctrlShow[2002,true];};

_type = [_item,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["You dropped %2 %3",_val,_type];
[] call life_fnc_p_updateMenu;

ctrlShow[2002,true];