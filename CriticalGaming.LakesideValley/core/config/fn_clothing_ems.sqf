/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"EMS Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["cg_ems1", nil, 20],
			["cg_ems2", nil, 20],
			["cg_ems3", nil, 20],
			["cg_ems4", nil, 20],
			["cg_ems5", nil, 20],
			["cg_ems6", nil, 20],
			["cg_ems7", nil, 20],
			["cg_ems8", nil, 20],
			["cg_ems9", nil, 20],
			["cg_ems10", nil, 20],
			["cg_ems11", nil, 20],
			["U_B_Wetsuit", nil, 20]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["firehat", nil, 20],
			["A3L_medic_helmet", nil, 20],
			["TCG_pdav_helmet", nil, 20],
			["H_CrewHelmetHeli_B", nil, 20]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			//beards
			["SFG_Tac_smallBeardB",nil,25],
			["SFG_Tac_smallBeardD",nil,25],
			["SFG_Tac_smallBeardG",nil,25],
			["SFG_Tac_smallBeardO",nil,25],
			["SFG_Tac_BeardB",nil,25],
			["SFG_Tac_BeardD",nil,25],
			["SFG_Tac_BeardG",nil,25],
			["SFG_Tac_BeardO",nil,25],
			["SFG_Tac_chinlessbB",nil,25],
			["SFG_Tac_chinlessbD",nil,25],
			["SFG_Tac_chinlessbG",nil,25],
			["SFG_Tac_chinlessbO",nil,25],
			["SFG_Tac_moustacheB",nil,25],
			["SFG_Tac_moustacheD",nil,25],
			["SFG_Tac_moustacheG",nil,25],
			["SFG_Tac_moustacheO",nil,25],
			["SFG_Tac_ChopsB",nil,25],
			["SFG_Tac_ChopsD",nil,25],
			["SFG_Tac_ChopsG",nil,25],
			["SFG_Tac_ChopsO",nil,25],
			//bears end

			["A3L_FatHead",nil,25],
			["Payday_Cagoule",nil,25],
			["Masque_Chirurgical",nil,25],
			["Masque_Solitaire",nil,25],
			["G_Spectacles",nil,25],
			["G_Spectacles_Tinted",nil,25],
			["G_Goggles_VR",nil,25],


			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["SERTvest2","Invisi-Vest 2.0",50],
			["V_RebreatherB",nil,50]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
	/*		["TRYK_B_Medbag",nil,50],
			["TRYK_B_Medbag_BK",nil,50],
			["TRYK_B_Medbag_OD",nil,50],
			["TRYK_B_Medbag_ucp",nil,50],
			["B_FieldPack_ocamo",nil,50],
			["B_Carryall_oucamo",nil,50],
			//koil
			["koilmedicwhite",nil,5500],
			["koilmedicred",nil,5500],
			["koilmedicblue",nil,5500],
			["koilmedicyellow",nil,5500],

	*/
			["cg_invisbp","Invisi-Backpack 2.0",50],
			["cg_invisbp","Invisi-Backpack 2.0",50]
		];
	};
};
