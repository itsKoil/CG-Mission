[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		if(!life_is_arrested) then { 
			life_hunger = life_hunger - 10;
		};
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	_fnc_battery =   
	{
		if(life_battery < 2) then {hint "Your battery is empty.";}
		else
		{

			_batloss = round (random 8);
			if(vehicle player == player) then {
				life_battery = life_battery - _batloss;
			} else {
				if(life_battery < 100) then {
					life_battery = life_battery + _batloss;
					hint "The vehicle has charged your phone.";
				};
			};
			[] call life_fnc_hudUpdate;
			if(life_battery < 1) then {hint "Your battery is empty.";};
			switch(life_battery) do 
			{
				case 30: {hint "Battery 30%.";};
				case 20: {hint "Battery 20%.";};
				case 10: {hint "Battery 10%."; playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];};
				case 5: {hint "Battery 5%."; playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];};
				case 3: {hint "Battery 3%."; playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];};
				case 1: {hint "Battery 1%."; playSound3D ["cg_sndimg\sounds\phoneSMS.ogg", player, false, getPosASL player, 1, 1, 25];};
			};
		};
	};

	_fnc_karma =   
	{
			if(!life_is_arrested) then { 
				_karma = round (random 5);
				life_karma = life_karma + _karma;
			};
			_karma = round (random 5);
			life_poop = life_poop + _karma;
			_karma = round (random 5);
			life_dirt = life_dirt + _karma;
	};



	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			if(!life_is_arrested) then { 
			life_thirst = life_thirst - 10;
			};
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 345;
		if (life_eattotal > 9) then {
			life_eattotal = life_eattotal - 5;
		};
		[] call _fnc_water;
		[] call _fnc_battery; 
		[] call _fnc_karma;
		sleep 345;
		if (life_eattotal > 9) then {
			life_eattotal = life_eattotal - 5;
		};
		[] call _fnc_food;
		[] call _fnc_battery; 
		[] call _fnc_karma;
		[7] call SOCK_fnc_updatePartial;
	};
};

[] spawn
{
	while{true} do {
	sleep 300;
		if ( (player distance (getMarkerPos "campfire_1_1")) < 120 || (player distance (getMarkerPos "campfire_1_2")) < 120 || (player distance (getMarkerPos "campfire_1_3")) < 120 || (player distance (getMarkerPos "campfire_1_4")) < 120 || (player distance (getMarkerPos "campfire_1_5")) < 120 || (player distance (getMarkerPos "campfire_1_6")) < 120 || (player distance (getMarkerPos "campfire_1_7")) < 120 || (player distance (getMarkerPos "campfire_1_8")) < 120 ) then {
			hint "You just got paid $3000 extra holiday pay..";
			life_atmcash = life_atmcash + 3000;
		};
	};
};



[] spawn
{
	while {true} do
	{
		if(vehicle player == player) then
		{
			if(life_seatwarn) then {
				life_seatwarn = false;
			};
			if(life_seatbelt) then {
				sleep 3;
				life_seatbelt = false;
			};
			sleep 5;
		};
		if(vehicle player != player && !(player getVariable "Escorting") && !(player getVariable "restrained")) then
		{
			if(speed vehicle player > 90 && !life_seatbelt) then
			{
				oldVehVelocity = velocity (vehicle player);
				sleep 0.3;
				if(speed vehicle player < 1) then
				{
					[[player,"glassbreak"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
					[[player,"BasicDriverDying"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
					player switchmove "BasicDriverDying";
					moveOut player;
					player setVelocity [(oldVehVelocity select 0) * 0.4,(oldVehVelocity select 1) * 0.4,((oldVehVelocity select 2) * 0.4) + 5];
					sleep 2;
					player switchmove "";
				};
			} else {
				if(!life_seatwarn) then {
					sleep 1;
					if(!life_seatwarn) then {
						titleText ["You are currently not wearing a seatbelt..", "PLAIN DOWN", 2];
					};
					[[player,"seatwarn"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
					life_seatwarn = true;
				};
				sleep 1;
			};
		};
	};
};



[] spawn
{
	while{true} do
	{
		waitUntil {life_damagereturn};
		life_damagereturn = false;
		sleep 1;
		player setdamage 0.7;
	};
};




[] spawn
{
	if(side player != civilian) exitWith {};
	while{true} do
	{
		_vehicle = vehicle player;
		if(vehicle player != player && driver (vehicle player) == player && ((_vehicle isKindOf "Car") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "A3L_Tahoe_Base"))) then {

			if((player distance (getMarkerPos "speed_cam_1")) < 20 || (player distance (getMarkerPos "speed_cam_2")) < 20 || (player distance (getMarkerPos "speed_cam_3")) < 20 || (player distance (getMarkerPos "speed_cam_4")) < 20 || (player distance (getMarkerPos "speed_cam_10")) < 20 ) then {
				_vel = speed player; 
				if(_vel > 90 && _vel < 140) then {
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					sleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					sleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					sleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					sleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					sleep 0.05;   
					"colorCorrections" ppEffectEnable false;	

					hint "You have been fined $300 for speeding in the city.";
					if(life_atmcash > 300) then {
						life_atmcash = life_atmcash - 300;
					};
				};
				
				if(_vel > 139 && _vel < 200) then {
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					sleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					sleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					sleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					sleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					sleep 0.05;   
					"colorCorrections" ppEffectEnable false;		

					hint "You have been fined $500 for excessive speed in the city.";
					if(life_atmcash > 500) then {
						life_atmcash = life_atmcash - 500;
					};
				};	
				if(_vel > 199) then {
					hint "You have been fined $5000, lost your license and have been marked as a reckless driver for very excessive speeds.";
					if(life_atmcash > 5000) then {
						life_atmcash = life_atmcash - 5000;
					};
					player setVariable["defect_vehicle",true,true];

					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					sleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					sleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					sleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					sleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					sleep 0.05;   
					"colorCorrections" ppEffectEnable false;	

					if(license_civ_driver OR license_civ_truck OR license_civ_boat) then {
						license_civ_driver = false;
						license_civ_truck = false;
						license_civ_boat = false;
					};
				};		
				sleep 30;
			};
			if((player distance (getMarkerPos "speed_cam_5")) < 30 || (player distance (getMarkerPos "speed_cam_6")) < 30 || (player distance (getMarkerPos "speed_cam_7")) < 30 || (player distance (getMarkerPos "speed_cam_8")) < 30 || (player distance (getMarkerPos "speed_cam_9")) < 30 || (player distance (getMarkerPos "speed_cam_11")) < 30 || (player distance (getMarkerPos "speed_cam_12")) < 30 || (player distance (getMarkerPos "speed_cam_13")) < 30 || (player distance (getMarkerPos "speed_cam_14")) < 30 || (player distance (getMarkerPos "speed_cam_15")) < 30 || (player distance (getMarkerPos "speed_cam_16")) < 30 || (player distance (getMarkerPos "speed_cam_17")) < 30 || (player distance (getMarkerPos "speed_cam_18")) < 30) then {
				_vel = speed player; 
				if(_vel > 140 && _vel < 160) then {
					hint "You have been fined $300 for speeding.";
					if(life_atmcash > 300) then {
						life_atmcash = life_atmcash - 300;
					};

					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					sleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					sleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					sleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					sleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					sleep 0.05;   
					"colorCorrections" ppEffectEnable false;	

				};
				if(_vel > 159 && _vel < 210) then {
					hint "You have been fined $500 for excessive speed.";
					if(life_atmcash > 1000) then {
						life_atmcash = life_atmcash - 1000;
					};

					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					sleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					sleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					sleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					sleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					sleep 0.05;   
					"colorCorrections" ppEffectEnable false;	

				};	
				if(_vel > 209) then {
					hint "You have been fined $5000, lost your license and have been marked as a reckless driver for very excessive speeds.";
					if(life_atmcash > 5000) then {
						life_atmcash = life_atmcash - 5000;
					};
					player setVariable["defect_vehicle",true,true];


					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					sleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					sleep 0.05;   
					"colorCorrections" ppEffectEnable false;
					sleep 0.1;
					"colorCorrections" ppEffectEnable true;   
					"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 0.6],[0.3, 0.3, 0.3, 0.05]];    
					"colorCorrections" ppEffectCommit 0;  
					sleep 0;   
					"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 0.6],  [1, 1, 1, 0.6]];    
					"colorCorrections" ppEffectCommit 0.05;   
					sleep 0.05;   
					"colorCorrections" ppEffectEnable false;						

					if(license_civ_driver OR license_civ_truck OR license_civ_boat) then {
						license_civ_driver = false;
						license_civ_truck = false;
						license_civ_boat = false;
					};
				};
				sleep 30;	
			};
		sleep 0.5;
		} else {
			sleep 5;
		};
	};
};

[] spawn
{
	while{true} do
	{
	waitUntil {life_eattotal > 90};
		player playMove "AmovPercMstpSnonWnonDnon_Scared2";
		sleep 2;
		[[player,"vomit"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   		waitUntil{animationState player != "AmovPercMstpSnonWnonDnon_Scared2";};
   		life_eattotal = 0;
   		life_hunger = 10;
   		life_poop = 0;
	};

};


// MELEE
[] spawn {
        _mweapons = ["CG_BAT","CG_BATON","CG_CROSS","CG_TELBAT","CG_SHOVEL"];
        while{true} do {
		        waitUntil{((secondaryWeapon player) IN _mweapons) && !("nonlethal_swing" IN (magazines player)) && ((player ammo (currentWeapon player)) == 0)};
		        player addMagazine "nonlethal_swing";
		        sleep 120;
        };
};

// MELEE
[] spawn {
        _sweapons2 = ["cg_machete","cg_hatchet","CG_PICKAXE","cg_scythe"];
        while{true} do {
                waitUntil{((secondaryWeapon player) IN _sweapons2) && !("sharp_swing" IN (magazines player)) && ((player ammo (currentWeapon player)) == 0)};
                player addMagazine "sharp_swing";
                sleep 120;
        };
};


//doublecheck for virtual item duping
[] spawn
{
	private["_theveh","_unitveh","_myveh","_side","_radius","_nearestunits","_nearestunitofside","_unit"];
	while{true} do
	{
		waitUntil {!isNull (findDisplay 3500)};
		life_action_inuse = true;

		if(cursorTarget isKindOf "House_F") then {
			player setVariable["vehopen",2,true];
			_radius = 40;
		} else {
			_cuid = cursorTarget getVariable "vehicle_info_owners";
			player setVariable["vehopen",_cuid,true];
			_radius = 8;
		};
		_myveh = player getVariable "vehopen";

		while{!isNull (findDisplay 3500)} do
		{
			_side = civilian;
			_nearestunits = nearestObjects [player,["Man"],_radius];

			if(_side countSide _nearestunits > 0) then
			{
				{
					_unit = _x;
					if ( isPlayer _unit && player != _unit ) then 
					{
						_unitveh = _unit getVariable "vehopen";

						if(_unitveh isEqualTo _myveh) exitWith {
								life_action_inuse = false;		
								hint "Someone is using a virtual inventory near you. Please wait.";
								closeDialog 0;
						};
					};
				} foreach _nearestunits;
			};
			sleep 0.25;
		};
		closeDialog 0;	
		life_action_inuse = false;		
		player setVariable["vehopen",0,true];
	};
};




[] spawn
{
	while{true} do
	{
	waitUntil {life_koil_nlr == 1};
		deletemarker "mynlr";
		_Pos = position player; 
		_marker = createMarkerLocal ["mynlr", _Pos]; 
		"mynlr" setMarkerShapeLocal "ELLIPSE";
		"mynlr" setMarkerColorLocal "ColorRed";      
		"mynlr" setMarkerTextLocal "NLR AREA - DO NOT ENTER!";      
		"mynlr" setMarkerTypeLocal "WARNING";
		_mytimer = 900;
		while { _mytimer > 0 && life_koil_nlr == 1 } do {
			sleep 300;
			_mytimer = _mytimer - 300;
		};

		if( _mytimer < 1 ) then {
			deletemarker "mynlr";
			life_koil_nlr = 0;
			hint "NLR ZONING HAS ENDED - You are now free to enter your old death area.";
		};
	};
	sleep 0.05;
};



[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};





/*
[] spawn
{
	while{true} do
	{
		if (koil_life == 2) then {
			if (vehicle player != player) then {
				player action ["Eject", vehicle player];
			};

			if (alive player && vehicle player == player) then {
				player setDamage 1;
			};

			if (!alive player) then {
			koil_life = 1;
			};
		};
		sleep 0.2;
	};
};
*/

[] spawn
{
	while{true} do
	{
		if (life_poop > 80) then {
			_pooplord = getFatigue player;
			if (alive player && _pooplord < 1) then {
				player setFatigue _pooplord + 0.01; 
				_chance = round (random 95);
   			 	if(_chance == 19) then {
   				  	[[player,"fart1"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   				};
   				if(_chance == 20) then {
   				  	[[player,"fart2"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   				};
   				if(_chance == 21) then {
   				  	[[player,"fart3"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   				};
   				if(_chance == 22 || _chance == 23) then {
   				  	[[player,"fart4"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   				};
   				if(_chance == 24) then {
   				  	[[player,"fart5"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   				};
   				if(_chance == 25) then {
   				  	[[player,"fart6"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
   				};
			};
		};
		if (life_poop > 90) then {
			_pooplord = getFatigue player;
			if(alive player && _pooplord < 1) then {
				player setFatigue _pooplord + 0.01; 
			};
		};
		sleep 15;
	};
};

[] spawn
{
	while{true} do
	{
		if (life_dirt > 80) then {
			hint "You feel dirty & probably smell.";
		};
		if (life_dirt > 90) then {
				_koildebiiii = player getVariable "diseaseon";
				if(_koildebiiii == 1) then {
				_diseasechance =  round (random 100);

				if(_diseasechance > 99) then {
					player setVariable ["diseaseon",(round (random 7)),true];
				};
			};
		};	
		if (life_dirt == 100) then {
			_pooplord = getFatigue player;
			player setFatigue _pooplord + 0.01;
		};	
		sleep 120;
	};
};


/*
[] spawn
{
	while{true} do
	{
		if (vehicle player == player) then {
			player switchCamera "Internal";
		};
		sleep 0.1;
	};
};
*/


[] spawn
{
	while{true} do
	{
		sleep 5;		
		while{ koildeb > 1 || koildebi > 1 || koildebii > 1 || koildebiii > 1 || koildebiiii > 1 } do
		{

			_totalpain = koildeb + koildebi + koildebii + koildebiii + koildebiiii;

			if(_totalpain < 12) then {
				"colorCorrections" ppEffectEnable true;			
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.5],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
			};

			if(_totalpain > 11 && _totalpain < 18) then {
				"colorCorrections" ppEffectEnable true;			
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.33],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
			};

			if(_totalpain > 17) then {
				"colorCorrections" ppEffectEnable true;			
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
				"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
				"colorCorrections" ppEffectCommit 3;
				sleep 2;
			};
			sleep 2;
		};
	};
};

[] spawn
{
	while{true} do
	{
		if (life_pizza > 0) then {
			if(!im_hurt) then {
				player setDamage (damage player) - .05;
			};
		};
		sleep 7;
	};
};




[] spawn
{
	while{true} do
	{
		waitUntil {player getvariable "probation"};
		player setVariable["probation",false,true];
		[player] spawn life_fnc_createGarbage;
	};
};


[] spawn
{
	while{true} do
	{
		waitUntil {player getvariable "totalmobile"};
		mybonus = player getVariable "totalmobile";
		if (mybonus >= 10000) then {
			mybonus = mybonus * 0.5;
		};
		KWEFookxWQOk = KWEFookxWQOk + mybonus;
		hint format["You just got paid $%1",mybonus];
		player setVariable["totalmobile",false,true];
	};
};

[] spawn
{
	while{true} do
	{
		waitUntil {player getvariable "search"};
		player setVariable["search",false,true];
		_handle = [player] spawn life_fnc_dropItems2;
		waitUntil {scriptDone _handle};
		life_carryWeight = 0;
	};
};

[] spawn
{
	if(side player == civilian) then {
		while {true} do {

			sleep 2;
			_wtflol = call TFAR_fnc_haveLRRadio;
			if(_wtflol) then {
			_channel = (call TFAR_fnc_ActiveLRRadio) call TFAR_fnc_getLRChannel;
			_channel = _channel + 1;
				if (driver (vehicle player) == player && (vehicle player) != player) then {
					_curfreqlr = [(call TFAR_fnc_activeLrRadio), _channel] call TFAR_fnc_GetChannelFrequency;
					if( _curfreqlr == "33.3" || _curfreqlr == "33.2" || _curfreqlr == "33.1" ) then {
						hint "33.1 - 33.2 - 33.3 are blocked frequencies.";
						[(call TFAR_fnc_activeLrRadio), _channel, "33.4"] call TFAR_fnc_SetChannelFrequency;
					};
				};
			};

			_wtfno = call TFAR_fnc_haveSWRadio;
			if(_Wtfno) then {
			_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
			_channel = _channel + 1;
				_curfreqsr = [(call TFAR_fnc_activeSwRadio), _channel] call TFAR_fnc_GetChannelFrequency;
				if(!isNil "_curfreqsr") then {
					if( _curfreqsr == "33.3" || _curfreqsr == "33.2" || _curfreqsr == "33.1" ) then {
						hint "33.1 - 33.2 - 33.3 are blocked frequencies.";
						[(call TFAR_fnc_activeSwRadio), _channel, "33.4"] call TFAR_fnc_SetChannelFrequency;
					};
				};
			};
		};
	};
};


[] spawn
{
	while{true} do
	{
		waitUntil {player getvariable "airkit"};
		player setVariable["airkit",false,true];
		if(!life_ApplyAir) then {
			life_ApplyAir = true;
			_buym = 1;
			while {_buym < 18} do {
				player setOxygenRemaining 1;
				sleep 10;
				_buym = _buym + 1;
			};
			life_ApplyAir = false;	
		};
	};
};







[] spawn
{
	while{true} do
	{
		waitUntil {vehicle player != player};
		waitUntil {vehicle player == player};

		_n = 15;
		hint "You can not use your weapon for 1.5 seconds...";

		if (!life_seatbelt) then {
			_n = 8;
			hint "You can not use your weapon for 0.8 seconds...";
		};

		while {_n > 0} do {
			if (currentWeapon player != "") then {
				life_curWep_h = currentWeapon player;
				player action ["SwitchWeapon", player, player, 100];
				player switchcamera cameraView;
				[[player,"AmovPercMstpSnonWnonDnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				player switchMove "AmovPercMstpSnonWnonDnon";
			};
			sleep 0.1;
			_n = _n - 1;
		};
		hint "You can now unholster your weapon.";
		sleep 1;
	};
};

[] spawn
{
	while {true} do
	{
		sleep 5;
		if(player distance (getMarkerPos "mynlr") < 200 && life_koil_nlr == 1 && alive player) then {
			hint "You are to close to your last death, please leave the area as soon as possible.";
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 3;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};


//Intox Start
private["_obj"];
[] spawn  
{
	while{true} do
	{
		sleep 110;
		if(life_intox > 0) then 
		{
			if(life_intox <= 0.02) then {life_intox = 0.00;} else {life_intox = life_intox - 0.02;};
			[] call life_fnc_hudUpdate;
			switch(true) do {
				case (life_intox == 0.00): {hint "You are completely sober.";};
				case (life_intox == 0.08): {hint "You can now legally drive.";};
			};
		};
	};
};

[] spawn  
{

	player addEventHandler ["AnimStateChanged", {
	    if (_this select 1 == "incapacitated") then {
	        player allowDamage false;
	        player setPosWorld getPosWorld player;
	        player allowDamage true;
	    };
	}]; 

	KOIL_fnc_drunkFall = {
	    if (vehicle player != player) exitWith {};
	    private "_rag";
	    _rag = "Land_Can_V3_F" createVehicleLocal [0,0,0];
	    _rag setMass 1e10;
	    _rag attachTo [player, [0,0,0], "Spine3"];
	    _rag setVelocity [0,0,5];
	    player allowDamage false;
	    detach _rag;
	    0 = _rag spawn {
	        deleteVehicle _this;
	        player allowDamage true;
	    };
	};

	while{true} do
	{
		waitUntil {life_intox > 0.08};
		player setVariable["intoxicated",true,true];
		while{life_intox > 0.08} do 
		{
 		    "dynamicBlur" ppEffectEnable true;
    	    "dynamicBlur" ppEffectAdjust [0.5];
            "dynamicBlur" ppEffectCommit 1;
			sleep 5;
			if(life_intox > 0.15) then {
				_chance = round (random 100);
   			 	if(_chance < 5) then {
   				  		call KOIL_fnc_drunkFall;
   				};
			};
			if(life_intox > 0.25) then {
				_chance = round (random 100);
   			 	if(_chance < 7) then {
   				  		call KOIL_fnc_drunkFall;
   				};
			};
			if(life_intox > 0.35) then {
				_chance = round (random 100);
   			 	if(_chance < 8) then {
   				  		call KOIL_fnc_drunkFall;
   				};
			};
			if(life_intox > 0.45) then {
				_chance = round (random 100);
   			 	if(_chance < 11 && _chance > 4) then {
   				  		call KOIL_fnc_drunkFall;
   				};
			};

		};
		"dynamicBlur" ppEffectEnable false;
		player setVariable["intoxicated",false,true];
	};
};


[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 1;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};