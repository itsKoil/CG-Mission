/*
Function to viral player by Koil
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
if(isPlayer cursorTarget) then {
[[0,format["%1 is giving a government class anti-viral to %2.",name player,name cursorTarget]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 10],false] spawn life_fnc_MP;
	 _koildebiiii = cursorTarget getVariable "diseaseon";
	if(_koildebiiii == 4) then {
	cursorTarget setVariable ["diseaseon",1,true];  
	} else {
	cursorTarget setDamage 1;
	player setVariable ["diseaseon",_koildebiiii,true]; 
	[[0,format["%1 just gave the wrong medication to %2.",name player,name cursorTarget]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 10],false] spawn life_fnc_MP; 
	};
}
else {
	_blah = "Target moved, procedure failed.";
	hint format["%1", _blah];
};

