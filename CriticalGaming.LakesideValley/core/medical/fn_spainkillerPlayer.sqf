/*
Function to pain killer player by Koil
*/
private["_display","_curTarget"];
if (vehicle player == player) then 
{
	closeDialog 0;
	[[player,"amovpknlmstpsraswlnrdnon_amovpknlmstpsnonwnondnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	waitUntil{animationState player != "amovpknlmstpsraswlnrdnon_amovpknlmstpsnonwnondnon";};
	[[player,"amovpknlmstpsraswlnrdnon_amovpknlmstpsnonwnondnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	waitUntil{animationState player != "amovpknlmstpsraswlnrdnon_amovpknlmstpsnonwnondnon";};
};

[[0,format["%1 is using a-class tranqulizers on %2.",name player,name cursorTarget]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 10],false] spawn life_fnc_MP; 
	 _koildebiiii = player getVariable "diseaseon";
	if(_koildebiiii > 6) then {
	player setVariable ["diseaseon",1,true]; 
	} else {
	player setDamage 1;
	[[0,format["%1 just gave themself the wrong medication.",name player,name cursorTarget]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 10],false] spawn life_fnc_MP; 
	};

