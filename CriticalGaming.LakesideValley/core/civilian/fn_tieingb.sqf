/*

*/
private["_civ"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _civ) exitWith {};

//Monitor excessive blindfolding
[] spawn
{
	private["_time"];
	while {true} do
	{
		_time = time;
		waitUntil {(time - _time) > (6 * 90)};
		
		if(!(player getVariable["blindfolded",FALSE])) exitWith {};
		if(!([west,getPos player,30] call life_fnc_nearUnits) && (player getVariable["blindfolded",FALSE]) && vehicle player == player) exitWith {

			player setVariable["blindfolded",FALSE,TRUE];
			"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
			"colorCorrections" ppEffectCommit 3;
			"colorCorrections" ppEffectEnable false;	
			titleText["You managed to wriggle free.","PLAIN"];
		};
	};
};

cutText ["Removed Blindfold!","PLAIN",2];	

cutText["You are blindfolded.","PLAIN",0,true];

"colorCorrections" ppEffectEnable true;			
"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.01],  [0, 0, 0, 0.0]]; 
"colorCorrections" ppEffectCommit 0.3;


while { true } do
{	
	if(!(player getvariable "blindfolded")) exitWith {
		cutText ["You are no longer blind folded.!","PLAIN",2];	
		player setVariable ["blindfolded",false,true];
	};
	if(!alive player) exitWith
	{
		cutText ["You are no longer blind folded.!","PLAIN",2];	
		player setVariable ["blindfolded",false,true];
	};

	if(vehicle player != player) then
	{
		//disableUserInput true;
		if(driver (vehicle player) == player) then {player action["eject",vehicle player];};
	};
	sleep 1;
	"colorCorrections" ppEffectEnable true;			
	"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.01],  [0, 0, 0, 0.0]]; 
	"colorCorrections" ppEffectCommit 0.3;
};

//disableUserInput false;
"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
"colorCorrections" ppEffectCommit 3;
"colorCorrections" ppEffectEnable false;	

if(alive player) then
{
	player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
	player setVariable ["blindfolded",false,true];
	detach player;
};