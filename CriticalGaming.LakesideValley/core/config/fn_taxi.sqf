//Los Diablos Taxi Service Spawn

if( !life_koil_parachute ) exitWith { titleText["FLY GUY: I need your used plane ticket.","PLAIN"]; };


if(life_action_inUse) exitWith {

};	

if((player getVariable "tied")) exitWith {

};		
if((player getVariable "restrained")) exitWith {

};

life_koil_parachute = 0;
_spawnPoint = "air_g_8";
_className = "A3L_EscortTaxi";
_timer = 300;

hintsilent format ["This car will be deleted on vehicle exit, or a 5 minute timer - you must be the driver.",_className];

_vehicle = createVehicle [_className, (getMarkerPos _spawnPoint), [], 0, "NONE"];
waitUntil {!isNil "_vehicle"}; //Wait?
_vehicle allowDamage true; //Temp disable damage handling..
_vehicle lock 1;
_vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
_vehicle setDir (markerDir _spawnPoint);
_vehicle setPos (getMarkerPos _spawnPoint);
[_vehicle] call life_fnc_clearVehicleAmmo;
_vehicle disableTIEquipment true; 


[] spawn {
	waituntil {vehicle player != player};
	_vehicle allowDamage true;
	waituntil {vehicle player == player};
	if(!isNil _vehicle) then {
		_vehicle setVelocity [0, 0, 0];
		deleteVehicle _vehicle;
	};
};

[] spawn {
	while { _timer > 0 } do {
		sleep 1;
		_timer = _timer - 1;
	};
	if(!isNil _vehicle) then {
		_vehicle setVelocity [0, 0, 0];
		deleteVehicle _vehicle;
	};
};

hintsilent format ["Your Taxi service is over.",_className];