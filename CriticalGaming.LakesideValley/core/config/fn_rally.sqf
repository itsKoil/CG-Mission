//Los Diablos Taxi Service Spawn

if( life_koil_rally ) exitWith { titleText["You are already in a rally, please wait.","PLAIN"]; };


if(life_action_inUse) exitWith {

};	

if((player getVariable "tied")) exitWith {

};		
if((player getVariable "restrained")) exitWith {

};

life_koil_rally = 1;

_className = "A3L_EvoXrally_blue";
_timer = 300;

hintsilent format ["This car will be deleted in 5 minutes.",_className];

_vehicle = createVehicle [_className, (getPos player), [], 0, "NONE"];
waitUntil {!isNil "_vehicle"};
_vehicle allowDamage true;
_vehicle lock 1;
_vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
_vehicle setDir (getDir player);
_vehicle setPos (getPos player);
[_vehicle] call life_fnc_clearVehicleAmmo;
_vehicle disableTIEquipment true; 


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
_totalscore = _timer - 300;
_totalcash = _totalscore * 30;
life_koil_rally = 0;
hintsilent format ["Your Rally is over.",_className];