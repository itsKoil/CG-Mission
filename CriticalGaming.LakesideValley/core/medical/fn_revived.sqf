/*
	File: fn_revived.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	THANK YOU JESUS I WAS SAVED!
*/
private["_medic","_dir"];
_medic = [_this,0,"Unknown Medic",[""]] call BIS_fnc_param;
_oldGear = [life_corpse] call life_fnc_fetchDeadGear;
[_oldGear] spawn life_fnc_loadDeadGear;
life_corpse setVariable["realname",nil,true]; //Should correct the double name sinking into the ground.
[[life_corpse],"life_fnc_corpse",nil,FALSE] spawn life_fnc_MP;
_dir = getDir life_corpse;
hint format[localize "STR_Medic_RevivePay",_medic,[(call life_revive_fee)] call life_fnc_numberText];


player setVariable ["tf_unable_to_use_radio", false];

closeDialog 0;
life_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy life_deathCamera;

//Take fee for services.
if(life_atmcash > (call life_revive_fee)) then {
	life_atmcash = life_atmcash - (call life_revive_fee);
} else {
	life_atmcash = 0;
};


player setDir _dir;
player setPosASL (visiblePositionASL life_corpse);
life_corpse setVariable["Revive",nil,TRUE];
life_corpse setVariable["name",nil,TRUE];
[[life_corpse],"life_fnc_corpse",true,false] spawn life_fnc_MP;
hideBody life_corpse;



	disableUserInput false;
	player allowDamage true;
	life_action_inUse = false;
	life_death = 2;
player setVariable["Revive",nil,TRUE];
player setVariable["name",nil,TRUE];
player setVariable["Reviving",nil,TRUE];
player setVariable["CPR",nil,TRUE];
player setVariable ["EMSON",2,true];




_koildeb = player getVariable "bleedingon";
if(_koildeb == 1) then {
	_chance = round (random 10000);
	if(_chance > 8696) then {
		player setVariable ["bleedingon",(round (random 5)),true];
	};
};

_koildebi = player getVariable "woundedon";
if(_koildebi == 1) then {
	_chance = round (random 10000);
	if(_chance > 7996) then {
		player setVariable ["woundedon",(round (random 5)),true];
	};
};

_koildebii = player getVariable "fractureon";
if(_koildebii == 1) then {
	_chance = round (random 10000);
	if(_chance > 6996) then {
		player setVariable ["fractureon",(round (random 7)),true];
	};
};

_koildebiii = player getVariable "unconciouson";
if(_koildebiii == 1) then {
	_chance = round (random 10000);
	if(_chance > 6996) then {
		player setVariable ["unconciouson",(round (random 7)),true];
	};
};






[] call life_fnc_hudUpdate; //Request update of hud.


//add freeze script on revive

disableUserInput true;
life_action_inUse = true;
[[player,"AinjPpneMstpSnonWnonDnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
_obj setPosATL (getPosATL player);
player attachTo [_obj,[0,0,0]];
sleep 15;

detach player;
deleteVehicle _obj;
disableUserInput false;
life_action_inUse = false;
deleteVehicle life_corpse;
life_corpse hideObject true;
[[player,"AmovPercMstpSnonWnonDnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
life_sickness = true;
[] execVM "statusBar.sqf";

//[] call life_fnc_koilcombat;

[] spawn {
	player setUnitRecoilCoefficient 3.5;
	life_rip = 0;
	life_rip = 600;

	while{life_rip > 0} do {
		life_rip = life_rip - 1;
		sleep 1;
	};

	life_sickness = false;
	sleep 1;
	player setUnitRecoilCoefficient 2.8;
};