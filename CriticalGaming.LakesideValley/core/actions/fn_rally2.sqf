//rally 2

if( life_koil_rally == 1 ) exitWith { titleText["You were recently in a rally, please wait.","PLAIN"]; };


if(life_action_inUse) exitWith {

};	

if((player getVariable "tied")) exitWith {

};		
if((player getVariable "restrained")) exitWith {

};


_nearVehicles = nearestObjects[getmarkerPos "rally_2_start",["Car","Motorbike","Motorcycle","Bicycle","Bike","Air","Ship"],10];
if(count _nearVehicles > 0) exitWith
{
	hint "Vehicle to close to rally start, exiting.";
};



_startpos = getpos player;
life_koil_rally = 1;
_className = "A3L_EvoXrally_blue";
_markername = "rally_2_start";

_vehicle = createVehicle [_className, (getmarkerPos _markername), [], 0, "NONE"];
waitUntil {!isNil "_vehicle"};
_vehicle allowDamage false;
_vehicle lock 1;
_vehicle setVectorUp (surfaceNormal (getMarkerPos _markername));
_vehicle setDir (markerDir _markername);
_vehicle setPos (getmarkerPos _markername);
[_vehicle] call life_fnc_clearVehicleAmmo;
_vehicle disableTIEquipment true; 
sleep 1;


_timer = 300;
[[player,"start"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
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
		if((player distance (getmarkerpos "rally_2_finish")) < 45) exitwith {
		[[player,"endbeep"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
		sleep 3;
		};
		if((player distance (getmarkerpos "rally_stop_1")) < 40) exitwith {
			_timer = 0;
		};

		if((player distance (getmarkerpos "rally_stop_2")) < 40) exitwith {
			_timer = 0;
		};

		if((player distance (getmarkerpos "rally_stop_3")) < 40) exitwith {
			_timer = 0;
		};

		if((player distance (getmarkerpos "rally_stop_4")) < 40) exitwith {
			_timer = 0;
		};
	};

sleep 1;
_vehicle setVelocity [0, 0, 0];
deleteVehicle _vehicle;
player setpos _startpos;
_totalcash = _timer * 22;
life_koil_rally = 0;
titleText[format["Your Rally is over - you earned %1 with %2 seconds left.",_totalcash,_timer],"PLAIN"];
[[0,format["%1 had %2 seconds remaining on the time trial.",name player, _timer]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;

KWEFookxWQOk = KWEFookxWQOk + _totalcash;