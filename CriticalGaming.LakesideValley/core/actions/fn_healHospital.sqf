/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Doesn't matter, will be revised later.
*/



if(KWEFookxWQOk < 10) exitWith {hint format[localize "STR_NOTF_HS_NoCash",1000];};
titleText[localize "STR_NOTF_HS_Healing","PLAIN"];
sleep 8;
if(player distance (_this select 0) > 5) exitWith {titleText[localize "STR_NOTF_HS_ToFar","PLAIN"]};
titleText[localize "STR_NOTF_HS_Healed","PLAIN"];
player setdamage 0;



_price = 100;

if(life_karma > 1000) then {
	hint "You have received a 75% discount due to good Reputation.";
	_price = _price * 0.75;
	KWEFookxWQOk = KWEFookxWQOk - _price;	
} else {
	KWEFookxWQOk = KWEFookxWQOk - _price;	
};

if(life_sickness) then { 
	hint "You can only heal to 80%.";
	player setdamage 0.2;
};

player setVariable ["bleedingon",1,true]; 
player setVariable ["woundedon",1,true]; 
player setVariable ["fractureon",1,true]; 
player setVariable ["unconciouson",1,true]; 
player setVariable ["diseaseon",1,true];