/*
Charge phone to 200
*/
if(KWEFookxWQOk < 450) exitWith { titleText["STORE CLERK: Not enough money, I need $450.","PLAIN"]; };

if(life_battery > 199) exitWith { titleText["STORE CLERK: Already charged.","PLAIN"]; };

titleText["STORE CLERK: Okay, let me charge that for you.","PLAIN"];
sleep 3;
life_battery = 200;
_price = 450;

if(life_karma > 100) then {
		titleText["You have received a 10% discount due to good Reputation.","PLAIN"];
	_price = _price * 0.9;
	KWEFookxWQOk = KWEFookxWQOk - _price;	
} else {
	KWEFookxWQOk = KWEFookxWQOk - _price;	
};


playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];
titleText["Charged, Thank You - Come Again!","PLAIN"];