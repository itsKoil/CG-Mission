/*
	File: fn_buyClothes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buys the current set of clothes and closes out of the shop interface.
*/
private["_price"];
if((lbCurSel 3101) == -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};
_curTarget = cursorTarget;
_price = 0;
{
	if(_x != -1) then
	{
		_price = _price + _x;
	};
} foreach life_clothing_purchase;

if(_price > KWEFookxWQOk) exitWith {titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"];};

if (typeOf _curTarget IN ["critgamin_vangmcc_clothing","critgamin_vangmcc_fedex","critgamin_vangmcc_food","critgamin_vangmcc_general"] && count crew _curTarget != 0) then {
	mobile_payment = _price * 0.7;
	_unit = (driver _curTarget);
 	_price = _price * 0.8;
 	titleText["You have received a 20% discount due to buying on the run.","PLAIN"];
 	_unit setVariable["totalmobile",mobile_payment,true];
};



if(life_karma > 100) then {
	titleText["You have received a 10% discount due to good Reputation.","PLAIN"];
	_price = _price * 0.9;
	KWEFookxWQOk = KWEFookxWQOk - _price;	
} else {
	KWEFookxWQOk = KWEFookxWQOk - _price;	
};

life_clothesPurchased = true;
closeDialog 0;
