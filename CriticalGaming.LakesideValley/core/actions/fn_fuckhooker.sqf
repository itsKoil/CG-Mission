_price = 2500;
if(life_sickness) exitWith { hint "You are currently too sick to do this."; };
if(KWEFookxWQOk < _price) exitWith {
	hint "You need $2500 to have sex with this prostitute.";
};



if(life_karma < 0) then {
	titleText["You have received a 10% discount due to your kinky Reputation.","PLAIN"];
	_price = _price * 0.9;
	KWEFookxWQOk = KWEFookxWQOk - _price;	
} else {
	KWEFookxWQOk = KWEFookxWQOk - _price;	
};


_chance = round (random 100);

if(life_std == 1) then {
	if(_chance > 99) then {
		player setVariable ["diseaseon",(round (random 7)),true];
		hint "You are feeling quite ill.";
		player setfatigue 1;
		life_thirst = 10;
		life_hunger = 10;
	};
};

if(life_std == 0) then {
	if(_chance > 33) then {
		player setVariable ["diseaseon",(round (random 7)),true];
		hint "You are feeling quite ill.";
		player setfatigue 1;
		life_thirst = 10;
		life_hunger = 10;
	};	
};
titleText["You feel relieved from sex - you can run freely for 90 minutes.","PLAIN"];

life_num = 0;
sleep 1;
life_num = 5400;
player enableFatigue false;
while{life_num > 0} do {
	life_num = life_num - 1;
	sleep 1;
};
hint "Your sex relief has run out";
player enableFatigue true;