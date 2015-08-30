/*
	File: fn_dropItems.sqf

*/
private["_obj","_unit","_item","_value"];
_unit = _this select 0;

{
	_item = _x;
	_value = missionNamespace getVariable _item;
	
	switch(_item) do
	{

			case "life_inv_nos":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,3,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "Land_SatellitePhone_F" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			
			case "life_inv_panicbutton":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "Land_Battery_F" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_medkit":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "Land_Defibrillator_F" createVehicle _pos;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_zoobeer":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_zoobeer2":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_jackdaniels":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_vodka":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_jagerbomb":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_absinthe":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_redwine":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_whitewhine":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_whiterussian":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_sexonthebeach":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_tequila":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_jackdanielsandcoke":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_raxsrum":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,2,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "plp_bo_BottleBitters" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};








			case "life_inv_spikeStrip":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,3,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "Land_SatellitePhone_F" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};

			case "life_inv_RoadConeStripB":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,3,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "Land_SatellitePhone_F" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};


			case "life_inv_RoadConeB":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,3,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "Land_SatellitePhone_F" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_RoadConeStrip":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,3,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "Land_SatellitePhone_F" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_RoadCone":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,3,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "Land_SatellitePhone_F" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_RoadBlockWood":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,3,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "Land_SatellitePhone_F" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_RoadBlockConc":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,3,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "Land_SatellitePhone_F" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_RoadBlockRebel":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,3,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "Land_SatellitePhone_F" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};
			case "life_inv_BarGate":
			{
				if(_value > 0) then
				{
					_var = [_item,1] call life_fnc_varHandle;
					_pos = _unit modelToWorld[0,3,0];
					_pos = [_pos select 0, _pos select 1, 0];
					_obj = "Land_SatellitePhone_F" createVehicle _pos;
					//_obj setVariable["water",_value,true];
					[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
					_obj setPos _pos;
					_obj setVariable["item",[_var,_value],true];
					missionNamespace setVariable[_x,0];
				};
			};


		case "life_inv_water":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[-0.5,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_BottlePlastic_V1_F" createVehicle _pos;
				//_obj setVariable["water",_value,true];
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};

		case "life_inv_mobilephone":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,2.5,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_MobilePhone_smart_F" createVehicle _pos;
				//_obj setVariable["water",_value,true];
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
	
		case "life_inv_tbacon":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[-0.5,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_TacticalBacon_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		
		case "life_inv_redgull":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[-0.5,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Can_V3_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		
		case "life_inv_fuelE":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_CanisterFuel_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		
		case "life_inv_fuelF":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_CanisterFuel_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		
		case "life_inv_coffee":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[-0.5,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Can_V3_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		
		case "life_inv_MDMAu":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0.5,1.5,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_ButaneCanister_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};

		case "life_inv_MDMAp":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0.5,1.5,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Antibiotic_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};



		case "life_inv_methp":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0.5,1.5,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_VitaminBottle_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};


		case "life_inv_methu":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0.5,1.5,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_DisinfectantSpray_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};

		case "life_inv_bandage":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[-1,2,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Bandage_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};

		default
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,2,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Pillow_grey_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
	};
} foreach (life_inv_items);











