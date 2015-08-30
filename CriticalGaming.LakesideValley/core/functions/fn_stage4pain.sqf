//effect for a stage 4 pain hit from hunger / thirst


	life_hungerpain = true;
	_chance = round (random 1000);
	if(_chance < 200) then {
		hint "Your stomach hurts...";
		[[player,"hungry"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
		sleep 3;
	};
	"colorCorrections" ppEffectEnable true;			
	"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.4],  [0, 0, 0, 0.0]]; 
	"colorCorrections" ppEffectCommit 2;
	sleep 2;
	"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
	"colorCorrections" ppEffectCommit 2;
	sleep 2;
	life_hungerpain = false;
