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
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["KAEL_SUITS_BR_F12",nil,17500],

		["KAEL_SUITS_BLK_F",nil,13500],
		["KAEL_SUITS_BR_F",nil,13500],
		["KAEL_SUITS_BR_F3",nil,13500],
		["KAEL_SUITS_BR_F4",nil,13500],
		["KAEL_SUITS_BR_F5",nil,13500],
		["KAEL_SUITS_BR_F6",nil,13500],
		["KAEL_SUITS_BR_F7",nil,13500],
		["KAEL_SUITS_BR_F8",nil,13500],
		["KAEL_SUITS_BR_F9",nil,13500],
		["KAEL_SUITS_BR_F10",nil,13500],
		["KAEL_SUITS_BR_F11",nil,13500],
		["KAEL_SUITS_BR_F13",nil,13500],
		["KAEL_SUITS_BR_F14",nil,13500],


		["KAEL_SUITS_BR_F24",nil,13500],
		["KAEL_SUITS_BR_F25",nil,13500],
		["KAEL_SUITS_BR_F16",nil,13500],
		["KAEL_SUITS_BR_F17",nil,13500],
		["KAEL_SUITS_BR_F18",nil,13500],
		["KAEL_SUITS_BR_F19",nil,13500],
		["KAEL_SUITS_BR_F20",nil,13500],
		["KAEL_SUITS_BR_F21",nil,13500],
		["KAEL_SUITS_BR_F22",nil,13500],
		["KAEL_SUITS_BR_F23",nil,13500],
		["KAEL_SUITS_BR_F15",nil,13500],
		["KAEL_SUITS_BR_F26",nil,13500],
		["KAEL_SUITS_BR_F27",nil,13500],
		["KAEL_SUITS_BR_F28",nil,13500],
		["KAEL_SUITS_BR_F29",nil,13500],
		["KAEL_SUITS_BR_F30",nil,13500],
		["KAEL_SUITS_BR_F31",nil,13500],
		["KAEL_SUITS_BR_F32",nil,13500],
		["KAEL_SUITS_BR_F33",nil,13500],
		["KAEL_SUITS_BR_F34",nil,13500],
		["KAEL_SUITS_BR_F35",nil,13500],


		["TRYK_SUITS_BLK_F","TRYK Black Suit",13500],
		["TRYK_SUITS_BR_F","TRYK Brown Suit",13500],

		["A3L_Suit_Uniform","Suit",13500],


//koil added

		["cg_lahey1",nil,500],
		["cg_lahey2",nil,500],
		["cg_lahey3",nil,500],
		["cg_bendozlia1",nil,500],
		["cg_bendozlia2",nil,500],
		["cg_bendozlia3",nil,500],
		["cg_leppy1",nil,500],
		["cg_whiskey",nil,500],
		["cg_mileshigh1",nil,500],
		["cg_mongo",nil,500],
		["cg_shark",nil,500],

		["cg_wildboy1",nil,500],
		["cg_chickens1",nil,500],
		["cg_et1",nil,500],
		["cg_hand1",nil,500],
		["cg_illuminati1",nil,500],
		["cg_steam1",nil,500],
		["cg_stoned1",nil,500],
		["cg_taylorswift1",nil,500],
		["cg_upyours1",nil,500],
		["cg_woods1",nil,500],
		["cg_strippers1",nil,500],
		["cg_mayan1",nil,500],
		["cg_loading1",nil,500],
		["cg_hearts1",nil,500],
		["cg_deeznuts1",nil,500],
		["cg_dad1",nil,500],
		["cg_awesome1",nil,500],
		["cg_turtles1",nil,500],
		["cg_pika1",nil,500],
		["cg_masterrace1",nil,500],
		["cg_lsd1",nil,500],
		["cg_lambo1",nil,500],
		["cg_kfc1",nil,500],
		["cg_gamerepeat1",nil,500],
		["cg_homer1",nil,500],
		["cg_gameover1",nil,500],
		["cg_fightclub1",nil,500],
		["cg_ferrari1",nil,500],
		["cg_ea1",nil,500],
		["cg_pepsi1",nil,500],
		["cg_mario1",nil,500],
		["cg_lego1",nil,500],
		["cg_burgerking1",nil,500],
		["cg_beats1",nil,500],

		["cg_bb1",nil,500],
		["cg_bipolar1",nil,500],
		["cg_catvideos1",nil,500],
		["cg_condoms1",nil,500],
		["cg_csgo1",nil,500],
		["cg_got1",nil,500],
		["cg_jason1",nil,500],
		["cg_joker1",nil,500],
		["cg_mtv1",nil,500],
		["cg_nike1",nil,500],
		["cg_peanut1",nil,500],
		["cg_superman1",nil,500],
		["cg_tupac1",nil,500],
		["cg_wow1",nil,500],
		["cg_herpderp1",nil,500],
		["cg_iamstupid1",nil,500],
		["cg_imwithstupid1",nil,500],
		["cg_rageface1",nil,500],
		["cg_troll1",nil,500],
		["cg_arsenal1",nil,500],
		["cg_australia1",nil,500],
		["cg_barcelona1",nil,500],
		["cg_brazil1",nil,500],
		["cg_chelsea1",nil,500],
		["cg_manchester1",nil,500],
		["cg_mancity1",nil,500],
		["cg_realmadrid1",nil,500],




//koil added
		["TRYK_U_B_PCUODHs",nil,2500],
		["TRYK_U_B_PCUGHs",nil,2500],
		["TRYK_U_B_PCUHs",nil,2500],

		["TRYK_U_B_BLOD_T","Black T Green P",500],
		["TRYK_U_B_BLKTAN_CombatUniform","Black T Tan P",700],
		["TRYK_U_B_BLKTANR_CombatUniformTshirt","Black T Tan P II",700],
		["TRYK_U_B_BLTAN_T","Black T Dark Tan P",500],
		["TRYK_U_B_fleece_UCP","Leader",500],
		["TRYK_U_B_ODTANR_CombatUniformTshirt","Green T Tan P",800],
		["TRYK_U_B_PCUGs_OD","Jeans Green Hood",800],
		["TRYK_U_B_PCUGs_gry","Jeans Gray Hood ",800],
		["TRYK_U_B_PCUGs_BLK","Jeans Black Hood",800],
		["TRYK_U_B_C02_Tsirt","Baggy Jeans + Black T",500],
		["TRYK_OVERALL_SAGE_BLKboots_nk","Coveralls Green",400],
		["TRYK_OVERALL_nok_flesh","Coveralls Tan",400],
		["TRYK_U_B_wh_blk_Rollup_CombatUniform","White T Black Cargos",700],
		["TRYK_U_B_wh_tan_Rollup_CombatUniform","White T Tan Cargos",700],
		["TRYK_U_pad_hood_Blk","Black Hood Tan Cargos",1000],
		["TRYK_U_denim_hood_blk","Black Hood Jeans II",1500],
		["TRYK_U_denim_jersey_blk","Black T & Jeans",1000],
		["TRYK_U_denim_jersey_blu","Blue T & Jeans",1000],
		["TRYK_U_denim_hood_nc","Green Hood & Jeans",1000],
		["TRYK_U_taki_wh","Tan Mid East",1000],
		["TRYK_U_taki_BLK","Black Mid East",1000],
		["TRYK_U_taki_COY","Brown Mid East ",1000],

		["TRYK_U_B_BLK_T_BK","Black Jeans (Black)",500],
		["TRYK_U_B_BLK_T_WH","Black Jeans (White)",500],
		["TRYK_U_B_Denim_T_BK","Grey Jeans (Black)",500],
		["TRYK_U_B_Denim_T_WH","Grey Jeans (White)",500],
//koil added

		["A3L_Priest_Uniform","Priest Uniform",1000],
		["A3L_Character_Uniform","Life Uniform",1500],
		["A3L_Dude_Outfit","Dude outfit",2000],
		["A3L_Farmer_Outfit","Farmer Outfit",2000],
		["A3L_Worker_Outfit","Worker Outfit",2000],
		["A3LShirt","ArmA 3 Life Shirt",250],
		["A3L_Poop2day","I Pooped Today!",275],
		["A3L_A3LogoPants","A3L Logo Pants",150],
		["pervt_uni","Pervert Shirt",175],
		["BluePlaid_uni","A3L Plaid (Blue)",125],
		["OrangePlaid_uni","A3L Plaid (Orange)",350],
		["PinkPlaid_uni","A3L Plaid (Pink)",350],
		["RedPlaid_uni","A3L Plaid (Red)",350],
		["YellowPlaid_uni","A3L Plaid (Yellow)",350],
		["checkered_uni","A3L Polo (Checkered)",350],
		["GbGyBr_uni","A3L Polo (GB-GY-BR)",350],
		["GnBlBr_uni","A3L Polo (GN-BL-BR)",350],
		["GnGyBr_uni","A3L Polo (GN-GN-GY)",350],
		["GyBlBr_uni","A3L Polo (GY-BL-BR)",350],
		["kingfish_uni","A3L Polo (Kingfish)",350],
		["mothertrucker_uni","A3L Polo (Mothertrucker)",350],
		["OrBlBr_uni","A3L Polo (OR-BL-BR)",350],
		["OrGnGy_uni","A3L Polo (OR-GN-GY)",350],
		["OrGyBr_uni","A3L Polo (OR-GY-BR)",350],
		["PkGnGy_uni","A3L Polo (PK-GN-GY)",350],
		["PkGyBr_uni","A3L Polo (PK-GY-BR)",350],
		["RdBlBr_uni","A3L Polo (RD-BL-BR)",350],
		["RdGnGy_uni","A3L Polo (RD-GN-GY)",350],
		["RdGyBr_uni","A3L Polo (RD-GY-BR)",350],
		["sohoku_uni","A3L Polo (Sohoku)",350],
		["WhBlBr_uni","A3L Polo (WH-BL-BR)",350],
		["WhGyBr_uni","A3L Polo (WH-GY-BR)",350],
		["YlBlBr_uni","A3L Polo (YL-BL-BR)",350],
		["YlGnGy_unI","A3L Polo (YL-GN-GY)",350],
		["YlGyBr_uni","A3L Polo (YL-GY-BR)",350],
		["racer_uni","A3L Racer Uniform",350],
		["taxi_uni","A3L Taxi Uniform",350],
		["arma3","ArmA 3 Polo",350],
		["arma3black","ArmA 3 Polo (Black)",350],
		["ATI","ATI Enthusiast",350],
		["tacobell","Delgado Shirt",350],
		["dutch","Dutch Shirt",350],
		["hanacd","Hannes Academy",350],
		["nvidia","Nvidia Enthusiast",350],
		["SFG","SF Giant",350],
		["walkingdead","The Walking Dead",350],
		["A3L_SpookyMummy","Mummy",40000],
		["A3L_Bikini_Girl","Bikini",40000]	
		];
	};
	
	//Hats
	case 1:
	{
		[


["Masque_Alien1",nil,11120],
["Masque_Anonymous",nil,11120],
["Masque_Chains",nil,11120],
["Payday_GeneralO",nil,11120],
["Casque_Moto",nil,11120],
["Masque_Clinton",nil,11120],
["Masque_speedRunner",nil,11120],
["Masque_Unic",nil,11120],
["Masque_Aubrey",nil,11120],
["Masque_Bonnie",nil,11120],
["Masque_Bush",nil,11120],
["Masque_Mempo",nil,11120],
["Masque_Lincoln",nil,11120],
["Masque_Wolfv2",nil,11120],
["Masque_archNemesis",nil,11120],
["Masque_Arnold",nil,11120],
["Masque_Chuck",nil,11120],
["Masque_Clover",nil,11120],
["Masque_Fish",nil,11120],
["Masque_Hockey",nil,11120],
["Masque_Metalhead",nil,11120],
["Masque_Religieuse",nil,11120],
["Masque_Smiley",nil,11120],
["Masque_Santa",nil,11120],
["Masque_Momie",nil,11120],
["Masque_Optimiste",nil,11120],
["Masque_forceAlpha",nil,11120],
["Masque_GdG",nil,11120],
["Masque_Gombo",nil,11120],
["Masque_Lion",nil,11120],
["Masque_Orc",nil,11120],
["Masque_Mark",nil,11120],
["Masque_Macrilleuse",nil,11120],
["Masque_Hoxton",nil,11120],
["Masque_Incendiaire",nil,11120],
["Masque_Dallas",nil,11120],



			//koil added

			["cg_dinomask",nil,11120],
			["cg_dinomask_p",nil,11120],
			["cg_dinomask_r",nil,11120],


			["cg_horsehead",nil,11120],
			["cg_horsehead_2",nil,11120],
			["cg_horsehead_blk",nil,11120],
			["cg_horsehead_pnk",nil,11120],

			["ALE_H_NewEra_Monster",nil,1120],
			["ALE_H_NewEra_Rouge",nil,1120],
			["ALE_H_NewEra_Superman",nil,1120],
			["ALE_H_NewEra_Cyan",nil,1120],
			["ALE_H_NewEra_Black",nil,1120],
			["ALE_H_NewEra_Lakers",nil,1120],
			["ALE_H_NewEra_Redsox",nil,1120],
			
			["ALE_H_Calot",nil,120],
			["ALE_H_Cowboy_White",nil,120],
			["ALE_H_Cowboy_Black",nil,120],
			["ALE_H_Cowboy_Brown",nil,120],

["kio_vfv_mask","Anon", 1000],
["Kio_Capital_Hat","Top Hat w/Monacle", 1000],
["a3l_hardhat","Hard Hat", 200],
["Kio_Afro_Hat","Brown Afro", 200],
["H_Beret_blk","Black Beret", 200],
["H_Booniehat_khk",nil, 400],
["H_Booniehat_oli",nil, 400],
["H_Booniehat_tan",nil, 400],
["Kio_No1_Hat","#1 Hat", 200],
["Kio_Pirate_Hat","Pirate Hat", 1000],
["Kio_Santa_Hat","Santa Hat", 200],
["Kio_Spinning_Hat","Spinning Hat", 200],
["Kio_Hat","Cute Warm Hat", 200],
["TRYK_H_Bandana_H","Ninja Bandana",100],
["TRYK_H_Bandana_wig","Ninja Bandana II",200],
["TRYK_H_EARMUFF","Ear Protectors",200],
["TRYK_H_headsetcap_blk","Black Hat",100],
["TRYK_H_headsetcap","White Hat",100],
["TRYK_H_pakol2","Mid East Hat",1000],
["TRYK_R_CAP_BLK","Reverse Black",1000],
["TRYK_R_CAP_TAN","Reverse White",1000],
["TRYK_H_wig","Real Hair Wig",2000],
["TRYK_H_woolhat","Slick Beanie",4000],

//koil added


			["A3L_Legoman","Lego Helmet",5000],
			["A3L_soa_helmet","Biker Helmet",400],	
			["A3L_gangster_hat","Gangster Mask",100],
			["A3L_Mask","Mask",100],				
			["A3L_longhairblack","Long Hair Black",120],
			["A3L_longhairblond","Long Hair Blond",120],
			["A3L_longhairbrown","Long Hair Brown",120],
			["A3L_Crown","Crown",120],
			["cowboyhat","Cowboyhat",120],
			["A3L_mexicanhat","Mexican Hat",120],
			["santahat","Santa hat",120],
			["A3L_Sombrero","Sombrero",120],
			["turban","Turban",120],
			["A3L_russianhat","Russianhat",120],
			["H_Cap_tan",nil,120],
			["H_Cap_blk",nil,120],
			["H_Cap_blk_CMMG",nil,120],
			["H_Cap_brn_SPECOPS",nil,120],
			["H_Cap_tan_specops_US",nil,120],
			["H_Cap_khaki_specops_UK",nil,120],
			["H_Cap_grn",nil,120],
			["H_Cap_grn_BI",nil,120],
			["H_Cap_blk_Raven",nil,120],
			["H_Cap_blk_ION",nil,120]

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
		["V_Press_F",nil,2500],
		["A3L_SpiderVest",nil,2500],
		["A3L_SpookyVest",nil,2500],
		["k_cut_1",nil,52500],
		["k_cut_2",nil,52500],
		["k_cut_3",nil,52500],
		["k_cut_4",nil,52500],
		["k_cut_5",nil,52500],
		["k_cut_6",nil,52500],
		["k_cut_7",nil,52500],
		["k_cut_8",nil,52500],
		["k_cut_9",nil,52500],
		["k_cut_10",nil,52500],
		["k_cut_11",nil,52500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[

			["B_AssaultPack_cbr",nil,2500],
			["B_AssaultPack_rgr",nil,2500],
			["B_AssaultPack_khk",nil,2500],
			["B_AssaultPack_sgg",nil,2500],
			["B_AssaultPack_blk",nil,2500],
			["B_TacticalPack_oli",nil,3500],
			["B_Bergen_sgg",nil,4500],
			["B_FieldPack_oli",nil,4500],
			["B_FieldPack_cbr",nil,4500],
			["B_FieldPack_khk",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],



			//koil added bps
			["kaelmonty",nil,5500],	
			["kaelmonty2",nil,5500],
			["kaelmario",nil,5500],	
			["kaelsuits",nil,5500],	
			["koilbatman_1",nil,5500],	
			["koilbender_1",nil,5500],	
			["koilbender_2",nil,5500],	
			["koilclint_1",nil,5500],	
			["koileminem_1",nil,5500],	
			["koilgraf_1",nil,5500],	
			["koilgraf_2",nil,5500],	
			["koilgraf_3",nil,5500],	
			["koilhulk_1",nil,5500],	
			["koiljoker_1",nil,5500],	
			["koilpumpkin_1",nil,5500],	
			["koilsparta_1",nil,5500],	
			["koilsponge_1",nil,5500],	
			["koilturtles_1",nil,5500],	
			["koilkatie",nil,5500],
			["koilpanda",nil,5500],
			["koilaiden",nil,5500],
			["koileagle",nil,5500],
			["koilspecktators",nil,5500],
			["koildarth",nil,5500],
			["koilgucci",nil,5500],
			["koilsmashing",nil,5500],
			["koilgoonsquad",nil,5500],
			["koilcat",nil,5500],
			["koilbp_19",nil,5500],	
			["koilbp_21",nil,5500],	
			["koilbp_22",nil,5500],
			["koilbp_1",nil,5500],	
			["koilbp_2",nil,5500],	
			["koilbp_3",nil,5500],	
			["koilbp_4",nil,5500],	
			["koilbp_5",nil,5500],	
			["koilbp_6",nil,5500],	
			["koilbp_7",nil,5500],	
			["koilbp_8",nil,5500],	
			["koilbp_9",nil,5500],	
			["koilbp_10",nil,5500],	
			["koilbp_11",nil,5500],	
			["koilbp_12",nil,5500],	
			["koilbp_13",nil,5500],	
			["koilbp_14",nil,5500],	
			["koilbp_15",nil,5500],	
			["koilbp_16",nil,5500],	
			["koilbp_17",nil,5500],	
			["koilbp_18",nil,5500]
			//koil addedd


		];
	};
};
