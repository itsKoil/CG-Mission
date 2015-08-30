//Los Diablos Taxi Service Spawn

if( life_koil_rally ) exitWith { titleText["You were recently in a rally, please wait.","PLAIN"]; };


if(life_action_inUse) exitWith {

};	

if((player getVariable "tied")) exitWith {

};		
if((player getVariable "restrained")) exitWith {

};
_startpos = getpos player;
life_koil_rally = 1;

_className = "A3L_EvoXrally_blue";
_markername = "rally_1_start";
_timer = 300;

_vehicle = createVehicle [_className, (getmarkerPos _markername), [], 0, "NONE"];
waitUntil {!isNil "_vehicle"};
_vehicle allowDamage false;
_vehicle lock 1;
_vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
_vehicle setDir (getmarkerDir _markername);
_vehicle setPos (getmarkerPos _markername);
[_vehicle] call life_fnc_clearVehicleAmmo;
_vehicle disableTIEquipment true; 
sleep 1;
_vehicle allowDamage true;

[] spawn {
	hint "3";
	sleep 1;
	hint "2";
	sleep 1;
	hint "1";	
	sleep 1;
	hint "GO!";
	while { _timer > 0 } do {
		sleep 1;
		_timer = _timer - 1;
		if((player distance (getmarkerpos _markername)) < 5) exitwith {

		};
		if(((player distance (getmarkerpos "rally_stop_1")) < 15) || ((player distance (getmarkerpos "rally_stop_2")) < 15) || ((player distance (getmarkerpos "rally_stop_3")) < 15) || ((player distance (getmarkerpos "rally_stop_4")) < 15)) exitwith {
		_timer 0;
		};
	};
	if(!isNil _vehicle) then {
		_vehicle setVelocity [0, 0, 0];
		deleteVehicle _vehicle;
	};
};

player setpos _startpos;
_totalcash = _timer * 300;
life_koil_rally = 0;
hintsilent format ["Your Rally is over - you earned %1 with %2 seconds left.",_totalcash,_timer];