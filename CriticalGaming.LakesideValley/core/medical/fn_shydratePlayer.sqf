/*
Function to hydrate player by Koil
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

	 _koildebiiii = player getVariable "diseaseon";
	 [[0,format["%1 is self administrating fluids.",name player,name cursorTarget]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 10],false] spawn life_fnc_MP; 
	if(_koildebiiii == 2) then {
	player setVariable ["diseaseon",1,true]; 
	} else {
	player setDamage 1;
	[[0,format["%1 just gave themself the wrong medication.",name player,name cursorTarget]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 10],false] spawn life_fnc_MP; 
	};

