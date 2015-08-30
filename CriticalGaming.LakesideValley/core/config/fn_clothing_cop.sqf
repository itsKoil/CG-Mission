#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Cop Shop"];


_ret = [];
switch (_filter) do
{
	case 0: 
	{
		_ret set[count _ret,["TCG_PDCPL","Police LT+",500]];	
		_ret set[count _ret,["TCG_PDSGT","Police Seargant",500]];	
		_ret set[count _ret,["TCG_PDO","Police Officer",500]];	
		_ret set[count _ret,["TCG_TRP","Trooper 1",500]];	
		_ret set[count _ret,["TCG_TRPCPL","Trooper 2",500]];	
		_ret set[count _ret,["TCG_TRPSGT","Trooper 3",500]];	
		_ret set[count _ret,["TCG_PDDTC","Detective Uniform",500]];	
		_ret set[count _ret,["U_007_US_Police_officer","High Police Uniform",500]];
		_ret set[count _ret,["A3L_Sheriff_Uniform","Sheriff Uniform",500]];
		_ret set[count _ret,["sheriff_uni2","State Trooper",500]];
	    _ret set[count _ret,["fto_uni","Field Training Uniform",150]];
		_ret set[count _ret,["FBI_uni","FBI Uniform",150]];
		_ret set[count _ret,["doj_uni","Correctional Officer",150]];
		_ret set[count _ret,["CG_SERT1",nil,150]];
		_ret set[count _ret,["CG_SERT2",nil,150]];
		_ret set[count _ret,["CG_SERT3",nil,150]];
		_ret set[count _ret,["CG_SERT4",nil,150]];
		_ret set[count _ret,["CG_SERT5",nil,150]];
		_ret set[count _ret,["CG_SERT6",nil,150]];
		_ret set[count _ret,["CG_SERT7",nil,150]];
		_ret set[count _ret,["TRYK_U_B_BLK","Pilot Coveralls",150]];
		_ret set[count _ret,["ranger_uni","Ranger",150]];
		_ret set[count _ret,["A3L_Police_Uniform","Sheriff & Command",150]];
	};


	case 1:
	{
		_ret set[count _ret,["H_007_policecap","Police Hat",50]];
		_ret set[count _ret,["Campaign_Hat_Light",nil,50]];
		_ret set[count _ret,["Campaign_Hat_Tan",nil,50]];
		_ret set[count _ret,["Campaign_Hat_Washedout",nil,50]];
		_ret set[count _ret,["Campaign_Hat_Dark",nil,50]];
		_ret set[count _ret,["A3L_sargehat",nil,50]];
		_ret set[count _ret,["TCG_pdav_helmet","Pilot Helmet",50]];	
		_ret set[count _ret,["TRYK_H_DELTAHELM_NV","Negotiator Helmet",50]];
		_ret set[count _ret,["A3L_policehelmet","Police Hat",50]];
		_ret set[count _ret,["TRYK_H_PASGT_BLK","SERT Standard Helmet",50]];
		_ret set[count _ret,["CG_sert_H1",nil,50]];
		_ret set[count _ret,["CG_sert_H2",nil,50]];
		_ret set[count _ret,["CG_sert_H3",nil,50]];
		_ret set[count _ret,["CG_sert_H4",nil,50]];
		_ret set[count _ret,["CG_sert_H5",nil,50]];
		_ret set[count _ret,["CG_sert_H6",nil,50]];
		_ret set[count _ret,["CG_sert_H7",nil,50]];
		_ret set[count _ret,["H_HelmetSpecB","SERT Helmet S",50]];
		_ret set[count _ret,["TRYK_H_PASGT_OD","SERT Helmet OD",50]];
	};
	
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,55],
			["G_Balaclava_combat",nil,55],
			["G_Balaclava_lowprofile",nil,55],
			["G_Bandanna_oli",nil,55],
			["G_Bandanna_blk",nil,55],
			["A3L_Balaclava",nil,60],
			["TRYK_SPGEAR_Glasses","Negotiator Glasses",60],
			["Mask_M40","Gas Mask",50]	
		];
	};


	case 3:
	{
		_ret set[count _ret,["A3L_policevest2","Police Vest",200]];	
		_ret set[count _ret,["TCG_policevest1","Police High Threat",200]];	
		_ret set[count _ret,["Jamie_Sheriff1","Sheriff High Threat",200]];	
		_ret set[count _ret,["A3L_rangervest1","Trooper Blue Vest",200]];	
		_ret set[count _ret,["TCG_troopervest1","Trooper Vest",200]];	
		_ret set[count _ret,["A3L_fbivest1","FBI Vest",200]];
		_ret set[count _ret,["A3L_sheriffvest3","Sheriff Vest (Green)",200]];
		_ret set[count _ret,["A3L_sheriffvest2","Sheriff Vest (Grey)",200]];
		_ret set[count _ret,["A3L_sheriffvest1","Sheriff Vest (Tan)",200]];
		_ret set[count _ret,["V_Rangemaster_belt","Pilot Holster",200]];
		_ret set[count _ret,["A3L_policevest2","Police",200]];
		_ret set[count _ret,["A3L_policevest1","Police 2",200]];
		_ret set[count _ret,["A3L_rangervest1","Ranger",200]];
		_ret set[count _ret,["TRYK_V_ArmorVest_Delta2","SERT Rig Black",200]];
		_ret set[count _ret,["TRYK_V_ArmorVest_tan2","SERT Rig Tan",200]];
		_ret set[count _ret,["TRYK_V_ArmorVest_green2","SERT Rig Green",200]];
		_ret set[count _ret,["TRYK_V_ArmorVest_Brown2","SERT Rig Brown",200]];
		_ret set[count _ret,["k_black_so","Black SO Vest",150]];
		_ret set[count _ret,["k_white_so","White SO Vest",150]];
		_ret set[count _ret,["k_white2_so","Off White SO Vest",150]];
		_ret set[count _ret,["k_green_so","Green SO Vest",150]];
		_ret set[count _ret,["k_green2_so","Off Green SO Vest",150]];
		_ret set[count _ret,["k_brown_so","Brown SO Vest",150]];
		_ret set[count _ret,["k_darkblue_so","Dark Blue SO Vest",150]];
		_ret set[count _ret,["k_leather_so","Leather SO Vest",150]];
		_ret set[count _ret,["k_lime_so","Lime SO Vest",150]];
		_ret set[count _ret,["k_orange_so","Orange SO Vest",150]];
		_ret set[count _ret,["k_red_so","Red SO Vest",150]];
		_ret set[count _ret,["k_yellow_so","Yellow SO Vest",150]];
		_ret set[count _ret,["TRYK_V_Bulletproof","Negotiator Vest",150]];
	};
	
	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt",800],
			["AM_PoliceBelt",800]
		];
	};
};

_ret;
