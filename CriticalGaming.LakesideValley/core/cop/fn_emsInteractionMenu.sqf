/*
	File: fn_emsInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37458
#define Btn10 37459
#define Btn11 37460
#define Btn12 37461
#define Btn13 37462
#define Btn14 37463
#define Btn15 37464
#define Btn16 37465
#define Btn17 37466
#define Btn18 37467
#define Btn19 37468
#define Btn20 37469
#define Btn21 37470
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_diseaseon","_koildebiiii","_koildebiii","_koildebii","_koildebi","_koildeb"];
if(!dialog) then {
	createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target

if(!isPlayer _curTarget) exitWith {closeDialog 0;}; //Bad side check?

_display = findDisplay 37400;
		_Btn1 = _display displayCtrl Btn1;
		_Btn2 = _display displayCtrl Btn2;
		_Btn3 = _display displayCtrl Btn3;
		_Btn4 = _display displayCtrl Btn4;
		_Btn5 = _display displayCtrl Btn5;
		_Btn6 = _display displayCtrl Btn6;
		_Btn7 = _display displayCtrl Btn7;
		_Btn8 = _display displayCtrl Btn8;
		_Btn9 = _display displayCtrl Btn9;
		_Btn10 = _display displayCtrl Btn10;
		_Btn11 = _display displayCtrl Btn11;
		_Btn12 = _display displayCtrl Btn12;
		_Btn13 = _display displayCtrl Btn13;
		_Btn14 = _display displayCtrl Btn14;
		_Btn15 = _display displayCtrl Btn15;
		_Btn16 = _display displayCtrl Btn16;
		_Btn17 = _display displayCtrl Btn17;
		_Btn18 = _display displayCtrl Btn18;
		_Btn19 = _display displayCtrl Btn19;
		_Btn20 = _display displayCtrl Btn20;
		_Btn21 = _display displayCtrl Btn21;
life_pInact_curTarget = _curTarget;

	_Btn8 ctrlSetText localize "STR_pInAct_ApplyAirKit";
	_Btn8 buttonSetAction "[life_pInact_curTarget] call life_fnc_ApplyAir; [life_pInact_curTarget] call life_fnc_emsInteractionMenu;";
	if(life_inv_airkit > 0) then { _Btn8 ctrlEnable true; } else { _Btn8 ctrlEnable false; };

	_Btn7 ctrlSetText localize "STR_pInAct_StopEscort";
	_Btn7 buttonSetAction "[life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_emsInteractionMenu;";

	_Btn6 ctrlSetText localize "STR_pInAct_Escort";
	_Btn6 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";

_Btn9 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn9 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar;";

_diseaseon = "No Disease";

_bleedingon = "No Head Trauma";
_woundedon = "No Chest Trauma";
_unconciouson = "No Leg Trauma";
_fractureon = "No Arm Trauma";

_koildeb = 1;
_koildeb = life_pInact_curTarget getVariable "bleedingon";

_koildebi = 1;
_koildebi = life_pInact_curTarget getVariable "woundedon";

_koildebii = 1;
_koildebii = life_pInact_curTarget getVariable "fractureon";

_koildebiii = 1;
_koildebiii = life_pInact_curTarget getVariable "unconciouson";

_koildebiiii = 1;
_koildebiiii = life_pInact_curTarget getVariable "diseaseon";


if(_koildebiiii > 1) then {
			if(_koildebiiii == 2) then {
				_diseaseon = "Ebola Symptoms";	
			};

			if(_koildebiiii == 3) then {
				_diseaseon = "Sars Symptoms";	
			};

			if(_koildebiiii == 4) then {
				_diseaseon = "Heavy Infection";	
			};

			if(_koildebiiii == 5) then {
				_diseaseon = "Small Pox";	
			};

			if(_koildebiiii == 6) then {
				_diseaseon = "Influenza";	
			};

			if(_koildebiiii > 6) then {
				_diseaseon = "Malaria";	
			};
};

if(_koildebiii > 1) then {
				if(_koildebiii == 2) then {
					_unconciouson = "Left Leg Cuts";	
				};

				if(_koildebiii == 3) then {
					_unconciouson = "Left Leg Wound";	
				};

				if(_koildebiii == 4) then {
					_unconciouson = "Left Leg Fracture";	
				};

				if(_koildebiii == 5) then {
					_unconciouson = "Right Leg Cuts";	
				};

				if(_koildebiii == 6) then {
					_unconciouson = "Right Leg Wound";	
				};

				if(_koildebiii == 7) then {
					_unconciouson = "Right Leg Fracture";	
				};
};


if(_koildebii > 1) then {
				if(_koildebii == 2) then {
					_fractureon = "Left Arm Cuts";	
				};

				if(_koildebii == 3) then {
					_fractureon = "Left Arm Wound";	
				};

				if(_koildebii == 4) then {
					_fractureon = "Left Arm Fracture";	
				};

				if(_koildebii == 5) then {
					_fractureon = "Right Arm Cuts";	
				};

				if(_koildebii == 6) then {
					_fractureon = "Right Arm Wound";	
				};

				if(_koildebii == 7) then {
					_fractureon = "Right Arm Fracture";	
				};
};


if(_koildebi > 1) then {
				if(_koildebi == 2) then {
					_woundedon = "Chest Cuts";	
				};

				if(_koildebi == 3) then {
					_woundedon = "Chest Wounds";	
				};

				if(_koildebi == 4) then {
					_woundedon = "Chest Fracture";	
				};

				if(_koildebi == 5) then {
					_woundedon = "Internal Bleeding";	
				};
};

if(_koildeb > 1) then {
				if(_koildeb == 2) then {
					_bleedingon = "Head Cuts";	
				};

				if(_koildeb == 3) then {
					_bleedingon = "Head Wounds";	
				};

				if(_koildeb == 4) then {
					_bleedingon = "Head Fracture";	
				};

				if(_koildeb == 5) then {
					_bleedingon = "Brain Swelling";	
				};
};




_Btn1 ctrlSetText format["%1", _bleedingon];
_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_bandagePlayer; closeDialog 0;";
if((life_pInact_curTarget getVariable "bleedingon") > 1) then { _Btn1 ctrlEnable true;} else {_Btn1 ctrlEnable false;};

_Btn2 ctrlSetText format["%1", _woundedon];
_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_stitchPlayer; closeDialog 0;";
if((life_pInact_curTarget getVariable "woundedon") > 1) then { _Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false;};

_Btn3 ctrlSetText format["%1", _fractureon];
_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_splintPlayer; closeDialog 0;";
if((life_pInact_curTarget getVariable "fractureon") > 1) then { _Btn3 ctrlEnable true;} else {_Btn3 ctrlEnable false;};

_Btn4 ctrlSetText format["%1", _unconciouson];
_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_epipenPlayer; closeDialog 0;";
if((life_pInact_curTarget getVariable "unconciouson") > 1) then { _Btn4 ctrlEnable true;} else {_Btn4 ctrlEnable false;};

_Btn5 ctrlSetText format["%1", _diseaseon];
_Btn5 buttonSetAction "[life_pInact_curTarget] call life_fnc_emsInteractionMenu2;";
if(_koildebiiii > 1 || _diseaseon != "No Disease") then { _Btn5 ctrlEnable true; } else { _Btn5 ctrlEnable false; };

