/*
File: shovelwork.sqf
koils a dick head
*/
private["_sum","_veh"];

titleText["Lets do some yard work! (Don't Move for 30 Seconds!)","PLAIN"];
titleFadeOut 30;

if (!life_is_arrested) exitwith {
	hint "You are not arrested";
};

if((animationState cursorTarget) != "Incapacitated" && !life_knockout && !life_action_inUse && !(player getVariable["restrained",false]) && !(player getVariable["tied",false]) && !life_istazed) then {


_cme = 1;
_myposy = getPos player;
if(!life_action_inUse) then {




while {true} do {
	life_action_inUse = true;
	sleep 5;
	if( player distance _myposy > 1.8 ) exitwith { 
		life_action_inUse = false;
		titleText["You moved to far.","PLAIN"];
	};
	_cme = _cme + 5;

	[[player,"AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;

 		_clkent = 25;
		while{_clkent > 0} do
		{
			sleep 1;
			_clkent = _clkent - 1;
			if(animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon") then {
				player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
			};
		};


	if(_cme > 30) exitwith {
		if(life_bail_amount > 30000) then {
			life_bail_amount = life_bail_amount - 2000;
		};
		life_action_inUse = false;
		life_atmcash = life_atmcash + 500;
		hint format ["You earned $500 - NEW BAIL SET: %1", life_bail_amount];
	};
};




life_action_inUse = false;
};
};