#include <macro.h>
/*
	File: fn_sellGarage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sells a vehicle from the garage.
*/
private["_vehicle","_vid","_pid","_unit","_price"];

disableSerialization;
if(lbCurSel 2802 == -1) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[2802,(lbCurSel 2802)];
_vehicle = (call compile format["%1",_vehicle]) select 0;
_vid = lbValue[2802,(lbCurSel 2802)];
_pid = getPlayerUID player;
_unit = player;

if(life_dontsell == 0) then {

life_dontsell = 1;
_dist = getpos player;
_cancel = false;
_selling = 15;
while{_selling > 0} do {
	hint "You are selling a vehicle - move 5 metres from here to cancel this action";

	if(_dist distance player > 5) exitwith { 
		hint "Canceled.";
		_cancel = true; 
	};

	sleep 1;
	_selling = _selling - 1;
};

if(!_cancel) then {

if(isNil "_vehicle") exitWith {hint localize "STR_Garage_Selection_Error"};

_price = [_vehicle,__GETC__(life_garage_sell)] call fnc_index;
if(_price == -1 || side player == west) then {_price = 1000;} else {_price = (__GETC__(life_garage_sell) select _price) select 1;};

[[_vid,_pid,_price,player,life_garage_type],"TON_fnc_vehicleDelete",false,false] spawn life_fnc_MP;




life_dontsell = 0;

};

} else {
hint "Please wait before selling another vehicle!";	
};
closeDialog 0;