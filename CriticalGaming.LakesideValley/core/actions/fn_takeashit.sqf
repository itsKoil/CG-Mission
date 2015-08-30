// Take a shit


_currentuniform = Uniform player;
disableUserInput true;
life_action_inUse = true;

sleep 2;
[[player,"fart4"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
sleep 4;
[[player,"fart5"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;

life_dirt = life_dirt + 10;
life_poop = 0;
if(_currentuniform isEqualTo "") then {

} else {
	hint "You just went to the toilet with your clothes on... you feel disgusting.";
	life_dirt = 100;
	life_poop = 50;
	player setfatigue 1;	
};
life_action_inUse = false;
disableUserInput false;
