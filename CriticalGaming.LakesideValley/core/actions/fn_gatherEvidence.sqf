/*
File: gather evidence
*/
private["_curTarget","_unit","_victim","_crime","_target","_revivable","_targetName","_ui","_progressBar","_titleText","_cP","_title"];
_curTarget = cursorTarget;
_target = cursorTarget;


titleText["Gathering Evidence 10+ seconds..","PLAIN"];
titleFadeOut 10;

_target setVariable["EVIDO",player,TRUE];

_evidence = _curTarget getVariable "evidence";

_suspect = _evidence select 0;
_victim = _evidence select 1;
_crime = _evidence select 2;

//Setup our progress bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable ["life_progress",displayNull];
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["Gathering Evidence on %1",_suspect];
_progressBar progressSetPosition 0.01;
_cP = 0.01;
_bad = 0;
//Lets reuse the same thing!
while {true} do
{
	if(animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon") then {
		[[player,"AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	};

	sleep 0.2;
	_cP = _cP + 0.01;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["Gathering Evidence on %1",_suspect];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_istazed) exitWith {}; //Tazed
	if(life_interrupted) exitWith {};
	if((player getVariable["restrained",false])) exitWith {};
	if(player distance _target > 4) exitWith {_bad = 1;};
	if(_target getVariable["EVIDO",ObjNull] != player) exitWith {};
};
//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
if(_target getVariable ["EVIDO",ObjNull] != player) exitWith { hint "Someone is already gathering this evidence.."; };
if(_bad == 1) exitWith { hint "You moved to far from the evidence"; };





hint format["You have collected evidence and have been paid $8000 for adding %1 to the wanted list for a %2 crime.", name _suspect, _crime];

if(_crime == "187") then {
	[[getPlayerUID _suspect,_suspect getVariable["realname",name _suspect],"187"],"life_fnc_wantedAdd",false,false] call life_fnc_MP;
};
if(_crime == "211") then {
	[[getPlayerUID _suspect,_suspect getVariable["realname",name _suspect],"211"],"life_fnc_wantedAdd",false,false] call life_fnc_MP;
};
if(_crime == "487") then {
	[[getPlayerUID _suspect,_suspect getVariable["realname",name _suspect],"487"],"life_fnc_wantedAdd",false,false] call life_fnc_MP;
};
if(_crime == "334") then {
	[[getPlayerUID _suspect,_suspect getVariable["realname",name _suspect],"334"],"life_fnc_wantedAdd",false,false] call life_fnc_MP;
};



KWEFookxWQOk = KWEFookxWQOk + 8000;	
deleteVehicle _curTarget;