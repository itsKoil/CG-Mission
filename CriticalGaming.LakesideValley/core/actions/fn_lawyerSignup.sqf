/*
lawyer sign up
koils a fuck
*/
private["_unit"];
_unit = player;
_myposy = getPos player;

_nearestPlayer = nearestObjects[getPosATL _unit,["man"],3] select 1; 
life_govPay = 1;

if(player getVariable "restrained") exitWith {};

if(isNil "_nearestPlayer") exitwith {hint "You need a Police Officer standing next to you to sign up, you also need to be Civilian.";};
_cm = 1;
if ( side _nearestPlayer == west && side player == civilian ) then {
	life_govPay = 2;
	[[0,format["%1 just signed up for bonus Government Payments - if this person is not a Judge/Lawyer they can be prosecuted.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;

	while{true} do {
		sleep 1;
		_cm = _cm + 1;
		if(_cm == 300) then {
		_cm = 1;
			KWEFookxWQOk = KWEFookxWQOk + 4000;	
			hint "You just got paid $4000 for Government Work";
		};
		if( player distance _myposy > 100 ) exitwith {
			hint "Your Government Payments have stopped.";
			life_govPay = false;
		};
		if (!alive player) exitWith {
			life_govPay = 1;
		};
		if (life_govPay == 1) exitWith {
		};	
	};

} else {
	hint "You need a Police Officer standing next to you to sign up, you also need to be Civilian.";	
};

