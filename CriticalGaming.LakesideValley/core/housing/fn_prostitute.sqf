#include <macro.h>
/*
	std / hooker / prostitute
*/
if(life_std == 1) exitWith { hint "You are already ready for sex.."; };
life_std = 1;

hint "You are ready for sex for the next 10 minutes.";
sleep 600;

hint "Your sex protection has worn out, damn!";
life_std = 0;