/*
File: create evidence
*/
private["_curTarget","_suspect","_victim","_crime"];

/*
_vehicle = createVehicle ["Land_GarbageBin_01_F", (player), [], 0, "NONE"];
{_vehicle disableCollisionWith _x} foreach playableUnits;
_vehicle attachTo [player, [0, 0.7, 0.3] ]; 
_vehicle setDir 180;
*/

_fine = 1;
_totalprobation = 15;
removeAllWeapons player;
A3L_Fnc_OldUniform = Uniform player;
player addUniform "Inmate_Uni1";
player addHeadgear "H_Cap_red";
hint "You have been put on probation... you must work off your sentence!";
player allowdamage false;
player setpos [8615,6679,0.1];
sleep 1;
_endnow = 2;
player allowdamage true;
player addWeapon "A3L_Shovel";



while {_totalprobation > 0} do {


	hint "You have 3 minutes to get to the location marked on the map! Stay there until you are told to leave. YOU MUST DO THIS ON FOOT... THE MARKER WILL SHOW UP IN 5 SECONDS.";
	sleep 3;

	_chance = (floor random 4);
	switch (_chance) do
	{
	   case 4 : {
	 		obj = "Land_GarbageBags_F" createVehicle ([8681,6713,0.1]);
	      	_marker = createMarkerLocal ["mynlrz", [8681,6713,0.1]]; 
			"mynlrz" setMarkerShapeLocal "ELLIPSE";
			"mynlrz" setMarkerColorLocal "ColorRed";      
			"mynlrz" setMarkerSizeLocal [20, 20];
	   };
	   case 3 : {
	 		obj = "Land_GarbageBags_F" createVehicle ([8578,6852,0.1]);
	      	_marker = createMarkerLocal ["mynlrz", [8578,6852,0.1]]; 
			"mynlrz" setMarkerShapeLocal "ELLIPSE";
			"mynlrz" setMarkerColorLocal "ColorRed";      
			"mynlrz" setMarkerSizeLocal [20, 20];
	   };
	   case 2 : {
	  		obj = "Land_GarbageBags_F" createVehicle ([8509,6268,0.1]);
	      	_marker = createMarkerLocal ["mynlrz", [8509,6268,0.1]]; 
			"mynlrz" setMarkerShapeLocal "ELLIPSE";
			"mynlrz" setMarkerColorLocal "ColorRed";      
			"mynlrz" setMarkerSizeLocal [20, 20];
	   };
	   case 1 : {
	 		obj = "Land_GarbageBags_F" createVehicle ([8615,6679,0.1]);
	   		_marker = createMarkerLocal ["mynlrz", [8615,6679,0.1]]; 
			"mynlrz" setMarkerShapeLocal "ELLIPSE";
			"mynlrz" setMarkerColorLocal "ColorRed";      
			"mynlrz" setMarkerSizeLocal [20, 20];
	   };
	   case 0 : {
	 		obj = "Land_GarbageBags_F" createVehicle ([8578,6852,0.1]);
	      	_marker = createMarkerLocal ["mynlrz", [8578,6852,0.1]]; 
			"mynlrz" setMarkerShapeLocal "ELLIPSE";
			"mynlrz" setMarkerColorLocal "ColorRed";      
			"mynlrz" setMarkerSizeLocal [20, 20];
	   };
	   default {
	  		obj = "Land_GarbageBags_F" createVehicle ([8468,6621,0.1]);
	      	_marker = createMarkerLocal ["mynlrz", [8468,6621,0.1]]; 
			"mynlrz" setMarkerShapeLocal "ELLIPSE";
			"mynlrz" setMarkerColorLocal "ColorRed";      
			"mynlrz" setMarkerSizeLocal [20, 20];
	   };
   };
   _fuck = 180;
   	while{_fuck > 0} do {
   	sleep 1;
   	_fuck = _fuck - 1;
   		hint format["Time Remaining: %1", _fuck];

	   	if((player distance (getMarkerPos "mynlrz")) < 25) exitwith {
	   		sleep 3;
	   		hint "You have picked up the rubbish!";
	   	};
	   	if(!alive player) exitwith {
	  	 	waituntil{alive player};
	  	 	life_atmcash = life_atmcash - 2000;
		   	hint "You have been fined $2000 for not picking up rubbish";
	  	 	[[getPlayerUID player,profileName,"901A"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	  	 	_endnow = 1;
	   	};
	   	if(vehicle player != player) then {
	   		_fine = _fine + 1;
	   		player action ["Eject", vehicle player];
	   		hint "Do not enter a vehicle while on probation.";
	   		sleep 2;
	   		life_atmcash = life_atmcash - 2000;
		   	hint "You have been fined $2000 for not picking up rubbish";
		   	sleep 2;
	   	};
	   	if(_fuck == 1) exitwith {
		   	_fine = _fine + 1;
		   	life_atmcash = life_atmcash - 2000;
		   	hint "You have been fined $2000 for not picking up rubbish";
			if(_fine == 3) then {
				hint "You have been added to the wanted list for skipping jail work & fined $25000";
				[[getPlayerUID player,profileName,"901A"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
				life_atmcash = life_atmcash - 20000;
			 	_totalprobation = 0;
			};
		};
   	};

   	deletevehicle obj;
   	sleep 5;
   	deletemarker "mynlrz";
   	_totalprobation = _totalprobation - 1;

	if(_endnow == 1) exitwith {

	};


	};
   	deletevehicle obj;
   	deletemarker "mynlrz";
sleep 5;
hint "Your probation has ended";
player addUniform A3L_Fnc_OldUniform;