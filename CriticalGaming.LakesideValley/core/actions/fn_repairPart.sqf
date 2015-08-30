/*
	File: fn_repairTruck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for toolkits, to be revised in later version.
*/
private["_veh","_upp","_ui","_progress","_pgText","_cP","_displayName"];
_veh = cursorTarget;
_curFix = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
life_interrupted = false;
if(isNull _veh) exitwith {};
if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Bicycle") OR (_veh isKindOf "Motorbike") OR (_veh isKindOf "Motorcycle") OR (_veh isKindOf "Air") OR (_veh isKindOf "A3L_Tahoe_Base")) then
{
	if("ToolKit" in (items player)) then
	{
		life_action_inUse = true;
		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format[localize "STR_NOTF_Repairing",_displayName];
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0;

		playSound3D ["cg_sndimg\sounds\repair.ogg", player, false, getPosASL player, 1, 1, 125];

		while{true} do
		{
			sleep 0.05;
			if(animationState player != "Acts_carFixingWheel") then {
				player playmovenow "Acts_carFixingWheel";  
				player disableAI "anim"; 
			};
			if (player distance _veh > 8) exitwith {};
			_cP = _cP + 0.05;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {};
			if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			if(life_interrupted) exitWith {};
		};
		player switchmove "";
		life_action_inUse = false;
		5 cutText ["","PLAIN"];
		if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
		if(player != vehicle player) exitWith {titleText[localize "STR_NOTF_RepairingInVehicle","PLAIN"];};
		(vehicle player) setHitPointDamage [_curFix, 1.0];
		titleText[localize "STR_NOTF_RepairedVehicle","PLAIN"];
	} else {
		life_action_inUse = true;
		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format[localize "STR_NOTF_Repairing",_displayName];
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0;
		playSound3D ["cg_sndimg\sounds\repair.ogg", player, false, getPosASL player, 1, 1, 125];

		while{true} do
		{
			sleep 0.3;
			if(animationState player != "Acts_carFixingWheel") then {
				player playmovenow "Acts_carFixingWheel";  
				player disableAI "anim"; 
			};
	
			_cP = _cP + 0.01;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {};
			if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			if(life_interrupted) exitWith {};
		};
		player switchmove "";
		life_action_inUse = false;
		5 cutText ["","PLAIN"];
		if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
		if(player != vehicle player) exitWith {titleText[localize "STR_NOTF_RepairingInVehicle","PLAIN"];};
		(vehicle player) setHitPointDamage [_curFix, 1.0];
		titleText[localize "STR_NOTF_RepairedVehicle","PLAIN"];
	};
};

