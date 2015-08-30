/*
	File: fn_hh.sqf
	The Haunted House
*/

fnc_turnObject = {
        _object = _this select 0;  
        _dir = ((getPos player select 0) - (getPos _object select 0)) atan2 ((getPos player select 1) - (getPos _object select 1));
        _object setDir _dir;
};
 
hint localize "Your body & mind is feeling weak.";

while { life_koil_hh == 1 } do {
	_myrandtimer = 60 + round(random 60); 
	sleep _myrandtimer;
	_mychance = 1 + round(random 99); 
	if(_mychance > 75) then {

	_mysound = round(random 7);

	_angel1 = "A3L_Angel_Idle" createVehicleLocal (player modelToWorld [0,-10,0]);
	[_angel1] call fnc_turnObject;

	if(_mysound == 1) then {
		[[_angel,"hhthunder"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
	};

	if(_mysound == 2) then {
		[[_angel,"hhscreams"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
	};

	if(_mysound == 3) then {
		[[_angel,"hhicanseeyou"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
	};

	if(_mysound == 4) then {
		[[_angel,"hhgrowl"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
	};

	if(_mysound == 5) then {
		[[_angel,"hhecho"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
	};

	if(_mysound == 6) then {
		[[_angel,"hhdie"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
	};

	if(_mysound == 7) then {
		[[_angel,"hhclank"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
	};


	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.9,1,-0.1], [1,1,1,3], [-0.5,0,-1,5]];
	"colorCorrections" ppEffectCommit 1;
	"filmGrain" ppEffectEnable true;
	"filmGrain" ppEffectAdjust [0.1, -1, 0.1, 0.05, 2, false];
	"filmGrain" ppEffectCommit 1;
	sleep 0.3;
	deleteVehicle _angel1;
	deleteVehicle _somelogic;
	"colorCorrections" ppEffectEnable false;
	"filmGrain" ppEffectEnable false;
	};
};

hint localize "You are starting to feel normal again.";