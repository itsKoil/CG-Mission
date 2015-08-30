/*
	File: fn_Nos.sqf
	
	Description:
	Nos by Koil Pasta
*/
		_vehicle = (vehicle player);

if(life_nos_count > 0 && _vehicle isKindOf "Car") then {

	if(life_nos_active == 2) then {
		[[player,"nos"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;

		life_nos_active = 1;

		life_nos_count = life_nos_count - 1;


	_lightRed = [15, 0.1, 5];

	_lightleft = "#lightpoint" createVehicle getpos _vehicle;   
	sleep 0.2;
	_lightleft setLightColor _lightRed; 
	_lightleft setLightBrightness 0.2;  
	_lightleft setLightAmbient [20, 0.1, 0.1];
	_lightleft lightAttachObject [_vehicle, [-0.02, -1, -2.82]];
	_lightleft setLightAttenuation [0.1, 0, 1000, 130]; 
	_lightleft setLightIntensity 5;
	_lightleft setLightFlareSize 0.38;
	_lightleft setLightFlareMaxDistance 120;
	_lightleft setLightUseFlare true;
	_lightleft setLightDayLight true;
	_lightleft setLightBrightness 2;  





		_vel = velocity _vehicle;
		_dir = direction _vehicle;
		_speed = 2;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
		sleep 0.1;
		_vel = velocity _vehicle;
		_dir = direction _vehicle;
		_speed = 4;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
		sleep 0.1;
		_vel = velocity _vehicle;
		_dir = direction _vehicle;
		_speed = 6;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
		sleep 0.1;
		_vel = velocity _vehicle;
		_dir = direction _vehicle;
		_speed = 4;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];
		sleep 0.1;
		_vel = velocity _vehicle;
		_dir = direction _vehicle;
		_speed = 2;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+(cos _dir*_speed),(_vel select 2)];

		sleep 0.1;
		deleteVehicle _lightleft;
		sleep 3;

		life_nos_active = 2;

	};

} else {

	hint "You are out of Nos!";

};