/*
	File: fn_lootHouse.sqf
*/
private["_loothouse","_lchance","_looting","_lootArr","_loot"];
_lchance = random (100); 					//INCREASE THIS TO MAKE LOOT HARDER TO GET
_loothouse = cursorTarget;
_lootArr = ["emerald","ruby","sapphire"];			//ADD ANY Y MENU ITEMS YOU LIKE HERE
_loot = _lootArr select floor random count _lootArr;


if(isNull _loothouse) exitWith {};
if((_loothouse getVariable ["looted",false])) exitWith { hint "This building has recently been looted"};
if(playerSide != civilian) exitWith {hint "You can't loot this building!"};

if (prevent_loot) exitWith { hint "Already looting building!" };
if !(alive player) exitWith {};

_looting = true;
prevent_loot = true;
 
disableSerialization;

_cP = 120;
 		hint format["%1 time remaining",_cp];
if(_looting) then
{
	while{true} do
	{
		sleep 1;
		_cP = _cP - 1;
		hint format["%1 time remaining",_cp];

		if(_cP == 0) exitWith {};
		if(player distance _loothouse > 8) exitWith {hint "You must stay close to the building to loot!"};
		if!(alive player) exitWith {};
	};

	if!(alive player) exitWith { _looting = false; };
	if(player distance _loothouse > 5) exitWith { hint "You must stay close to the building to loot!";5 cutText ["","PLAIN"];_looting = false; };
	5 cutText ["","PLAIN"];

			if(_lchance <= 30) then 
			{ 

				_l1chance = random (10);

				if(_l1chance <= 5) then 
				{ 
					hint parseText format["<t align='center'><t size='1'>SCORE!</t><br/><t color='#FFFF00'><t size='1.5'>You found some valuables & Guns</t>"];
				} else {
					hint parseText format["<t align='center'><t size='1'>SCORE!</t><br/><t color='#FFFF00'><t size='1.5'>You found some valuables</t>"];
				};

				if(_l1chance == 5) then 
				{ 
	             
				_m16a4 = "WeaponHolder" createVehicle getPos this; 
				_m16a4 addWeaponCargo ["RH_vp70",1]; 
				_m16a4 addMagazineCargo ["RH_18Rnd_9x19_VP",5]; 
				_m16a4 setPos [getPos this select 0,getPos this select 1,0.78]; 
				_m16a4 SETDIR 80

	            };
				if(_l1chance == 4) then 
				{ 
	             
				_m16a4 = "WeaponHolder" createVehicle getPos this; 
				_m16a4 addWeaponCargo ["RH_fn57",1]; 
				_m16a4 addMagazineCargo ["RH_20Rnd_57x28_FN",5]; 
				_m16a4 setPos [getPos this select 0,getPos this select 1,0.78]; 
				_m16a4 SETDIR 80

	            };
	            if(_l1chance == 3) then 
				{ 

				_m16a4 = "WeaponHolder" createVehicle getPos this; 
				_m16a4 addWeaponCargo ["RH_sbr9_des",1]; 
				_m16a4 addMagazineCargo ["RH_32Rnd_9mm_M822",5]; 
				_m16a4 setPos [getPos this select 0,getPos this select 1,0.78]; 
				_m16a4 SETDIR 80
	             
	            };
	            if(_l1chance == 2) then 
				{ 

	            _m16a4 = "WeaponHolder" createVehicle getPos this; 
				_m16a4 addWeaponCargo ["chakFNP90_50rnd_skin1",1]; 
				_m16a4 addMagazineCargo ["chakFNP90_57x28_B_skin1",5]; 
				_m16a4 setPos [getPos this select 0,getPos this select 1,0.78]; 
				_m16a4 SETDIR 80 

	            };
	            if(_l1chance == 1) then 
				{ 
	             
				_m16a4 = "WeaponHolder" createVehicle getPos this; 
				_m16a4 addWeaponCargo ["SMG_01_F",1]; 
				_m16a4 addMagazineCargo ["30Rnd_45ACP_Mag_SMG_01",5]; 
				_m16a4 setPos [getPos this select 0,getPos this select 1,0.78]; 
				_m16a4 SETDIR 80

	            };
  
			[true,_loot,1] call life_fnc_handleInv;
			} else {
			hint"You found nothing of any value";
			};
};

_looting = false;
prevent_loot = false;
_loothouse setVariable ["looted",true,false];
sleep (15 * 60);
_loothouse setVariable ["looted",false,false];