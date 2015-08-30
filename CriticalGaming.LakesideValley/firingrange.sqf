// Koil virtual hunting.

if( life_firing_range ) exitwith { };

_myscore = 0;

_count = 50;
_unit = player;
_myposy = getPos player;

hint "This run will begin in 5 seconds, get in position - your direction will be automatically adjusted after each round. You can move roughly 5 metres.";

sleep 3;

hint "Enabling Virtual Glasses to spawn targets.";

"chromAberration" ppEffectEnable true;
"chromAberration" ppEffectAdjust [0.02,0.02,true];
"chromAberration" ppEffectCommit 1; 

sleep 2;

life_firing_range = true;
while {_count > 0} do {

	if((player ammo (currentWeapon player)) < 2) then {
		titleText["Reload Now..","PLAIN"];
		_unit say3D "reloadnow";
		sleep 6;
		if((player ammo (currentWeapon player)) < 2) exitwith {
			_myscore = 0;
			titleText["","PLAIN"];
  			titleText["You failed to reload in time.","PLAIN"];
  			_count = 0;
  			"chromAberration" ppEffectEnable false;
  			life_firing_range = false;
		};
		titleText["","PLAIN"];
		titleText["Reload Complete..","PLAIN"];
	};

	player setDir 180;

	hint "Spawning Target";
	sleep 0.5;
	titleText["","PLAIN"];
	_lmfaolol = round (random 2);

	if(_lmfaolol == 0) then {
		_lmfaolol = 1;
	};

	if(_lmfaolol == 1) then {
		_spawnedunit = "C_man_1" createVehicleLocal (player modelToWorld [0 - round (random 3), 15 + round (random 10), 0]);

		_spawnedunit setDamage 0.98;

	if( player distance _myposy > 5 || (!alive player) ) exitwith { 
			_myscore = 0;
  			titleText["You moved to far away.","PLAIN"];
  			_count = 0;
  			"chromAberration" ppEffectEnable false;
  			life_firing_range = false;
    };

	_count = _count - 1;
	sleep 0.35;
	if(_count < 10) then {
		sleep 0.43;
	};

	if(_count < 20 && _count > 9) then {
		sleep 0.53;
	};

	if(_count < 30 && _count > 19) then {
		sleep 0.63;
	};

	if(_count < 40 && _count > 29) then {
		sleep 0.73;
	};

	if(_count < 50 && _count > 39) then {
		sleep 0.83;
	};

	if (!alive _spawnedunit) then {
		_myscore = _myscore + 1;
		_unit say3D "ding";
	};

	deleteVehicle _spawnedunit;
	sleep 0.5;
	hint format ["Score: %1",_myscore];


	};

	if(_lmfaolol == 2) then {
		_spawnedunit = "C_man_1" createVehicleLocal (player modelToWorld [0 + round (random 3), 15 + round (random 10), 0]);

		_spawnedunit setDamage 0.98;

	if( player distance _myposy > 3 || (!alive player) ) exitwith { 
			_myscore = 0;
  			titleText["You moved to far away or died.","PLAIN"];
  			_count = 0;
  			"chromAberration" ppEffectEnable false;
  			life_firing_range = false;
    };

	_count = _count - 1;
	sleep 0.35;
	if(_count < 10) then {
		sleep 0.43;
	};

	if(_count < 20 && _count > 9) then {
		sleep 0.53;
	};

	if(_count < 30 && _count > 19) then {
		sleep 0.63;
	};

	if(_count < 40 && _count > 29) then {
		sleep 0.73;
	};

	if(_count < 50 && _count > 39) then {
		sleep 0.83;
	};

	if (!alive _spawnedunit) then {
		_myscore = _myscore + 1;
		_unit say3D "ding";
	};

	deleteVehicle _spawnedunit;
	sleep 0.5;
	hint format ["Score: %1",_myscore];


	};

};

deleteVehicle _spawnedunit;

_bonuscash = _myscore * 40;

if(_myscore > 10) then {
	_unit say3D "finishrange";
	_bonuscash = _bonuscash + round (random 5000);
};

if(_myscore > 20) then {
	_bonuscash = _bonuscash + round (random 9000);
};

if(_myscore > 30) then {
	_bonuscash = _bonuscash + round (random 11000);
};

if(_myscore > 40) then {
	_bonuscash = _bonuscash + round (random 12000);
};

if(_myscore > 45) then {
	_bonuscash = _bonuscash + round (random 14000);
};

if(_myscore > 48) then {

	_bonuscash = _bonuscash + round (random 16000);
};
life_firing_range = false;
"chromAberration" ppEffectEnable false;

hint format ["Score: %1 - Bonus Cash: %2",_myscore, _bonuscash];

KWEFookxWQOk = KWEFookxWQOk + _bonuscash;