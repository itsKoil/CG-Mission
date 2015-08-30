_price = 12500;
if(life_sickness) exitWith { hint "You are currently too sick to do this."; };
if(life_karma > 0) then {
	titleText["You have received a 50% discount due to your outstanding Reputation.","PLAIN"];
	_price = _price * 0.5;
};

if(KWEFookxWQOk < _price) exitWith {
	hint "You need $12500 or $7250 with positive rep to taste these bronuts.";
};

KWEFookxWQOk = KWEFookxWQOk - _price;	
_chance = round (random 100);

titleText["This bronut was heavy on sugar! It appears your aim is easier to control for 90 minutes.","PLAIN"];

life_bro = 0;
sleep 1;
life_bro = 5400;
player setUnitRecoilCoefficient 2;
while{life_bro > 0} do {
	life_bro = life_bro - 1;
	sleep 1;
};
hint "Your bronuts have run out";
player setUnitRecoilCoefficient 2.8;