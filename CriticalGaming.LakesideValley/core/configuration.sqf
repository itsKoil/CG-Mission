#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_racing = false;
life_cokeaddict = false;
koil_antispam = 0;
life_action_delay = time;
life_damagereturn = false;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_seatbelt = false;
life_seatwarn = false;
life_smoking = false;
life_bonging = false;
life_siren_active = false;
life_clothing_filter = 0;
life_hungerpain = false;
life_antispamactive = false;
life_koil_race = 0;
life_koil_race2 = 0;
life_rip = 0;
life_ApplyAir = false;
prevent_loot = false;
life_nos_active = 2;
life_dontsell = 0;
life_clothing_uniform = -1;
life_koil_rally = 0;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_nos_count = 0;
life_impound_inuse = false;
life_action_inUse = false;
life_sickness = false; 
life_paintball = false;
life_spikestrip = ObjNull;
life_deathpos = 1;
life_respawn_timer = 9; //Scaled in minutes
life_knockout = false;
life_rope = 1;
koil_life = 1;
life_stretcher = 1;
hacking = false;
life_poop = 15;
life_std = 0;
life_maxweightdone = 0;
life_eattotal = 0;
life_dirt = 0;
life_bro = 0;
life_num = 0;
life_pizza = 0;
life_koil_parachute = 0;
life_applypressure = 0;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_fadeSound = false;
life_spam_my_dick2 = 0;
life_spam_my_dick = 0;
life_married = "";
life_siren_on = 0;
koil_altcheck = false;
koildeb = 1;
koildebi = 1;
koildebii = 1;
koildebiii = 1;
koildebiiii = 1;
life_koil_nlr = 0;
life_nospampls = 0;
life_firing_range = false;


//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,4800); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_battery = 70;
life_charging = 2;
life_koil_hh = 2;
life_hunger = 100;
life_revivemoney = false;
life_intox = 0.00;
__CONST__(life_paycheck_period,5); //Five minutes
KWEFookxWQOk = 0;
__CONST__(life_impound_car,8350);
__CONST__(life_impound_boat,8250);
__CONST__(life_impound_air,8850);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 45000; //Starting Bank Money
		life_paycheck = 2000; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 45000; //Starting Bank Money
		life_paycheck = 2000; //Paycheck Amount
	};
	case independent: {
		life_atmcash = 60000;
		life_paycheck = 2000;
	};
	case east:
	{
		life_atmcash = 120000; //Starting Bank Money
		life_paycheck = 2000; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
"life_inv_nos",
"life_inv_condom",
"life_inv_medkit",
"life_inv_cleankit",
"life_inv_weddingring",
"life_inv_bandage",
"life_inv_airkit",
"life_inv_tierope",
"life_inv_stitches",
"life_inv_splint",
"life_inv_mobilephone",
"life_inv_panicbutton",
"life_inv_epipen",
"life_inv_bec",
"life_inv_MDMAu",
"life_inv_MDMAp",
"life_inv_methu",
"life_inv_emerald",
"life_inv_sapphire",
"life_inv_ruby",
"life_inv_methp",
"life_inv_cokeu",
"life_inv_cokep",
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_hackingtool",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_wheat",
	"life_inv_sunflower",
	"life_inv_corn",
	"life_inv_bean",
	"life_inv_cotton",
	"life_inv_olive",
	"life_inv_opium",
	"life_inv_cannabis",
	"life_inv_pumpkin",
	"life_inv_wheatseeds",
	"life_inv_sunflowerseeds",
	"life_inv_cornseeds",
	"life_inv_beanseeds",
	"life_inv_cottonseeds",
	"life_inv_oliveseeds",
	"life_inv_opiumseeds",
	"life_inv_cannabisseeds",
	"life_inv_pumpkinseeds",
	"life_inv_rawgoatmeat",
	"life_inv_rawchicken",
	"life_inv_rawsheepmeat",
	"life_inv_rawrabbit",
	//Additions
	"life_inv_zoobeer", // Duff Beer
	"life_inv_RoadCone",
	"life_inv_RoadConeStrip",
	"life_inv_RoadConeB",
	"life_inv_RoadConeStripB",
	"life_inv_RoadBlockWood",
	"life_inv_RoadBlockConc",
	"life_inv_RoadBlockRebel",
	"life_inv_BarGate",
	"life_inv_ziptie",
	"life_inv_tobacco",
	"life_inv_cigarette",
	"life_inv_kidney",
	"life_inv_zoobeer2",
	"life_inv_jackdaniels",
	"life_inv_vodka",
	"life_inv_jagerbomb",
	"life_inv_absinthe",
	"life_inv_redwine",
	"life_inv_whitewine",
	"life_inv_whiterussian",
	"life_inv_sexonthebeach",
	"life_inv_tequila",
	"life_inv_jackdanielsandcoke",
	"life_inv_raxsrum"	
];













//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
["license_civ_MDMA","civ"],
["license_civ_meth","civ"],
["license_civ_coke","civ"],
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	
	["license_civ_rifle","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

//life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["cannabis",2500],["opium",2500],["marijuana",3000],["turtle",5000],["hackingtool",10000],["blastingcharge",10000],["boltcutter",3500],["methu",400],["methp",4000],["cokeu",400],["cokep",5000],["MDMAu",360],["emerald",12200],["sapphire",15200],["ruby",7200],["MDMAp",3600]];


/*
	Sell / buy arrays
*/
sell_array = 
[
["weddingring",1000],
	["bec",50],
	["medkit",500],
	["cleankit",100],
	["mobilephone",10],
	["panicbutton",10],
	["MDMAu",1100],
	["MDMAp",6700],

	["emerald",21200],
	["sapphire",18200],
	["ruby",19700],

	["methu",1200],
	["methp",7650],
	["cokeu",2100],
	["cokep",8800],
	["apple",5],
	["heroinu",1850],
	["heroinp",2950],
	["salema",690],
	["ornate",990],
	["mackerel",1250],
	["tuna",2950],
	["mullet",1250],
	["catshark",2200],
	["marijuana",3600],
	["turtle",9200],
	["rabbit",6],
	["oilp",3000],
	["water",5],
	["coffee",5],
	["bandage",5],
	["airkit",5],
	["tierope",500],
	["stitches",5],
	["splint",5],
	["epipen",5],
	["turtlesoup",1000],
	["donuts",6],
	["tbacon",2],
	["lockpick",6000],
	["pickaxe",75],
	["redgull",12],
	["peach",5],
	["cocaine",3000],
	["cocainep",4900],
	["diamond",750],
	["diamondc",1650],
	["iron_r",3100],
	["copper_r",1375],
	["salt_r",1650],
	["glass",1850],
	["fuelF",500],
	["wheat",380],
	["sunflower",660],
	["corn",1010],
	["bean",800],
	["cotton",300],
	["olive",2775],
	["opium",1000],
	["cannabis",1000],
	["pumpkin",1100],
	["wheat seed",10],
	["sunflower seed",10],
	["corn seed",10],
	["bean seed",10],
	["cotton seed",10],
	["olive seed",10],
	["opium seed",150],
	["cannabis seed",150],
	["pumpkin seed",50],
	["raw goat meat",500],
	["raw chicken",700],
	["raw sheep meat",500],
	["raw rabbit",700],
	["spikeStrip",120],
	["cement",2650],
	["goldbar",95000], 
	//Deo Additions
	["zoobeer",2], 
	["zoobeer2",2],
	["vodka",12],
	["jackdaniels",12],
	["jagerbomb",22],
	["absinthe",22],
	["redwine",22],
	["whitewine",32],
	["whiterussian",32],
	["sexonthebeach",32],
	["tequila",32],
	["jackdanielsandcoke",32],
	["condom",100],
	["nos",100],
	["BarGate",50],
	["RoadBlockConc",20],
	["RoadBlockWood",75],
	["RoadCone",5],
	["RoadConeStrip",25],
	["RoadConeB",10],
	["RoadConeStripB",50],
	["cigarette",5],
	["Rax's Rum",2]
];
__CONST__(sell_array,sell_array);

buy_array =
[
	["cleankit",1000],
	["medkit",12000],
	["condom",1000],
	["weddingring",100000],
	["bandage",250],
	["airkit",50],
	["nos",45000],
	["tierope",11250],
	["stitches",10],
	["splint",10],
	["epipen",10],
	["marijuana",15000],
	["methp",18000],
	["MDMAp",18000],
	["cokep",18000],
	["apple",65],
	["rabbit",75],
	["bec",500],
	["mobilephone",100],
	["panicbutton",100],
	["salema",1650],
	["ornate",1150],
	["mackerel",2750],
	["tuna",3550],
	["mullet",2250],
	["catshark",3200],
	["marijuana",5500],
	["turtle",9500],
	["water",10],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",15000],
	["pickaxe",1200],
	["redgull",120],
	["fuelF",850],
	["wheat",500],
	["sunflower",660],
	["corn",1840],
	["bean",800],
	["cotton",530],
	["olive",2775],
	["opium",4000],
	["cannabis",4000],
	["pumpkin",1200],
	["wheat seed",20],
	["sunflower seed",20],
	["corn seed",20],
	["bean seed",20],
	["cotton seed",20],
	["olive seed",20],
	["opium seed",250],
	["cannabis seed",250],
	["pumpkin seed",100],
	["raw goat meat",600],
	["raw chicken",800],
	["raw sheep meat",600],
	["raw rabbit",800],
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",150000],
	["hackingtool",150000],
	["boltcutter",25000],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
	// Deo's Adds
	["zoobeer",25],
	["zoobeer2",25],
	["vodka",125],
	["jackdaniels",125],
	["jagerbomb",225],
	["absinthe",225],
	["redwine",225],
	["whitewine",325],
	["whiterussian",325],
	["sexonthebeach",325],
	["tequila",325],
	["jackdanielsandcoke",325],
	["BarGate",500],
	["RoadBlockConc",30000],
	["RoadBlockWood",750],
	["RoadCone",50],
	["RoadConeStrip",250],
	["RoadConeB",100],
	["RoadConeStripB",500],
	["cigarette",9225],
	["Rax's Rum",50]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[







			["tcg_hrly",0],
			["tcg_hrly_white",0],	
			["tcg_hrly_red",0],
			["tcg_hrly_metal",0],
			["tcg_hrly_blue",0],
			["tcg_hrly_limited",0],
			["tcg_hrly_demon",0],
			["tcg_hrly_coco",0],
			["tcg_hrly_orig1",0],
			["tcg_hrly_orig2",0],
			["tcg_hrly_skeleton",0],
			["tcg_hrly_gay",0],

			["wirk_h3_limo",0],






			["C_Van_01_fuel_F",0],
			["I_G_Van_01_fuel_F",0],

			["A3L_BMW135Sport1",0],
			["A3L_BMW135Sport2",0],
			["A3L_BMW135Sport3",0],
			["A3L_BMW135Sport4",0],
			["A3L_BMW135Sport5",0],
			["A3L_BMW135White",0],
			["A3L_BMW135Black",0],
			["A3L_BMW135Blue",0],
			["A3L_BMW135Purple",0],
			["A3L_BMW135Red",0],

			["AM_Holden_RBlue",0],			
			["AM_Holden_RRed",0],
			["AM_Holden_RWhite",0],
			["AM_Holden_RBlack",0],

	["AM_Holden_EMS",0],
		["AM_Holden_Police",0],
		["GNT_C185",0],
		["M1030",0],
		["A3L_EvoXrally_green",0],
		["A3L_EvoXrally_white",0],
		["A3L_EvoXrally_red",0],
		["A3L_EvoXrally_blue",0],
		["A3L_EvoXDarkGreen",0],
		["A3L_OffGreen",0],
		["A3L_EvoXOffYellow",0],
		["A3L_EvoXYellow",0],
		["A3L_EvoXPink",0],
		["A3L_EvoXPurple",0],
		["A3L_EvoXWhite",0],
		["A3L_EvoXBlack",0],
		["A3L_EvoXRed",0],
		["EvoXSo1",0],
		["EvoXSo2",0],
		["EvoXSo3",0],
		["EvoXSo4",0],
		["A3L_TaurusPD1",0],
		["A3L_TaurusPD2",0],
		["A3L_SuburbanCSO",0],
		["A3L_Suburban",0],
		["A3L_SuburbanUM",0],
	["B_QuadBike_01_F",0],
	["C_Hatchback_01_F",0],
	["C_Offroad_01_F", 0],
	["B_G_Offroad_01_F",0],
	["C_SUV_01_F",0],
	["C_Van_01_transport_F",0],
	["C_Hatchback_01_sport_F",0],
	["C_Van_01_fuel_F",0],
	["I_Heli_Transport_02_F",0],
	["C_Van_01_box_F",0],
	["I_Truck_02_transport_F",0],
	["I_Truck_02_covered_F",0],
	["B_Truck_01_transport_F",0],
	["B_Truck_01_box_F", 0],
	["O_MRAP_02_F",0],
	["B_Heli_Light_01_F",0],
	["O_Heli_Light_02_unarmed_F",0],
	["C_Rubberboat",0],
	["C_Boat_Civil_01_F",0],
	["B_Boat_Transport_01_F",0],
	["C_Boat_Civil_01_police_F",0],
	["B_Boat_Armed_01_minigun_F",0],
	["B_SDV_01_F",0],
	["A3L_Bus",0],
	["A3L_Karts",0],
	["A3L_AmberLamps",0],
	["A3L_Laddertruck",0],
	["A3L_Cooper_concept_blue",0],
	["A3L_Cooper_concept_black",0],
	["A3L_Cooper_concept_red",0],
	["A3L_Cooper_concept_white",0],
	["A3L_AMC",0],
	["A3L_AMXRed",0],
	["A3L_AMXWhite",0],
	["A3L_AMXBlue",0],
	["A3L_AMXGL",0],
	["A3L_VolvoS60RBlack",0],
	["A3L_VolvoS60Rred",0],
	["S_Skyline_Red",0],
	["S_Skyline_Blue",0],
	["S_Skyline_Black",0],
	["S_Skyline_Yellow",0],
	["S_Skyline_Purple",0],
	["S_Skyline_White",0],
	["A3L_Ferrari458black",0],
	["A3L_Ferrari458white",0],
	["A3L_Ferrari458blue",0],
	["A3L_SuburbanWhite",0],
	["A3L_SuburbanBlue",0],
	["A3L_SuburbanRed",0],
	["A3L_SuburbanBlack",0],
	["A3L_SuburbanGrey",0],
	["A3L_SuburbanOrange",0],
	["A3L_TahoeWhite",0],
	["A3L_TahoeRed",0],
	["A3L_TahoeBlue",0],
	["A3L_Camaro",0],
	["A3L_FordKaBlue",0],
	["A3L_FordKaRed",0],
	["A3L_FordKaBlack",0],
	["A3L_FordKaWhite",0],
	["A3L_FordKaGrey",0],
	["A3L_Taurus",0],
	["A3L_TaurusBlack",0],
	["A3L_TaurusBlue",0],
	["A3L_TaurusRed",0],
	["A3L_TaurusWhite",0],
	["A3L_GrandCaravan",0],
	["A3L_GrandCaravanBlk",0],
	["A3L_GrandCaravanBlue",0],
	["A3L_GrandCaravanGreen",0],
	["A3L_GrandCaravanRed",0],
	["A3L_GrandCaravanPurple",0],
	["A3L_Challenger",0],
	["A3L_ChallengerGreen",0],
	["A3L_ChallengerRed",0],
	["A3L_ChallengerWhite",0],
	["A3L_ChallengerBlack",0],
	["A3L_ChallengerBlue",0],

	["A3L_ChargerRed",0],
	["A3L_ChargerBlue",0],
	["A3L_ChargerBlack",0],
	["A3L_ChargerWhite",0],
	["A3L_Charger",0],

	["Jonzie_Viper",0],
	["A3L_Escort",0],
	["A3L_EscortTaxi",0],
	["A3L_EscortBlack",0],
	["A3L_EscortBlue",0],
	["A3L_EscortWhite",0],
	["A3L_EscortPink",0],
	["A3L_PuntoRed",0],
	["A3L_PuntoBlack",0],
	["A3L_PuntoWhite",0],
	["A3L_PuntoGrey",0],
	["A3L_RegalBlack",0],
	["A3L_RegalBlue",0],
	["A3L_RegalOrange",0],
	["A3L_RegalRed",0],
	["A3L_RegalWhite",0],
	["A3L_JeepWhiteBlack",0],
	["A3L_JeepGreenBlack",0],
	["A3L_JeepRedTan",0],
	["A3L_JeepRedBlack",0],
	["A3L_JeepGrayBlack",0],
	["A3L_VolksWagenGolfGTired",0],
	["A3L_VolksWagenGolfGTiblack",0],
	["A3L_VolksWagenGolfGTiblue",0],
	["A3L_VolksWagenGolfGTiwhite",0],
	["A3L_F350Black",0],
	["A3L_F350Blue",0],
	["A3L_F350Red",0],
	["A3L_F350White",0],
	["A3L_Dumptruck",0],
	["C_Van_01_box_F",0],
	["C_Van_01_transport_F",0],
	["A3L_GrandCaravanUC",0],
	["A3L_GrandCaravanUCBlack",0],
	["A3L_TaurusFPBLBPD",0],
	["A3L_TaurusFPBLBCSO",0],
	["A3L_TaurusFPBPD",0],
	["A3L_TaurusFPBPDGM",0],
	["A3L_TaurusFPBCSO",0],
	["A3L_TaurusUCBlack",0],
	["A3L_TaurusUCGrey",0],
	["A3L_TaurusUCWhite",0],
	["A3L_TaurusUCBlue",0],
	["A3L_TaurusUCRed",0],
	["A3L_CVPIFPBPD",0],
	["A3L_CVPIFPBCSO",0],
	["A3L_CVPIFPBFG",0],
	["A3L_CVPIFPBLBPD",0],
	["A3L_CVPIFPBLBCSO",0],
	["A3L_CVPIFPBLBFG",0],
	["A3L_TahoeUCPB",0],
	["A3L_TahoeUC",0],
	["A3L_TahoeUCGMPB",0],
	["A3L_TahoeCSOLBPB",0 ],
	["A3L_jailBus",0],
	["A3L_Suburban",0],
	["A3L_SuburbanCSO",0],
	["A3L_SuburbanFG",0],
	["B_MRAP_01_F",7500]
	
	
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[



			["critgamin_smart_civ",8000],
			["critgamin_smart_bleu",8000],
			["critgamin_smart_noir",8000],
			["critgamin_smart_bleufonce",8000],
			["critgamin_smart_rouge",8000],
			["critgamin_smart_jaune",8000],
			["critgamin_smart_rose",8000],
			["critgamin_smart_grise",8000],
			["critgamin_smart_violet",8000],
			["critgamin_smart_orange",8000],
			["critgamin_smart_vert",8000],
 

  			["charger_umb",35000],
  			["charger_umw",35000],

  			["cg_h2_sert",35000],
			["cg_cvpitrooper",10000],
			["cg_taurustrooper",10000],
			["cg_trooperevo",20000],
			["B_Quadbike_01_F",3000],
  			["A3L_ChargerUC",20000],
			["A3L_ChargerUCWhite",20000],
			["A3L_TaurusCO1",20000],
			["A3L_CVPIFPBCSO",20000],
			["A3L_CVPIFPBLBCSO",20000],
			["A3L_TaurusFPBCSO",20000],
			["A3L_TaurusFPBLBCSO",20000],
			["A3L_SuburbanCSO",20000],
			["A3L_SuburbanUM",20000],
			["EvoXSo1",40000],
			["EvoXSo2",40000],
			["EvoXSo3",40000],
			["EvoXSo4",40000],
			["AM_Holden_Police",40000],
			["A3L_CVPIUC",20000],
			["A3L_CVPIUCBlack",20000],
			["A3L_CVPIUCBlue",20000],
			["A3L_CVPIUCWhite",20000],
			["A3L_CVPIUCPink",20000],
			["A3L_CVPIUCRed",20000],
			["A3L_GrandCaravanUC",30000],
			["A3L_GrandCaravanUCBlack",30000],
			["A3L_jailBus",50000],		
			["A3L_TaurusUC",30000],
			["A3L_TaurusUCBlue",30000],
			["A3L_TaurusUCGrey",30000],
			["A3L_TaurusUCRed",30000],
			["A3L_TaurusUCWhite",30000],
			["DAR_TahoePoliceDet",30000],
			["DAR_ExplorerPoliceStealth",30000],
			["B_Quadbike_01_F",3000],
			["I_G_Van_01_fuel_F",35000],
	
			["B_G_Offroad_01_F",65000],

			["A3L_F350Black",35000],
			["A3L_F350Blue",35000],
			["A3L_F350Red",35000],
			["A3L_F350White",35000],
			["C_Van_01_fuel_F",35000],
			["C_Van_01_box_F",40000],
			["C_Van_01_transport_F",35000],
			["A3L_Bus",60000],
			["wirk_h3_limo",130000],
			["Nhz_audia8limo",130000],
			["A3L_Towtruck",4000],			
			["tcg_hrly",25000],
			["tcg_hrly_white",25000],	
			["tcg_hrly_red",25000],
			["tcg_hrly_metal",25000],
			["tcg_hrly_blue",25000],
			["tcg_hrly_limited",25000],
			["tcg_hrly_demon",25000],
			["tcg_hrly_coco",25000],
			["tcg_hrly_orig1",25000],
			["tcg_hrly_orig2",25000],
			["tcg_hrly_skeleton",25000],
			["tcg_hrly_gay",25000],

			["Jonzie_Mini_Cooper",8000],
			["Jonzie_Mini_Cooper_R_spec",20000],
			["B_Quadbike_01_F",3000],

			["critgamin_contown_civ",8000],
			["critgamin_contown_bleu",8000],
			["critgamin_contown_noir",8000],
			["critgamin_contown_bleufonce",8000],
			["critgamin_contown_rouge",8000],
			["critgamin_contown_jaune",8000],
			["critgamin_contown_rose",8000],
			["critgamin_contown_grise",8000],
			["critgamin_contown_violet",8000],
			["critgamin_contown_jaune",8000],
			["critgamin_contown_orange",8000],			
			["critgamin_contown_vert",8000],


			["critgamin_vangmcc_civ",8000],
			["critgamin_vangmcc_civ_noir",8000],
			["critgamin_vangmcc_civ_bleufonce",8000],
			["critgamin_vangmcc_civ_bleu",8000],
			["critgamin_vangmcc_civ_vert",8000],
			["critgamin_vangmcc_civ_rouge",8000],
			["critgamin_vangmcc_civ_jaune",8000],
			["critgamin_vangmcc_civ_rose",8000],
			["critgamin_vangmcc_civ_grise",8000],
			["critgamin_vangmcc_civ_violet",8000],
			["critgamin_vangmcc_civ_orange",8000],



			["A3L_RegalBlack",12000],
			["A3L_RegalBlue",12000],
			["A3L_RegalOrange",12000],
			["A3L_RegalRed",12000],
			["A3L_RegalWhite",12000],
			["A3L_JeepWhiteBlack",15000],
			["A3L_JeepGreenBlack",15000],
			["A3L_JeepRedTan",15000],
			["A3L_JeepRedBlack",15000],
			["A3L_JeepGrayBlack",15000],
			["A3L_VolksWagenGolfGTired",26000],
			["A3L_VolksWagenGolfGTiblack",26000],
			["A3L_VolksWagenGolfGTiblue",26000],
			["A3L_VolksWagenGolfGTiwhite",26000],
			["S_Rangerover_Black",35000],
			["S_Rangerover_Red",35000],
			["S_Rangerover_Blue",35000],
			["S_Rangerover_Green",35000],
			["S_Rangerover_Purple",35000],
			["S_Rangerover_Grey",35000],
			["S_Rangerover_Orange",35000],
			["S_Rangerover_White",35000],
			["A3L_GrandCaravan",30000],
			["A3L_GrandCaravanBlk",30000],
			["A3L_GrandCaravanBlue",30000],
			["A3L_GrandCaravanGreen",30000],
			["A3L_GrandCaravanRed",30000],
			["A3L_GrandCaravanPurple",30000],
			["A3L_Challenger",45000],
			["A3L_ChallengerGreen",45000],
			["A3L_ChallengerRed",45000],
			["A3L_ChallengerWhite",45000],
			["A3L_ChallengerBlack",45000],
			["A3L_ChallengerBlue",45000],
			["A3L_Charger",50000],
			["A3L_ChargerBlack",50000],
			["A3L_ChargerBlue",50000],
			["A3L_ChargerWhite",50000],
			["A3L_ChargerRed",50000],
			["AM_2015C_Black",70000],
			["AM_2015C_blue",70000],
			["AM_2015C_white",70000],

			["Jonzie_Viper",45000],
			["A3L_FordKaBlue",20000],
			["A3L_FordKaRed",20000],
			["A3L_FordKaBlack",20000],
			["A3L_FordKaWhite",20000],
			["A3L_FordKaGrey",20000],
			["A3L_CVWhite",30000],
			["A3L_CVBlack",30000],
			["A3L_CVGrey",30000],
			["A3L_CVRed",30000],
			["A3L_CVPink",30000],
			["A3L_CVBlue",30000],
			["A3L_Taurus",40000],
			["A3L_TaurusBlack",40000],
			["A3L_TaurusBlue",40000],
			["A3L_TaurusRed",40000],
			["A3L_TaurusWhite",40000],
			["DAR_TahoeCivSilver",40000],
			["DAR_TahoeCivBlue",40000],
			["DAR_TahoeCivRed",40000],
			["DAR_TahoeCivBlack",40000],
			["A3L_SuburbanWhite",90000],
			["A3L_SuburbanBlue",90000],
			["A3L_SuburbanRed",90000],
			["A3L_SuburbanBlack",90000],
			["A3L_SuburbanGrey",90000],
			["A3L_SuburbanOrange",90000],
			["A3L_Camaro",95000],
			["A3L_Cooper_concept_blue",25000],
			["A3L_Cooper_concept_black",25000],
			["A3L_Cooper_concept_red",25000],
			["A3L_Cooper_concept_white",25000],
			
			["A3L_RX7_Blue",50000],
			["A3L_RX7_Red",50000],
			["A3L_RX7_White",50000],
			["A3L_RX7_Black",50000],
			

			
			["A3L_AMC",30000],
			["A3L_AMXRed",30000],
			["A3L_AMXWhite",30000],
			["A3L_AMXBlue",30000],
			["A3L_AMXGL",35000],
			["S_Skyline_Red",45000],
			["S_Skyline_Blue",45000],
			["S_Skyline_Black",45000],
			["S_Skyline_Yellow",45000],
			["S_Skyline_Purple",45000],
			["S_Skyline_White",45000],




			["A3L_BMW135Sport1",65000],
			["A3L_BMW135Sport2",65000],
			["A3L_BMW135Sport3",65000],
			["A3L_BMW135Sport4",65000],
			["A3L_BMW135Sport5",65000],
			["A3L_BMW135White",65000],
			["A3L_BMW135Black",65000],
			["A3L_BMW135Blue",65000],
			["A3L_BMW135Purple",65000],
			["A3L_BMW135Red",65000],




			["A3L_EvoXDarkGreen",75000],
			["A3L_OffGreen",75000],
			["A3L_EvoXOffYellow",75000],
			["A3L_EvoXYellow",75000],
			["A3L_EvoXPink",75000],
			["A3L_EvoXPurple",75000],
			["A3L_EvoXWhite",75000],
			["A3L_EvoXBlack",75000],
			["A3L_EvoXRed",75000],
			["S_Vantage_Red",50000],
			["S_Vantage_Blue",50000],
			["S_Vantage_Black",50000],
			["S_Vantage_Yellow",50000],
			["S_Vantage_LightBlue",50000],
			["S_Vantage_Purple",50000],
			["S_Vantage_White",50000],
			["A3L_EvoXrally_green",85000],
			["A3L_EvoXrally_white",85000],
			["A3L_EvoXrally_red",85000],
			["A3L_EvoXrally_blue",85000],
			["A3L_Ferrari458black",90000],
			["A3L_Ferrari458white",90000],
			["A3L_Ferrari458blue",90000],
			["S_PorscheRS_Black",45000],
			["S_PorscheRS_Yellow",45000],
			["S_PorscheRS_White",45000],





			["cg_jeep_cherokee_noir",13900],
			["cg_jeep_cherokee_violet",13900],
			["cg_jeep_cherokee_rose",13900],
			["cg_jeep_cherokee_orange",13900],
			["cg_jeep_cherokee_grise",13900],
			["cg_jeep_cherokee_vert",13900],
			["cg_jeep_cherokee_bleufonce",13900],
			["cg_jeep_cherokee_bleu",13900],
			["cg_jeep_cherokee_white",13900],
			["cg_jeep_cherokee_jaune",13900],





			["cg_porsche_911_82_noir",49000],
			["cg_porsche_911_82_violet",49000],
			["cg_porsche_911_82_rose",49000],
			["cg_porsche_911_82_orange",49000],
			["cg_porsche_911_82_grise",49000],
			["cg_porsche_911_82_vert",49000],
			["cg_porsche_911_82_bleufonce",49000],
			["cg_porsche_911_82_bleu",49000],
			["cg_porsche_911_82_white",49000],
			["cg_porsche_911_82_jaune",49000],

			["cg_porsche_cayenne_noir",49000],
			["cg_porsche_cayenne_violet",49000],
			["cg_porsche_cayenne_rose",49000],
			["cg_porsche_cayenne_orange",49000],
			["cg_porsche_cayenne_grise",49000],
			["cg_porsche_cayenne_vert",49000],
			["cg_porsche_cayenne_bleufonce",49000],
			["cg_porsche_cayenne_bleu",49000],
			["cg_porsche_cayenne_white",49000],
			["cg_porsche_cayenne_jaune",49000],


			["cg_lamborghini_huracan_noir",59000],
			["cg_lamborghini_huracan_violet",59000],
			["cg_lamborghini_huracan_rose",59000],
			["cg_lamborghini_huracan_orange",59000],
			["cg_lamborghini_huracan_grise",59000],
			["cg_lamborghini_huracan_vert",59000],
			["cg_lamborghini_huracan_bleufonce",59000],
			["cg_lamborghini_huracan_bleu",59000],
			["cg_lamborghini_huracan_white",59000],
			["cg_lamborghini_huracan_jaune",59000],



			["cg_nissan_gtr_2012_noir",59000],
			["cg_nissan_gtr_2012_violet",59000],
			["cg_nissan_gtr_2012_rose",59000],
			["cg_nissan_gtr_2012_orange",59000],
			["cg_nissan_gtr_2012_grise",59000],
			["cg_nissan_gtr_2012_vert",59000],
			["cg_nissan_gtr_2012_bleufonce",59000],
			["cg_nissan_gtr_2012_bleu",59000],
			["cg_nissan_gtr_2012_white",59000],
			["cg_nissan_gtr_2012_jaune",59000],


			
			["cg_jeep_blinde_noir",90000],
			["cg_jeep_blinde_violet",90000],
			["cg_jeep_blinde_rose",90000],
			["cg_jeep_blinde_orange",90000],
			["cg_jeep_blinde_grise",90000],
			["cg_jeep_blinde_vert",90000],
			["cg_jeep_blinde_bleufonce",90000],
			["cg_jeep_blinde_bleu",90000],
			["cg_jeep_blinde_white",90000],
			["cg_jeep_blinde_jaune",90000],





			["cg_lancer_evo_x_noir",59000],
			["cg_lancer_evo_x_violet",59000],
			["cg_lancer_evo_x_rose",59000],
			["cg_lancer_evo_x_orange",59000],
			["cg_lancer_evo_x_grise",59000],
			["cg_lancer_evo_x_vert",59000],
			["cg_lancer_evo_x_bleufonce",59000],
			["cg_lancer_evo_x_bleu",59000],
			["cg_lancer_evo_x_white",59000],
			["cg_lancer_evo_x_jaune",59000],

			["cg_lambo_veneno_noir",59000],
			["cg_lambo_veneno_violet",59000],
			["cg_lambo_veneno_rose",59000],
			["cg_lambo_veneno_orange",59000],
			["cg_lambo_veneno_grise",59000],
			["cg_lambo_veneno_vert",59000],
			["cg_lambo_veneno_bleufonce",59000],
			["cg_lambo_veneno_bleu",59000],
			["cg_lambo_veneno_white",59000],
			["cg_lambo_veneno_jaune",59000],


			["cg_ford_mustang_noir",55900],
			["cg_ford_mustang_violet",55900],
			["cg_ford_mustang_rose",55900],
			["cg_ford_mustang_orange",55900],
			["cg_ford_mustang_grise",55900],
			["cg_ford_mustang_vert",55900],
			["cg_ford_mustang_bleufonce",55900],
			["cg_ford_mustang_bleu",55900],
			["cg_ford_mustang_white",55900],
			["cg_ford_mustang_jaune",55900],
			["cg_ford_mustang_rouge",55900],


			["cg_dodge_charger_2015_noir",59000],
			["cg_dodge_charger_2015_violet",59000],
			["cg_dodge_charger_2015_rose",59000],
			["cg_dodge_charger_2015_orange",59000],
			["cg_dodge_charger_2015_grise",59000],
			["cg_dodge_charger_2015_vert",59000],
			["cg_dodge_charger_2015_bleufonce",59000],
			["cg_dodge_charger_2015_bleu",59000],
			["cg_dodge_charger_2015_white",59000],
			["cg_dodge_charger_2015_jaune",59000],
			["cg_dodge_charger_2015_rouge",59000],


			["cg_mercedes_sprint_van_noir",15000],
			["cg_mercedes_sprint_van_violet",15000],
			["cg_mercedes_sprint_van_rose",15000],
			["cg_mercedes_sprint_van_orange",15000],
			["cg_mercedes_sprint_van_grise",15000],
			["cg_mercedes_sprint_van_vert",15000],
			["cg_mercedes_sprint_van_bleufonce",15000],
			["cg_mercedes_sprint_van_bleu",15000],
			["cg_mercedes_sprint_van_white",15000],
			["cg_mercedes_sprint_van_jaune",15000],
			["cg_mercedes_sprint_van_rouge",15000],



			["cg_citroen_c4_noir",19000],
			["cg_citroen_c4_violet",19000],
			["cg_citroen_c4_rose",19000],
			["cg_citroen_c4_orange",19000],
			["cg_citroen_c4_grise",19000],
			["cg_citroen_c4_vert",19000],
			["cg_citroen_c4_bleufonce",19000],
			["cg_citroen_c4_bleu",19000],
			["cg_citroen_c4_white",19000],
			["cg_citroen_c4_jaune",19000],
			["cg_citroen_c4_rouge",19000],



			["cg_renault_twingo_noir",19000],
			["cg_renault_twingo_violet",19000],
			["cg_renault_twingo_rose",19000],
			["cg_renault_twingo_orange",19000],
			["cg_renault_twingo_grise",19000],
			["cg_renault_twingo_vert",19000],
			["cg_renault_twingo_bleufonce",19000],
			["cg_renault_twingo_bleu",19000],
			["cg_renault_twingo_white",19000],
			["cg_renault_twingo_jaune",19000],
			["cg_renault_twingo_rouge",19000],


			["cg_citroen_ds3_noir",14000],
			["cg_citroen_ds3_violet",14000],
			["cg_citroen_ds3_rose",14000],
			["cg_citroen_ds3_orange",14000],
			["cg_citroen_ds3_grise",14000],
			["cg_citroen_ds3_vert",14000],
			["cg_citroen_ds3_bleufonce",14000],
			["cg_citroen_ds3_bleu",14000],
			["cg_citroen_ds3_white",14000],
			["cg_citroen_ds3_jaune",14000],
			["cg_citroen_ds3_rouge",14000],

			["cg_citroen_ds4_noir",15900],
			["cg_citroen_ds4_violet",15900],
			["cg_citroen_ds4_rose",15900],
			["cg_citroen_ds4_orange",15900],
			["cg_citroen_ds4_grise",15900],
			["cg_citroen_ds4_vert",15900],
			["cg_citroen_ds4_bleufonce",15900],
			["cg_citroen_ds4_bleu",15900],
			["cg_citroen_ds4_white",15900],
			["cg_citroen_ds4_jaune",15900],
			["cg_citroen_ds4_rouge",15900],

			["cg_peugeot_308_gti_civ_noir",15900],
			["cg_peugeot_308_gti_civ_violet",15900],
			["cg_peugeot_308_gti_civ_rose",15900],
			["cg_peugeot_308_gti_civ_orange",15900],
			["cg_peugeot_308_gti_civ_grise",15900],
			["cg_peugeot_308_gti_civ_vert",15900],
			["cg_peugeot_308_gti_civ_bleufonce",15900],
			["cg_peugeot_308_gti_civ_bleu",15900],
			["cg_peugeot_308_gti_civ_white",15900],
			["cg_peugeot_308_gti_civ_jaune",15900],
			["cg_peugeot_308_gti_civ_rouge",15900],

			["cg_peugeot_308_rcz_noir",5900],
			["cg_peugeot_308_rcz_violet",5900],
			["cg_peugeot_308_rcz_rose",5900],
			["cg_peugeot_308_rcz_orange",5900],
			["cg_peugeot_308_rcz_grise",5900],
			["cg_peugeot_308_rcz_vert",5900],
			["cg_peugeot_308_rcz_bleufonce",5900],
			["cg_peugeot_308_rcz_bleu",5900],
			["cg_peugeot_308_rcz_white",5900],
			["cg_peugeot_308_rcz_jaune",5900],
			["cg_peugeot_308_rcz_rouge",5900],



			["cg_peugeot_508_civ_noir",59000],
			["cg_peugeot_508_civ_violet",59000],
			["cg_peugeot_508_civ_rose",59000],
			["cg_peugeot_508_civ_orange",59000],
			["cg_peugeot_508_civ_grise",59000],
			["cg_peugeot_508_civ_vert",59000],
			["cg_peugeot_508_civ_bleufonce",59000],
			["cg_peugeot_508_civ_bleu",59000],
			["cg_peugeot_508_civ_white",59000],
			["cg_peugeot_508_civ_jaune",59000],
			["cg_peugeot_508_civ_rouge",59000],


			["cg_ducati_civ_noir",59000],
			["cg_ducati_civ_violet",59000],
			["cg_ducati_civ_rose",59000],
			["cg_ducati_civ_orange",59000],
			["cg_ducati_civ_grise",59000],
			["cg_ducati_civ_vert",59000],
			["cg_ducati_civ_bleufonce",59000],
			["cg_ducati_civ_bleu",59000],
			["cg_ducati_civ_white",59000],
			["cg_ducati_civ_jaune",59000],
			["cg_ducati_civ_rouge",59000],



			["cg_daf_xf_euro6_noir",25900],
			["cg_daf_xf_euro6_violet",25900],
			["cg_daf_xf_euro6_rose",25900],
			["cg_daf_xf_euro6_orange",25900],
			["cg_daf_xf_euro6_grise",25900],
			["cg_daf_xf_euro6_vert",25900],
			["cg_daf_xf_euro6_bleufonce",25900],
			["cg_daf_xf_euro6_white",25900],
			["cg_daf_xf_euro6_jaune",25900],
			["cg_daf_xf_euro6_rouge",25900],

			["cg_renault_magnum_truck_f_noir",45900],
			["cg_renault_magnum_truck_f_violet",45900],
			["cg_renault_magnum_truck_f_rose",45900],
			["cg_renault_magnum_truck_f_orange",45900],
			["cg_renault_magnum_truck_f_grise",45900],
			["cg_renault_magnum_truck_f_vert",45900],
			["cg_renault_magnum_truck_f_white",45900],
			["cg_renault_magnum_truck_f_jaune",45900],








			["cg_peugeot_207_rc_noir",20000],
			["cg_peugeot_207_rc_violet",20000],
			["cg_peugeot_207_rc_rose",20000],
			["cg_peugeot_207_rc_orange",20000],
			["cg_peugeot_207_rc_grise",20000],
			["cg_peugeot_207_rc_vert",20000],
			["cg_peugeot_207_rc_bleufonce",20000],
			["cg_peugeot_207_rc_bleu",20000],
			["cg_peugeot_207_rc_white",20000],
			["cg_peugeot_207_rc_jaune",20000],


			["cg_volkswagen_touareg_noir",20000],
			["cg_volkswagen_touareg_violet",20000],
			["cg_volkswagen_touareg_rose",20000],
			["cg_volkswagen_touareg_orange",20000],
			["cg_volkswagen_touareg_grise",20000],
			["cg_volkswagen_touareg_vert",20000],
			["cg_volkswagen_touareg_bleufonce",20000],
			["cg_volkswagen_touareg_bleu",20000],
			["cg_volkswagen_touareg_white",20000],
			["cg_volkswagen_touareg_jaune",20000],


			["cg_vw_golfvi_noir",20000],
			["cg_vw_golfvi_violet",20000],
			["cg_vw_golfvi_rose",20000],
			["cg_vw_golfvi_orange",20000],
			["cg_vw_golfvi_grise",20000],
			["cg_vw_golfvi_vert",20000],
			["cg_vw_golfvi_bleufonce",20000],
			["cg_vw_golfvi_bleu",20000],
			["cg_vw_golfvi_white",20000],
			["cg_vw_golfvi_jaune",20000],

			["cg_audi_rs4_noir",40000],
			["cg_audi_rs4_violet",40000],
			["cg_audi_rs4_rose",40000],
			["cg_audi_rs4_orange",40000],
			["cg_audi_rs4_grise",40000],
			["cg_audi_rs4_vert",40000],
			["cg_audi_rs4_bleufonce",40000],
			["cg_audi_rs4_bleu",40000],
			["cg_audi_rs4_white",40000],
			["cg_audi_rs4_jaune",40000],


			["cg_audi_rs5_noir",24000],
			["cg_audi_rs5_violet",24000],
			["cg_audi_rs5_rose",24000],
			["cg_audi_rs5_orange",24000],
			["cg_audi_rs5_grise",24000],
			["cg_audi_rs5_vert",24000],
			["cg_audi_rs5_bleufonce",24000],
			["cg_audi_rs5_bleu",24000],
			["cg_audi_rs5_white",24000],
			["cg_audi_rs5_jaune",24000],



			["cg_bmw_1series_m_noir",29000],
			["cg_bmw_1series_m_violet",29000],
			["cg_bmw_1series_m_rose",29000],
			["cg_bmw_1series_m_orange",29000],
			["cg_bmw_1series_m_grise",29000],
			["cg_bmw_1series_m_vert",29000],
			["cg_bmw_1series_m_bleufonce",29000],
			["cg_bmw_1series_m_bleu",29000],
			["cg_bmw_1series_m_white",29000],
			["cg_bmw_1series_m_jaune",29000],



			["cg_renault_megane_rs_2015_noir",30000],
			["cg_renault_megane_rs_2015_violet",30000],
			["cg_renault_megane_rs_2015_rose",30000],
			["cg_renault_megane_rs_2015_orange",30000],
			["cg_renault_megane_rs_2015_grise",30000],
			["cg_renault_megane_rs_2015_vert",30000],
			["cg_renault_megane_rs_2015_bleufonce",30000],
			["cg_renault_megane_rs_2015_bleu",30000],
			["cg_renault_megane_rs_2015_white",30000],
			["cg_renault_megane_rs_2015_jaune",30000],



			["cg_bmw_m6_noir",30000],
			["cg_bmw_m6_violet",30000],
			["cg_bmw_m6_rose",30000],
			["cg_bmw_m6_orange",30000],
			["cg_bmw_m6_grise",30000],
			["cg_bmw_m6_vert",30000],
			["cg_bmw_m6_bleufonce",30000],
			["cg_bmw_m6_bleu",30000],
			["cg_bmw_m6_white",30000],
			["cg_bmw_m6_jaune",30000],



			["cg_raptor_truck_noir",30000],
			["cg_raptor_truck_violet",30000],
			["cg_raptor_truck_rose",30000],
			["cg_raptor_truck_orange",30000],
			["cg_raptor_truck_grise",30000],
			["cg_raptor_truck_vert",30000],
			["cg_raptor_truck_bleufonce",30000],
			["cg_raptor_truck_bleu",30000],
			["cg_raptor_truck_white",30000],
			["cg_raptor_truck_jaune",30000],

			["cg_raptor_truck_va_noir",39000],
			["cg_raptor_truck_va_violet",39000],
			["cg_raptor_truck_va_rose",39000],
			["cg_raptor_truck_va_orange",39000],
			["cg_raptor_truck_va_grise",39000],
			["cg_raptor_truck_va_vert",39000],
			["cg_raptor_truck_va_bleufonce",39000],
			["cg_raptor_truck_va_bleu",39000],
			["cg_raptor_truck_va_white",39000],
			["cg_raptor_truck_va_jaune",39000],

			["cg_bowler_offroad_noir",50000],
			["cg_bowler_offroad_violet",60000],
			["cg_bowler_offroad_rose",50000],
			["cg_bowler_offroad_orange",50000],
			["cg_bowler_offroad_grise",50000],
			["cg_bowler_offroad_vert",50000],
			["cg_bowler_offroad_bleufonce",50000],
			["cg_bowler_offroad_bleu",50000],
			["cg_bowler_offroad_white",50000],
			["cg_bowler_offroad_jaune",50000],







			["cg_hummer_h1_noir",50000],
			["cg_hummer_h1_violet",50000],
			["cg_hummer_h1_rose",50000],
			["cg_hummer_h1_orange",50000],
			["cg_hummer_h1_grise",50000],
			["cg_hummer_h1_vert",50000],
			["cg_hummer_h1_bleufonce",50000],
			["cg_hummer_h1_bleu",50000],
			["cg_hummer_h1_white",50000],
			["cg_hummer_h1_jaune",50000],


			["cg_audi_a8_limo_noir",90000],
			["cg_audi_a8_limo_violet",90000],
			["cg_audi_a8_limo_rose",90000],
			["cg_audi_a8_limo_orange",90000],
			["cg_audi_a8_limo_grise",90000],
			["cg_audi_a8_limo_vert",90000],
			["cg_audi_a8_limo_bleufonce",90000],
			["cg_audi_a8_limo_bleu",90000],
			["cg_audi_a8_limo_white",90000],
			["cg_audi_a8_limo_jaune",90000],
















						//HOLDENS
			["AM_Holden_White",85000],
			["AM_Holden_Black",85000],
			["AM_Holden_Green",85000],
			["AM_Holden_DarkGreen",85000],
			["AM_Holden_OffGreen",85000],
			["AM_Holden_blue",85000],
			["AM_Holden_OffYellow",85000],
			["AM_Holden_Pink",85000],
			["AM_Holden_Purple",85000],
			["AM_Holden_Yellow",85000],
			
			["S_McLarenP1_Black",80000],
			["S_McLarenP1_Blue",85000],
			["S_McLarenP1_Orange",85000],
			["S_McLarenP1_White",85000],
			["S_McLarenP1_Yellow",85000],
			["S_McLarenP1_Silver",85000],
			["A3L_Veyron",50000],
			["A3L_Veyron_red",50000],
			["A3L_Veyron_black",50000],
			["A3L_Veyron_white",50000],
			["A3L_Veyron_orange",50000],


			//Holden racing
			["AM_Holden_RBlue",98500],			
			["AM_Holden_RRed",98500],
			["AM_Holden_RWhite",98500],
			["AM_Holden_RBlack",98500],

			["CG_Lamborghini_Aventador_Red", 100000],
			["CG_Lamborghini_Aventador_Black", 100000],
			["CG_Lamborghini_Aventador_Blue", 100000],
			["CG_Lamborghini_Aventador_Green", 100000],
			["CG_Lamborghini_Aventador_Orange", 100000],
			["CG_Lamborghini_Aventador_Purple", 100000],
			["CG_Lamborghini_Aventador_White", 100000],
			["IVORY_PRIUS",11000],
			["IVORY_LFA",41000],
			["IVORY_C",41000],
			["IVORY_R8",45000],
			["IVORY_R8SPYDER",44000],
			["IVORY_REV",40000]


];
__CONST__(life_garage_sell,life_garage_sell);
