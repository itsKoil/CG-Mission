/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep","_damageReduce"];

_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

/*



_unit = _this select 1;
_part = _this select 5;
_damage = _this select 10;
_source = _this select 0;
_projectile = _this select 2;
*/
life_nolife = 2;
//_msgtext1 = format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];
//[_msgtext1,3,"green"] call A3L_Fnc_Msg;

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {

		if(vehicle _source != _source && vehicle _unit == _unit && isplayer _source) then {

			life_damagereturn = true;
			if((speed _source) > 70) then {
				_koildeb = player getVariable "bleedingon";
				if(_koildeb == 1) then {
				_chance = round (random 10000);
					if(_chance > 7996) then {
						player setVariable ["bleedingon",(round (random 5)),true];
					};
				};

				_koildebi = player getVariable "woundedon";
				if(_koildebi == 1) then {
				_chance = round (random 10000);
					if(_chance > 8696) then {
						player setVariable ["woundedon",(round (random 5)),true];
					};
				};
			};
			_damage = false;
		};

		_curWep = currentWeapon _source;

		if ( (_curWep) == "CG_SHOVEL" || (_curWep) == "CG_BAT" || (_curWep) == "CG_TELBAT" || (_curWep) == "CG_BATON" || (_curWep) == "CG_CROSS" ) then {
			[_unit,_source] spawn life_fnc_blunthit;
		};
		if ( (_curWep) == "cg_machete" || (_curWep) == "cg_hatchet" || (_curWep) == "CG_PICKAXE" || (_curWep) == "cg_scythe" ) then {
			[_unit,_source] spawn life_fnc_sharphit;
		};

		if(_projectile in ["26_taser"] && _curWep in ["Taser_26"]) then {
			if(side _source == west) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = if(_projectile == "B_556x45_dual") then {100} else {35};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
				_damage = false;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isVehicle && _isQuad) then {
							//player action ["Eject",vehicle player];
							//[_unit,_source] spawn life_fnc_tazed;
						} else {
							[_unit,_source] spawn life_fnc_tazed;
						};
					};
				};
			};
		};
	};
};



_koildeb = player getVariable "bleedingon";
if(_koildeb == 1) then {
_chance = round (random 10000);
if(_chance > 9996) then {
	player setVariable ["bleedingon",(round (random 5)),true];
};
};

_koildebi = player getVariable "woundedon";
if(_koildebi == 1) then {
_chance = round (random 10000);
if(_chance > 9996) then {
	player setVariable ["woundedon",(round (random 5)),true];
};
};

_koildebii = player getVariable "fractureon";
if(_koildebii == 1) then {
_chance = round (random 10000);
if(_chance > 9996) then {
	player setVariable ["fractureon",(round (random 7)),true];
};
};

_koildebiii = player getVariable "unconciouson";
if(_koildebiii == 1) then {
_chance = round (random 10000);
if(_chance > 9996) then {
	player setVariable ["unconciouson",(round (random 7)),true];
};
};


_koildebiiii = player getVariable "diseaseon";
if(_koildebiiii == 1) then {
_diseasechance =  round (random 100000);

if(_diseasechance > 99998) then {
	player setVariable ["diseaseon",(round (random 7)),true];
};
};

_damage;


