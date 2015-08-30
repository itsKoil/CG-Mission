/*
File: spawn job vehicle
*/




	vehspawned = createVehicle ["critgamin_vangmcc_food", (getmarkerPos "job_spawn_1"), [], 0, "NONE"];
	jobstand setvariable ["job1",false,true];



hint "You get paid extra for staying inside your vehicle..";


_fkit = 6;
while{_fkit > 0} do {
	sleep 300;
	if(vehicle player != player) then {
		if (typeOf (vehicle player) IN ["critgamin_vangmcc_clothing","critgamin_vangmcc_fedex","critgamin_vangmcc_food","critgamin_vangmcc_general"]) then
		{
			life_atmcash = life_atmcash + 5000;
			hint "You just got paid an extra $5000";
		};
	};
	_fkit = _fkit - 1;
};
vehspawned setVelocity [0, 0, 0];
deleteVehicle vehspawned;