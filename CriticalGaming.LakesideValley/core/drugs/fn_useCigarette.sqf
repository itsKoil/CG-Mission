/*
	File: fn_useCigarette.sqf
	@Deo	
	Description:
	Use Cigarette
*/

#include <macro.h>
private["_smoke"];

if(life_smoking) exitwith { hint "Already smoking!"; };

life_smoking = true;
_unit = player;
_int = 0.1; 
_smokecount = 0;

while{_smokecount < 40} do {
	_smokecount = _smokecount + 1;
	_source = "logic" createVehicleLocal (getpos _unit);   
	_smoke = "#particlesource" createVehicleLocal getpos _source;   
	_smoke setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 12, 13,0],   "",    "Billboard",    0.5,    0.5,    [0,0,0],   [0, 0.2, -0.2],    1, 1.275, 1, 0.2,    [0, 0.2,0],    [[0.4,0.4,1, _int], [1,1,1, 0.01], [1,1,1, 0]],    [1000],    1,    0.04,    "",    "",    _source];   
	_smoke setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];   
	_smoke setDropInterval 0.001;    
	_source attachto [_unit,[0,0.15,0], "neck"]; 
	sleep 0.5;
	deletevehicle _source;
	sleep 15;
};

hint "That was a relaxing smoke..";

life_smoking = false;


