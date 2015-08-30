/*

	Description:
	Pulls civilians out of a car if it's stopped.
*/

hint "This car will be destroyed in 30 seconds..";
_vehicle = cursorTarget;

if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "A3L_Tahoe_Base"))) exitWith {};

_vehdestroy = 30;

while{_vehdestroy > 0} do {
	if(player distance _vehicle >= 10) exitWith {
		hint "Vehicle not Destroyed! Distance check failed.";
	};
	_vehdestroy = _vehdestroy - 1;
	sleep 1;
	hint format["Vehicle will be destroyed in %1 seconds",_vehdestroy]
};

if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "A3L_Tahoe_Base"))) exitWith {};

if(player distance _vehicle >= 10) exitWith {
	hint "Vehicle not Destroyed! Distance check failed.";
};


_vehicle setdamage 1;

hint "Vehicle Destroyed!";