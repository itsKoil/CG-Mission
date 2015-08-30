/*
Search Words: 
pizza
*/

if(life_sickness) exitWith { hint "You are currently too sick to do this."; };


if(KWEFookxWQOk < 7500) exitWith { titleText["PIZZA GUY: Not enough money, I need $7500 for this riperino pizza.","PLAIN"]; };

_price = 7500;

if(life_karma > 100) then {
	titleText["You have received a 10% discount due to good Reputation.","PLAIN"];
	_price = _price * 0.9;
	KWEFookxWQOk = KWEFookxWQOk - _price;	
} else {
	KWEFookxWQOk = KWEFookxWQOk - _price;	
};

life_hunger = 100;
life_pizza = 0;
sleep 1.5;
life_pizza = 5400;


titleText["Mmm, Riperino Pizza... you now heal over time for 90 minutes.","PLAIN"];

while {life_pizza > 0} do {
	sleep 1;
	life_pizza = life_pizza - 1;	
};

hint "Riperino Pizza has run out... you no longer heal over time.";

life_pizza = 0;