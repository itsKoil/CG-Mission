//go karts
private["_skiptotal","_markerstart","_startpos","_vehicle"];

if( life_koil_race2 == 1 ) exitWith { titleText["You are already in a race, please wait.","PLAIN"]; };

if(KWEFookxWQOk < 5000) exitWith {
hint "You need 5000 $ to enter";	
};


if(life_action_inUse) exitWith {

};	
if((racemachine2 getVariable "racefull")) exitWith {
	hint "This race is full, try the next one!";
};	

if((player getVariable "tied")) exitWith {

};		
if((player getVariable "restrained")) exitWith {

};


_skiptotal = 0;
if(!(racemachine2 getVariable "start")) then {
		[[1,format["LAKESIDE GO-KARTS: A Race will begin in 5 minutes at the lakeside go-kart track.",player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
	racemachine2 setVariable["start",true,true];
	racemachine2 setVariable["total",1,true];
	racemachine2 setVariable["racefull",false,true];
	_skiptotal = 1;
	[[player],"TON_fnc_dorace2",false,false] spawn life_fnc_MP;
}; 

sleep 1;
koildeb2 = racemachine2 getvariable "total";
if(koildeb2 == 5) exitWith {
	hint "The current race is full, try the next one!";
};

if(_skiptotal == 0) then {
    koildeb2 = koildeb2 + 1;
    racemachine2 setVariable["total",koildeb2,true];
};

KWEFookxWQOk = KWEFookxWQOk - 5000;

_startpos = getpos player;
life_koil_race2 = 1;

_className = "A3L_Karts";

if(koildeb2 == 1) then {
	_markerstart = "start_race_1_1";
};
if(koildeb2 == 2) then {
	_markerstart = "start_race_2_1";
};
if(koildeb2 == 3) then {
	_markerstart = "start_race_3_1";
};
if(koildeb2 == 4) then {
	_markerstart = "start_race_4_1";
};
if(koildeb2 == 5) then {
	_markerstart = "start_race_5_1";
	racemachine2 setVariable["racefull",true,true];
};

_vehicle = createVehicle [_className, (getmarkerPos _markerstart), [], 0, "NONE"];
waitUntil {!isNil "_vehicle"};
_vehicle allowDamage false;
_vehicle lock 1;
_vehicle setVectorUp (surfaceNormal (getMarkerPos _markerstart));
_vehicle setDir (markerDir _markerstart);
_vehicle setPos (getmarkerPos _markerstart);
[_vehicle] call life_fnc_clearVehicleAmmo;
_vehicle disableTIEquipment true; 
sleep 1;
if(vehicle player == player && alive player) then {
	player action ["getInDriver", _vehicle];	
};

if(koildeb2 == 1) then {
	rrvehicle1 = _vehicle;
};
if(koildeb2 == 2) then {
	rrvehicle2 = _vehicle;
};
if(koildeb2 == 3) then {
	rrvehicle3 = _vehicle;
};
if(koildeb2 == 4) then {
	rrvehicle4 = _vehicle;
};
if(koildeb2 == 5) then {
	rrvehicle5 = _vehicle;
};

hint "You can warm up while the race begins, do not leave the track... you will be teleported back here when its going to begin.";

while{ !(racemachine2 getVariable "racing") } do {


	if((player distance (getmarkerpos "stop_race_1_1")) > 150) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};

sleep 0.3;
};

if(vehicle player == player && alive player) then {
	player action ["getInDriver", _vehicle];	
};
_racecheck = 1;
_laps = 0;
_timer = 1;
_vehicle setVelocity [0, 0, 0];
_vehicle setDir (markerDir _markerstart);
_vehicle setPos (getmarkerPos _markerstart);
[[player,"start"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;

_vehicle setdamage 0;
_vehicle allowdamage false;

hint "3";
_num = 1;
while{_num > 0} do {
	sleep 0.05;
	_vehicle setVelocity [0, 0, 0];
	_vehicle setDir (markerDir _markerstart);
	_vehicle setPos (getmarkerPos _markerstart);
	_num = _num - 0.05;
};
hint "2";
_num = 1;
while{_num > 0} do {
	sleep 0.05;
	_vehicle setVelocity [0, 0, 0];
	_vehicle setDir (markerDir _markerstart);
	_vehicle setPos (getmarkerPos _markerstart);
	_num = _num - 0.05;
};
hint "1";
_num = 1;
while{_num > 0} do {
	sleep 0.05;
	_vehicle setVelocity [0, 0, 0];
	_vehicle setDir (markerDir _markerstart);
	_vehicle setPos (getmarkerPos _markerstart);
	_num = _num - 0.05;
};
hint "GO!";
_laptimes = 0;
_fastestlap = 9999;
while { (racemachine2 getVariable "racing") } do {
	sleep 0.05;
	_laptimes = _laptimes + 0.05;

	if((player distance (getmarkerpos "race_check_1_1")) < 5 && _racecheck == 1) then {
		hint format["You hit checkpoint %1",_racecheck];
		[[player,"endbeep"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
		_racecheck = 2;
	};

	if((player distance (getmarkerpos "race_check_2_1")) < 5 && _racecheck == 2) then {
		hint format["You hit checkpoint %1",_racecheck];
		[[player,"endbeep"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
		_racecheck = 3;
	};

	if((player distance (getmarkerpos "race_check_3_1")) < 5 && _racecheck == 3) then {
		hint format["You hit checkpoint %1",_racecheck];
		[[player,"endbeep"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
		_racecheck = 4;
	};

	if((player distance (getmarkerpos "race_check_4_1")) < 5 && _racecheck == 4) then {
		_racecheck = 1;
		hint "Lap Complete";
		[[player,"endbeep"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
		_laps = _laps + 1;
		if(_laptimes < _fastestlap) then {
			_fastestlap = _laptimes;
			hint format["New fastest lap set at %1",_fastestlap];
		};
		_laptimes = 0;
	};


	if(_laps == 7) exitWith {
		if((racemachine2 getVariable "start")) then {
			[[player],"TON_fnc_racefinish2",false,false] spawn life_fnc_MP;
			KWEFookxWQOk = KWEFookxWQOk + 7000;
		};
	};
	if(vehicle player == player && alive player) then {
		player allowdamage false;
		_vehicle setdamage 0;
		_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, (getPos _vehicle select 2)+0.2];
		sleep 3;
		hint "Your car has been fixed & flipped - you received a 3 second penalty.";
		player action ["getInDriver", _vehicle];
		player allowdamage true;
	};

	if((player distance (getmarkerpos "stop_race_1_1")) > 150) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
};
sleep 1;


if((player distance (getmarkerpos "stop_race_1_1")) < 150 && alive player) then {

_vehicle setVelocity [0, 0, 0];
deleteVehicle _vehicle;
player setpos _startpos;
life_koil_race2 = 0;

sleep 1;
[[0,format["%1 had a top lap of %2.",name player, _fastestlap]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;

	if(_laps > 3) then {
		titleText["Your Race is over - you earned $15000.","PLAIN"];
		KWEFookxWQOk = KWEFookxWQOk + 15000;
	} else {
		hint "You have been disqualified from the race and have won nothing.";	
	};
};