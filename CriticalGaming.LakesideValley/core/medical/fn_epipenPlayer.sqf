/*
Function to epipen player by Koil
*/
private["_display","_curTarget"];

if(!life_action_inUse) then {
life_action_inUse = true;

if (vehicle player == player) then 
{
	player switchMove "amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon";
	[[player,"amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	waitUntil{animationState player != "amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon";};
};
if(isPlayer cursorTarget) then {
	cursorTarget setVariable ["unconciouson",1,true]; 
}
else {
	_blah = "Target moved, procedure failed.";
	hint format["%1", _blah];
};

};
life_action_inUse = false;	