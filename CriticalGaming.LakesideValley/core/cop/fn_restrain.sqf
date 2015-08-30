/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the client.
*/
private["_cop","_player"];
_cop = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_player = player;
if(isNull _cop) exitWith {};

//Monitor excessive restrainment
[] spawn
{
	private["_time"];
	while {true} do
	{
		_time = time;
		waitUntil {(time - _time) > (5 * 60)};
		
		if(!(player getVariable["restrained",FALSE])) exitWith {};
		if(!([west,getPos player,30] call life_fnc_nearUnits) && (player getVariable["restrained",FALSE]) && vehicle player == player) exitWith {
			player setVariable["restrained",FALSE,TRUE];
			player setVariable["Escorting",FALSE,TRUE];
			player setVariable["transporting",false,true];
			player setVariable["tied",FALSE,TRUE];
			detach player;
			titleText[localize "STR_Cop_ExcessiveRestrain","PLAIN"];
		};
	};
};


titleText[format[localize "STR_Cop_Retrained",_cop getVariable["realname",name _cop]],"PLAIN"];

if((player getVariable["surrender",FALSE])) then { player setVariable["surrender",FALSE,TRUE]; };

player switchMove ""; 

while {player getVariable "restrained"} do
{

	if(vehicle player == player) then {
		if(player getVariable "restrained2") then {
			player playmovenow "Acts_AidlPsitMstpSsurWnonDnon_loop";  
			player disableAI "anim"; 
		} else {
			player playMove "AmovPercMstpSnonWnonDnon_Ease";
		};
	};
	
	_state = vehicle player;
	waitUntil {(animationState player != "AmovPercMstpSnonWnonDnon_Ease" && animationState player != "Acts_AidlPsitMstpSsurWnonDnon_loop") || !(player getvariable "restrained") || vehicle player != _state};
			
	if(!alive player) exitwith
	{
		waitUntil {alive player};
		[] call life_fnc_restrainAction3;
	};
	
	if(!alive _cop) exitWith {
		player setVariable ["Escorting",false,true];
		detach player;
	};
	
	if(vehicle player != player) then
	{
		//disableUserInput true;
		if(driver (vehicle player) == player) then {player action["eject",vehicle player];};
	};
};

//disableUserInput false;
		
if(alive player) then
{
	player switchmove "Acts_AidlPsitMstpSsurWnonDnon_loop";  
	player disableAI "anim"; 
	sleep 1;
	player playmovenow "Acts_AidlPsitMstpSsurWnonDnon_out";       
	player disableAI "anim"; 

	player setVariable ["Escorting",false,true];
	player setVariable ["transporting",false,true];
	detach player;
};