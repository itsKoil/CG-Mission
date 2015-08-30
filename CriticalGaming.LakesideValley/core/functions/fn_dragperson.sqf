
//drag body

_curt = cursortarget;
if(!dialog && cursorTarget isKindOf "Man" && !alive cursorTarget  && (player distance cursorTarget) < 3 && (!cursorTarget getVariable "drag")) then {
	_curt attachTo [player,[0,1,0]];
	_curt setVariable["drag",true,true];
	player playAction "grabDrag";
	player forceWalk true;
};