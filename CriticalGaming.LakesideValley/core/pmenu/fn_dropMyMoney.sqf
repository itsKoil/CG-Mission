/*
	File: drop money on the ground bruv
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives the selected amount of money to the selected player.
*/
private["_obj","_unit","_item","_value"];
_unit = _this select 0;

{
	_item = _x;
	_value = missionNamespace getVariable _item;
	
	switch(_item) do
	{
		case "KWEFookxWQOk":
		{
			if(KWEFookxWQOk > 0) then
			{
				_pos = _unit modelToWorld[0,1,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "cg_money_stack_1" createVehicle _pos;
				_obj setVariable["item",["money",_value],true];
				_obj setPos _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				missionNamespace setVariable[_x,0];
			};
		};
	};
} foreach (life_inv_items + ["KWEFookxWQOk"]);

KWEFookxWQOk = 0;

[0] call SOCK_fnc_updatePartial;