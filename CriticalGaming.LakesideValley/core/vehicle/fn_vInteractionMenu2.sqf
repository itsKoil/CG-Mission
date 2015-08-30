/*
	File: fn_vInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various vehicle actions
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
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_BtnTest"];
if(!dialog) then {
	createDialog "vInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
_isVehicle = if((_curTarget isKindOf "landVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air") OR (_curTarget isKindOf "Bicycle") OR (_curTarget isKindOf "Motorbike") OR (_curTarget isKindOf "Motorcycle") OR (_curTarget isKindOf "A3L_Tahoe_Base")) then {true} else {false};
if(!_isVehicle) exitWith {closeDialog 0;};
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

life_vInact_curTarget = _curTarget;


_Btn1 ctrlSetText "Repair Engine";
_Btn1 buttonSetAction "['hitengine'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "hitEngine";
if(!isnull _check) then {
if(_check > 0) then {
	_Btn1 ctrlEnable true;
} else {
	_Btn1 ctrlEnable false;
};
};
_Btn2 ctrlSetText "Repair Wheel 1";
_Btn2 buttonSetAction "['HitLFWheel'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "HitLFWheel";
if(!isnull _check) then {
if(_check > 0) then {
	_Btn2 ctrlEnable true;
} else {
	_Btn2 ctrlEnable false;
};
};
_Btn3 ctrlSetText "Repair Wheel 2";
_Btn3 buttonSetAction "['HitLF2Wheel'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "HitLF2Wheel";
if(!isnull _check) then {
if(_check > 0) then {
	_Btn3 ctrlEnable true;
} else {
	_Btn3 ctrlEnable false;
};
};
_Btn4 ctrlSetText "Repair Wheel 3";
_Btn4 buttonSetAction "['HitRFWheel'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "HitRFWheel";
if(!isnull _check) then {
if(_check > 0) then {
	_Btn4 ctrlEnable true;
} else {
	_Btn4 ctrlEnable false;
};
};
_Btn5 ctrlSetText "Repair Wheel 4";
_Btn5 buttonSetAction "['HitRF2Wheel'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "HitRF2Wheel";
if(!isnull _check) then {
if(_check > 0) then {
	_Btn5 ctrlEnable true;
} else {
	_Btn5 ctrlEnable false;
};
};

_Btn6 ctrlSetText "Repair Fuel";
_Btn6 buttonSetAction "['HitFuel'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "HitFuel";
if(!isnull _check) then {
if(_check > 0) then {
	_Btn6 ctrlEnable true;
} else {
	_Btn6 ctrlEnable false;
};
};
_Btn7 ctrlSetText "Repair Hull";
_Btn7 buttonSetAction "['HitHull'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "HitHull";
if(!isnull _check) then {
if(_check > 0) then {
	_Btn7 ctrlEnable true;
} else {
	_Btn7 ctrlEnable false;
};
};
_Btn8 ctrlSetText "Repair Glass Rear";
_Btn8 buttonSetAction "['HitRGlass'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "HitRGlass";
if(!isnull _check) then {
if(_check > 0) then {
	_Btn8 ctrlEnable true;
} else {
	_Btn8 ctrlEnable false;
};
};
_Btn9 ctrlSetText "Repair Glass Front";
_Btn9 buttonSetAction "['HitLGlass'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "HitLGlass";
if(!isnull _check) then {
	if(_check > 0) then {
		_Btn9 ctrlEnable true;
	} else {
		_Btn9 ctrlEnable false;
	};
};
_Btn10 ctrlSetText "Repair Glass 1";
_Btn10 buttonSetAction "['HitGlass1'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "HitGlass1";
if(!isnull _check) then {
if(_check > 0) then {
	_Btn10 ctrlEnable true;
} else {
	_Btn10 ctrlEnable false;
};
};
_Btn11 ctrlSetText "Repair Glass 2";
_Btn11 buttonSetAction "['HitGlass2'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "HitGlass2";
if(!isnull _check) then {
if(_check > 0) then {
	_Btn11 ctrlEnable true;
} else {
	_Btn11 ctrlEnable false;
};
};
_Btn12 ctrlSetText "Repair Glass 3";
_Btn12 buttonSetAction "['HitGlass3'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "HitGlass3";
if(!isnull _check) then {
if(_check > 0) then {
	_Btn12 ctrlEnable true;
} else {
	_Btn12 ctrlEnable false;
};
};

_Btn13 ctrlSetText "Repair Glass 4";
_Btn213 buttonSetAction "['HitGlass4'] spawn life_fnc_repairN;";
_check = (vehicle life_vInact_curTarget) getHitPointDamage "HitGlass4";
if(!isnull _check) then {
if(_check > 0) then {
	_Btn13 ctrlEnable true;
} else {
	_Btn13 ctrlEnable false;
};
};