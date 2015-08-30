#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{

	case "uc_car":
	{
		_return = [
			["cg_audi_r8_plus_white",85000],


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


			["critgamin_smart_civ",18000],
			["critgamin_smart_bleu",18000],
			["critgamin_smart_noir",18000],
			["critgamin_smart_bleufonce",18000],
			["critgamin_smart_rouge",18000],
			["critgamin_smart_jaune",18000],
			["critgamin_smart_rose",18000],
			["critgamin_smart_grise",18000],
			["critgamin_smart_violet",18000],
			["critgamin_smart_orange",18000],
			["critgamin_smart_vert",18000],
 




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





			["S_Vantage_Red",50000],
			["S_Vantage_Blue",50000],
			["S_Vantage_Black",50000],
			["S_Vantage_Yellow",50000],
			["S_Vantage_LightBlue",50000],
			["S_Vantage_Purple",50000],
			["S_Vantage_White",50000],

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
	};


	case "dezzie_car":
	{
		_return = [
			["IVORY_PRIUS",25000],
			["IVORY_R8",130000],
			["IVORY_R8SPYDER",130000],
			["IVORY_REV",200000],	
			["ivory_lfa",330000],
			["ivory_c",560000]
		];
	};
	case "kart_shop":
	{
		_return = [
			["A3L_Karts",10000],
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["cg_merc_atego_firetruck_reg",25000],
			["cg_mercedes_sprinter_ems",25000],
			["IVORY_PRIUS",25000],
			["cg_evoems1",20000],
			["cg_evoems2",20000],
			["cg_evoems3",20000],
			["A3L_CVPILBFD",2300],
			["cg_ambulanceexpansion",20000],
			["DAR_TahoeEMS",22500],
			["AM_Holden_EMS",25000]
		];
	};
	case "med_air_hs": {
		_return = [
			["ivory_b206_rescue",65000],
			["IVORY_BELL512_RESCUE",85000],
			["ems_chopper",90000],
			["ems_chopper2",90000],
			["ems_orca",120000],
			["ems_orca2",120000],
			["O_Heli_Transport_04_medevac_F", 120000]
		];
	};
	case "exo_car":
	{
		_return = [

			
			["cg_peugeot_207_rc_noir",40000],
			["cg_peugeot_207_rc_violet",40000],
			["cg_peugeot_207_rc_rose",40000],
			["cg_peugeot_207_rc_orange",40000],
			["cg_peugeot_207_rc_grise",40000],
			["cg_peugeot_207_rc_vert",40000],
			["cg_peugeot_207_rc_bleufonce",40000],
			["cg_peugeot_207_rc_bleu",40000],
			["cg_peugeot_207_rc_white",40000],
			["cg_peugeot_207_rc_jaune",40000],

			["A3L_Cooper_concept_blue",45000],
			["A3L_Cooper_concept_black",45000],
			["A3L_Cooper_concept_red",45000],
			["A3L_Cooper_concept_white",45000],
			



			["cg_volkswagen_touareg_noir",60000],
			["cg_volkswagen_touareg_violet",60000],
			["cg_volkswagen_touareg_rose",60000],
			["cg_volkswagen_touareg_orange",60000],
			["cg_volkswagen_touareg_grise",60000],
			["cg_volkswagen_touareg_vert",60000],
			["cg_volkswagen_touareg_bleufonce",60000],
			["cg_volkswagen_touareg_bleu",60000],
			["cg_volkswagen_touareg_white",60000],
			["cg_volkswagen_touareg_jaune",60000],


			["cg_vw_golfvi_noir",60000],
			["cg_vw_golfvi_violet",60000],
			["cg_vw_golfvi_rose",60000],
			["cg_vw_golfvi_orange",60000],
			["cg_vw_golfvi_grise",60000],
			["cg_vw_golfvi_vert",60000],
			["cg_vw_golfvi_bleufonce",60000],
			["cg_vw_golfvi_bleu",60000],
			["cg_vw_golfvi_white",60000],
			["cg_vw_golfvi_jaune",60000],


			["A3L_AMC",80000],
			["A3L_AMXRed",80000],
			["A3L_AMXWhite",80000],
			["A3L_AMXBlue",80000],
			["A3L_AMXGL",85000],


			["cg_jeep_cherokee_noir",139000],
			["cg_jeep_cherokee_violet",139000],
			["cg_jeep_cherokee_rose",139000],
			["cg_jeep_cherokee_orange",139000],
			["cg_jeep_cherokee_grise",139000],
			["cg_jeep_cherokee_vert",139000],
			["cg_jeep_cherokee_bleufonce",139000],
			["cg_jeep_cherokee_bleu",139000],
			["cg_jeep_cherokee_white",139000],
			["cg_jeep_cherokee_jaune",139000],



			["cg_audi_rs4_noir",140000],
			["cg_audi_rs4_violet",140000],
			["cg_audi_rs4_rose",140000],
			["cg_audi_rs4_orange",140000],
			["cg_audi_rs4_grise",140000],
			["cg_audi_rs4_vert",140000],
			["cg_audi_rs4_bleufonce",140000],
			["cg_audi_rs4_bleu",140000],
			["cg_audi_rs4_white",140000],
			["cg_audi_rs4_jaune",140000],


			["cg_audi_rs5_noir",240000],
			["cg_audi_rs5_violet",240000],
			["cg_audi_rs5_rose",240000],
			["cg_audi_rs5_orange",240000],
			["cg_audi_rs5_grise",240000],
			["cg_audi_rs5_vert",240000],
			["cg_audi_rs5_bleufonce",240000],
			["cg_audi_rs5_bleu",240000],
			["cg_audi_rs5_white",240000],
			["cg_audi_rs5_jaune",240000],


			["cg_bmw_1series_m_noir",290000],
			["cg_bmw_1series_m_violet",290000],
			["cg_bmw_1series_m_rose",290000],
			["cg_bmw_1series_m_orange",290000],
			["cg_bmw_1series_m_grise",290000],
			["cg_bmw_1series_m_vert",290000],
			["cg_bmw_1series_m_bleufonce",290000],
			["cg_bmw_1series_m_bleu",290000],
			["cg_bmw_1series_m_white",290000],
			["cg_bmw_1series_m_jaune",290000],


			["S_Vantage_Red",350000],
			["S_Vantage_Blue",350000],
			["S_Vantage_Black",350000],
			["S_Vantage_Yellow",350000],
			["S_Vantage_LightBlue",350000],
			["S_Vantage_Purple",350000],
			["S_Vantage_White",350000],


			["cg_renault_megane_rs_2015_noir",390000],
			["cg_renault_megane_rs_2015_violet",390000],
			["cg_renault_megane_rs_2015_rose",390000],
			["cg_renault_megane_rs_2015_orange",390000],
			["cg_renault_megane_rs_2015_grise",390000],
			["cg_renault_megane_rs_2015_vert",390000],
			["cg_renault_megane_rs_2015_bleufonce",390000],
			["cg_renault_megane_rs_2015_bleu",390000],
			["cg_renault_megane_rs_2015_white",390000],
			["cg_renault_megane_rs_2015_jaune",390000],



			["cg_bmw_m6_noir",390000],
			["cg_bmw_m6_violet",390000],
			["cg_bmw_m6_rose",390000],
			["cg_bmw_m6_orange",390000],
			["cg_bmw_m6_grise",390000],
			["cg_bmw_m6_vert",390000],
			["cg_bmw_m6_bleufonce",390000],
			["cg_bmw_m6_bleu",390000],
			["cg_bmw_m6_white",390000],
			["cg_bmw_m6_jaune",390000],






			["cg_raptor_truck_noir",390000],
			["cg_raptor_truck_violet",390000],
			["cg_raptor_truck_rose",390000],
			["cg_raptor_truck_orange",390000],
			["cg_raptor_truck_grise",390000],
			["cg_raptor_truck_vert",390000],
			["cg_raptor_truck_bleufonce",390000],
			["cg_raptor_truck_bleu",390000],
			["cg_raptor_truck_white",390000],
			["cg_raptor_truck_jaune",390000],


			["cg_porsche_911_82_noir",490000],
			["cg_porsche_911_82_violet",490000],
			["cg_porsche_911_82_rose",490000],
			["cg_porsche_911_82_orange",490000],
			["cg_porsche_911_82_grise",490000],
			["cg_porsche_911_82_vert",490000],
			["cg_porsche_911_82_bleufonce",490000],
			["cg_porsche_911_82_bleu",490000],
			["cg_porsche_911_82_white",490000],
			["cg_porsche_911_82_jaune",490000],

			["cg_porsche_cayenne_noir",490000],
			["cg_porsche_cayenne_violet",490000],
			["cg_porsche_cayenne_rose",490000],
			["cg_porsche_cayenne_orange",490000],
			["cg_porsche_cayenne_grise",490000],
			["cg_porsche_cayenne_vert",490000],
			["cg_porsche_cayenne_bleufonce",490000],
			["cg_porsche_cayenne_bleu",490000],
			["cg_porsche_cayenne_white",490000],
			["cg_porsche_cayenne_jaune",490000],


			["cg_bowler_offroad_noir",490000],
			["cg_bowler_offroad_violet",490000],
			["cg_bowler_offroad_rose",490000],
			["cg_bowler_offroad_orange",490000],
			["cg_bowler_offroad_grise",490000],
			["cg_bowler_offroad_vert",490000],
			["cg_bowler_offroad_bleufonce",490000],
			["cg_bowler_offroad_bleu",490000],
			["cg_bowler_offroad_white",490000],
			["cg_bowler_offroad_jaune",490000],



			["A3L_Ferrari458black",530000],
			["A3L_Ferrari458white",530000],
			["A3L_Ferrari458blue",530000],


			["cg_lamborghini_huracan_noir",590000],
			["cg_lamborghini_huracan_violet",590000],
			["cg_lamborghini_huracan_rose",590000],
			["cg_lamborghini_huracan_orange",590000],
			["cg_lamborghini_huracan_grise",590000],
			["cg_lamborghini_huracan_vert",590000],
			["cg_lamborghini_huracan_bleufonce",590000],
			["cg_lamborghini_huracan_bleu",590000],
			["cg_lamborghini_huracan_white",590000],
			["cg_lamborghini_huracan_jaune",590000],




						//HOLDENS
			["AM_Holden_White",785000],
			["AM_Holden_Black",785000],
			["AM_Holden_Green",785000],
			["AM_Holden_DarkGreen",785000],
			["AM_Holden_OffGreen",785000],
			["AM_Holden_blue",785000],
			["AM_Holden_OffYellow",785000],
			["AM_Holden_Pink",785000],
			["AM_Holden_Purple",785000],
			["AM_Holden_Yellow",785000],


			["cg_nissan_gtr_2012_noir",1290000],
			["cg_nissan_gtr_2012_violet",1290000],
			["cg_nissan_gtr_2012_rose",1290000],
			["cg_nissan_gtr_2012_orange",1290000],
			["cg_nissan_gtr_2012_grise",1290000],
			["cg_nissan_gtr_2012_vert",1290000],
			["cg_nissan_gtr_2012_bleufonce",1290000],
			["cg_nissan_gtr_2012_bleu",1290000],
			["cg_nissan_gtr_2012_white",1290000],
			["cg_nissan_gtr_2012_jaune",1290000],


			
			["cg_jeep_blinde_noir",1390000],
			["cg_jeep_blinde_violet",1390000],
			["cg_jeep_blinde_rose",1390000],
			["cg_jeep_blinde_orange",1390000],
			["cg_jeep_blinde_grise",1390000],
			["cg_jeep_blinde_vert",1390000],
			["cg_jeep_blinde_bleufonce",1390000],
			["cg_jeep_blinde_bleu",1390000],
			["cg_jeep_blinde_white",1390000],
			["cg_jeep_blinde_jaune",1390000],




			["A3L_Veyron",1500000],
			["A3L_Veyron_red",1500000],
			["A3L_Veyron_black",1500000],
			["A3L_Veyron_white",1500000],
			["A3L_Veyron_orange",1500000],





			["cg_lancer_evo_x_noir",1590000],
			["cg_lancer_evo_x_violet",1590000],
			["cg_lancer_evo_x_rose",1590000],
			["cg_lancer_evo_x_orange",1590000],
			["cg_lancer_evo_x_grise",1590000],
			["cg_lancer_evo_x_vert",1590000],
			["cg_lancer_evo_x_bleufonce",1590000],
			["cg_lancer_evo_x_bleu",1590000],
			["cg_lancer_evo_x_white",1590000],
			["cg_lancer_evo_x_jaune",1590000],

			["cg_lambo_veneno_noir",1590000],
			["cg_lambo_veneno_violet",1590000],
			["cg_lambo_veneno_rose",1590000],
			["cg_lambo_veneno_orange",1590000],
			["cg_lambo_veneno_grise",1590000],
			["cg_lambo_veneno_vert",1590000],
			["cg_lambo_veneno_bleufonce",1590000],
			["cg_lambo_veneno_bleu",1590000],
			["cg_lambo_veneno_white",1590000],
			["cg_lambo_veneno_jaune",1590000],



			//Holden racing
			["AM_Holden_RBlue",1985000],			
			["AM_Holden_RRed",1985000],
			["AM_Holden_RWhite",1985000],
			["AM_Holden_RBlack",1985000],

			["cg_audi_r8_plus_white",2285000],

			["CG_Lamborghini_Aventador_Red", 3000000],
			["CG_Lamborghini_Aventador_Black", 3000000],
			["CG_Lamborghini_Aventador_Blue", 3000000],
			["CG_Lamborghini_Aventador_Green", 3000000],
			["CG_Lamborghini_Aventador_Orange", 3000000],
			["CG_Lamborghini_Aventador_Purple", 3000000],
			["CG_Lamborghini_Aventador_White", 3000000]

		];
	};










	case "chev_car":
	{
		_return = [
			["DAR_TahoeCivSilver",140000],
			["DAR_TahoeCivBlue",140000],
			["DAR_TahoeCivRed",140000],
			["DAR_TahoeCivBlack",140000],
			["A3L_SuburbanWhite",190000],
			["A3L_SuburbanBlue",190000],
			["A3L_SuburbanRed",190000],
			["A3L_SuburbanBlack",190000],
			["A3L_SuburbanGrey",190000],
			["A3L_SuburbanOrange",190000],
			["A3L_Camaro",195000]
		];
	};
	case "ford_car":
	{
		_return = [
			["A3L_CVWhite",60000],
			["A3L_CVBlack",60000],
			["A3L_CVGrey",60000],
			["A3L_CVRed",60000],
			["A3L_CVPink",60000],
			["A3L_CVBlue",60000],
			["A3L_Taurus",90000],
			["A3L_TaurusBlack",90000],
			["A3L_TaurusBlue",90000],
			["A3L_TaurusRed",90000],
			["A3L_TaurusWhite",90000],




			["cg_raptor_truck_noir",390000],
			["cg_raptor_truck_violet",390000],
			["cg_raptor_truck_rose",390000],
			["cg_raptor_truck_orange",390000],
			["cg_raptor_truck_grise",390000],
			["cg_raptor_truck_vert",390000],
			["cg_raptor_truck_bleufonce",390000],
			["cg_raptor_truck_bleu",390000],
			["cg_raptor_truck_white",390000],
			["cg_raptor_truck_jaune",390000],


			["cg_raptor_truck_va_noir",390000],
			["cg_raptor_truck_va_violet",390000],
			["cg_raptor_truck_va_rose",390000],
			["cg_raptor_truck_va_orange",390000],
			["cg_raptor_truck_va_grise",390000],
			["cg_raptor_truck_va_vert",390000],
			["cg_raptor_truck_va_bleufonce",390000],
			["cg_raptor_truck_va_bleu",390000],
			["cg_raptor_truck_va_white",390000],
			["cg_raptor_truck_va_jaune",390000],

			["cg_ford_mustang_noir",559000],
			["cg_ford_mustang_violet",559000],
			["cg_ford_mustang_rose",559000],
			["cg_ford_mustang_orange",559000],
			["cg_ford_mustang_grise",559000],
			["cg_ford_mustang_vert",559000],
			["cg_ford_mustang_bleufonce",559000],
			["cg_ford_mustang_bleu",559000],
			["cg_ford_mustang_white",559000],
			["cg_ford_mustang_jaune",559000],
			["cg_ford_mustang_rouge",559000]


		];
	};
	case "dodge_car":
	{
		_return =
		[
			["A3L_GrandCaravan",70000],
			["A3L_GrandCaravanBlk",70000],
			["A3L_GrandCaravanBlue",70000],
			["A3L_GrandCaravanGreen",70000],
			["A3L_GrandCaravanRed",70000],
			["A3L_GrandCaravanPurple",70000],
			["A3L_Challenger",95000],
			["A3L_ChallengerGreen",95000],
			["A3L_ChallengerRed",95000],
			["A3L_ChallengerWhite",95000],
			["A3L_ChallengerBlack",95000],
			["A3L_ChallengerBlue",95000],
			["A3L_Charger",110000],
			["A3L_ChargerBlack",110000],
			["A3L_ChargerBlue",110000],
			["A3L_ChargerWhite",110000],
			["A3L_ChargerRed",110000],
			["AM_2015C_Black",210000],
			["AM_2015C_blue",210000],
			["AM_2015C_white",210000],


			["cg_dodge_charger_2015_noir",259000],
			["cg_dodge_charger_2015_violet",259000],
			["cg_dodge_charger_2015_rose",259000],
			["cg_dodge_charger_2015_orange",259000],
			["cg_dodge_charger_2015_grise",259000],
			["cg_dodge_charger_2015_vert",259000],
			["cg_dodge_charger_2015_bleufonce",259000],
			["cg_dodge_charger_2015_bleu",259000],
			["cg_dodge_charger_2015_white",259000],
			["cg_dodge_charger_2015_jaune",259000],
			["cg_dodge_charger_2015_rouge",259000],



			["Jonzie_Viper",450000]
		];
	};
	case "civ_car":
	{
		_return =
		[
			["Jonzie_Mini_Cooper",10000],
			["Jonzie_Mini_Cooper_R_spec",50000],


			["critgamin_smart_civ",18000],
			["critgamin_smart_bleu",18000],
			["critgamin_smart_noir",18000],
			["critgamin_smart_bleufonce",18000],
			["critgamin_smart_rouge",18000],
			["critgamin_smart_jaune",18000],
			["critgamin_smart_rose",18000],
			["critgamin_smart_grise",18000],
			["critgamin_smart_violet",18000],
			["critgamin_smart_orange",18000],
			["critgamin_smart_vert",18000],
 


			["critgamin_contown_civ",18000],
			["critgamin_contown_bleu",18000],
			["critgamin_contown_noir",18000],
			["critgamin_contown_bleufonce",18000],
			["critgamin_contown_rouge",18000],
			["critgamin_contown_jaune",18000],
			["critgamin_contown_rose",18000],
			["critgamin_contown_grise",18000],
			["critgamin_contown_violet",18000],
			["critgamin_contown_jaune",18000],
			["critgamin_contown_orange",18000],			
			["critgamin_contown_vert",18000],


			["critgamin_vangmcc_civ_noir",18000],
			["critgamin_vangmcc_civ_bleufonce",18000],
			["critgamin_vangmcc_civ_bleu",18000],
			["critgamin_vangmcc_civ_vert",18000],
			["critgamin_vangmcc_civ_rouge",18000],
			["critgamin_vangmcc_civ_jaune",18000],
			["critgamin_vangmcc_civ_rose",18000],
			["critgamin_vangmcc_civ_grise",18000],
			["critgamin_vangmcc_civ_violet",18000],
			["critgamin_vangmcc_civ_orange",18000],


			["cg_mercedes_sprint_van_noir",25000],
			["cg_mercedes_sprint_van_violet",25000],
			["cg_mercedes_sprint_van_rose",25000],
			["cg_mercedes_sprint_van_orange",25000],
			["cg_mercedes_sprint_van_grise",25000],
			["cg_mercedes_sprint_van_vert",25000],
			["cg_mercedes_sprint_van_bleufonce",25000],
			["cg_mercedes_sprint_van_bleu",25000],
			["cg_mercedes_sprint_van_white",25000],
			["cg_mercedes_sprint_van_jaune",25000],
			["cg_mercedes_sprint_van_rouge",25000],


			["A3L_RegalBlack",22000],
			["A3L_RegalBlue",22000],
			["A3L_RegalOrange",22000],
			["A3L_RegalRed",22000],
			["A3L_RegalWhite",22000],
			["A3L_JeepWhiteBlack",25000],
			["A3L_JeepGreenBlack",25000],
			["A3L_JeepRedTan",25000],
			["A3L_JeepRedBlack",25000],
			["A3L_JeepGrayBlack",25000],



			["cg_citroen_c4_noir",49000],
			["cg_citroen_c4_violet",49000],
			["cg_citroen_c4_rose",49000],
			["cg_citroen_c4_orange",49000],
			["cg_citroen_c4_grise",49000],
			["cg_citroen_c4_vert",49000],
			["cg_citroen_c4_bleufonce",49000],
			["cg_citroen_c4_bleu",49000],
			["cg_citroen_c4_white",49000],
			["cg_citroen_c4_jaune",49000],
			["cg_citroen_c4_rouge",49000],



			["cg_renault_twingo_noir",49000],
			["cg_renault_twingo_violet",49000],
			["cg_renault_twingo_rose",49000],
			["cg_renault_twingo_orange",49000],
			["cg_renault_twingo_grise",49000],
			["cg_renault_twingo_vert",49000],
			["cg_renault_twingo_bleufonce",49000],
			["cg_renault_twingo_bleu",49000],
			["cg_renault_twingo_white",49000],
			["cg_renault_twingo_jaune",49000],
			["cg_renault_twingo_rouge",49000],


			["cg_citroen_ds3_noir",49000],
			["cg_citroen_ds3_violet",49000],
			["cg_citroen_ds3_rose",49000],
			["cg_citroen_ds3_orange",49000],
			["cg_citroen_ds3_grise",49000],
			["cg_citroen_ds3_vert",49000],
			["cg_citroen_ds3_bleufonce",49000],
			["cg_citroen_ds3_bleu",49000],
			["cg_citroen_ds3_white",49000],
			["cg_citroen_ds3_jaune",49000],
			["cg_citroen_ds3_rouge",49000],

			["cg_citroen_ds4_noir",59000],
			["cg_citroen_ds4_violet",59000],
			["cg_citroen_ds4_rose",59000],
			["cg_citroen_ds4_orange",59000],
			["cg_citroen_ds4_grise",59000],
			["cg_citroen_ds4_vert",59000],
			["cg_citroen_ds4_bleufonce",59000],
			["cg_citroen_ds4_bleu",59000],
			["cg_citroen_ds4_white",59000],
			["cg_citroen_ds4_jaune",59000],
			["cg_citroen_ds4_rouge",59000],

			["cg_peugeot_308_gti_civ_noir",59000],
			["cg_peugeot_308_gti_civ_violet",59000],
			["cg_peugeot_308_gti_civ_rose",59000],
			["cg_peugeot_308_gti_civ_orange",59000],
			["cg_peugeot_308_gti_civ_grise",59000],
			["cg_peugeot_308_gti_civ_vert",59000],
			["cg_peugeot_308_gti_civ_bleufonce",59000],
			["cg_peugeot_308_gti_civ_bleu",59000],
			["cg_peugeot_308_gti_civ_white",59000],
			["cg_peugeot_308_gti_civ_jaune",59000],
			["cg_peugeot_308_gti_civ_rouge",59000],

			["cg_peugeot_308_rcz_noir",59000],
			["cg_peugeot_308_rcz_violet",59000],
			["cg_peugeot_308_rcz_rose",59000],
			["cg_peugeot_308_rcz_orange",59000],
			["cg_peugeot_308_rcz_grise",59000],
			["cg_peugeot_308_rcz_vert",59000],
			["cg_peugeot_308_rcz_bleufonce",59000],
			["cg_peugeot_308_rcz_bleu",59000],
			["cg_peugeot_308_rcz_white",59000],
			["cg_peugeot_308_rcz_jaune",59000],
			["cg_peugeot_308_rcz_rouge",59000],

			["S_Rangerover_Black",85000],
			["S_Rangerover_Red",85000],
			["S_Rangerover_Blue",85000],
			["S_Rangerover_Green",85000],
			["S_Rangerover_Purple",85000],
			["S_Rangerover_Grey",85000],
			["S_Rangerover_Orange",85000],
			["S_Rangerover_White",85000],




			["cg_peugeot_508_civ_noir",159000],
			["cg_peugeot_508_civ_violet",159000],
			["cg_peugeot_508_civ_rose",159000],
			["cg_peugeot_508_civ_orange",159000],
			["cg_peugeot_508_civ_grise",159000],
			["cg_peugeot_508_civ_vert",159000],
			["cg_peugeot_508_civ_bleufonce",159000],
			["cg_peugeot_508_civ_bleu",159000],
			["cg_peugeot_508_civ_white",159000],
			["cg_peugeot_508_civ_jaune",159000],
			["cg_peugeot_508_civ_rouge",159000]
		];
	};
	case "civ_motorbike":
	{
		_return =
		[



			["tcg_hrly",25000],
			["tcg_hrly_white",25000],	
			["tcg_hrly_red",25000],
			["tcg_hrly_metal",25000],
			["tcg_hrly_blue",25000],
			["tcg_hrly_limited",45000],
			["tcg_hrly_demon",45000],
			["tcg_hrly_coco",45000],
			["tcg_hrly_orig1",45000],
			["tcg_hrly_orig2",45000],
			["tcg_hrly_skeleton",55000],
			["tcg_hrly_gay",65000],


			["cg_ducati_civ_noir",159000],
			["cg_ducati_civ_violet",159000],
			["cg_ducati_civ_rose",159000],
			["cg_ducati_civ_orange",159000],
			["cg_ducati_civ_grise",159000],
			["cg_ducati_civ_vert",159000],
			["cg_ducati_civ_bleufonce",159000],
			["cg_ducati_civ_bleu",159000],
			["cg_ducati_civ_white",159000],
			["cg_ducati_civ_jaune",159000],
			["cg_ducati_civ_rouge",159000]

		];
	};


	case "civ_truck":
	{
		_return =
		[



			["A3L_F350Black",65000],
			["A3L_F350Blue",65000],
			["A3L_F350Red",65000],
			["A3L_F350White",65000],
			["C_Van_01_fuel_F",70000],
			["C_Van_01_box_F",90000],
			["C_Van_01_transport_F",75000],





			["cg_hummer_h1_noir",190000],
			["cg_hummer_h1_violet",190000],
			["cg_hummer_h1_rose",190000],
			["cg_hummer_h1_orange",190000],
			["cg_hummer_h1_grise",190000],
			["cg_hummer_h1_vert",190000],
			["cg_hummer_h1_bleufonce",190000],
			["cg_hummer_h1_bleu",190000],
			["cg_hummer_h1_white",190000],
			["cg_hummer_h1_jaune",190000],


			["A3L_Bus",130000],

			["cg_daf_xf_euro6_noir",259000],
			["cg_daf_xf_euro6_violet",259000],
			["cg_daf_xf_euro6_rose",259000],
			["cg_daf_xf_euro6_orange",259000],
			["cg_daf_xf_euro6_grise",259000],
			["cg_daf_xf_euro6_vert",259000],
			["cg_daf_xf_euro6_bleufonce",259000],
			["cg_daf_xf_euro6_white",259000],
			["cg_daf_xf_euro6_jaune",259000],
			["cg_daf_xf_euro6_rouge",259000],



			["cg_renault_magnum_truck_f_noir",459000],
			["cg_renault_magnum_truck_f_violet",459000],
			["cg_renault_magnum_truck_f_rose",459000],
			["cg_renault_magnum_truck_f_orange",459000],
			["cg_renault_magnum_truck_f_grise",459000],
			["cg_renault_magnum_truck_f_vert",459000],
			["cg_renault_magnum_truck_f_white",459000],
			["cg_renault_magnum_truck_f_jaune",459000],




			["Nhz_audia8limo",330000],


			["cg_audi_a8_limo_noir",1190000],
			["cg_audi_a8_limo_violet",1190000],
			["cg_audi_a8_limo_rose",1190000],
			["cg_audi_a8_limo_orange",1190000],
			["cg_audi_a8_limo_grise",1190000],
			["cg_audi_a8_limo_vert",1190000],
			["cg_audi_a8_limo_bleufonce",1190000],
			["cg_audi_a8_limo_bleu",1190000],
			["cg_audi_a8_limo_white",1190000],
			["cg_audi_a8_limo_jaune",1190000],



			["wirk_h3_limo",4130000],
			["A3L_Towtruck",40000]
		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["I_G_Van_01_fuel_F",140000],
			["B_Heli_Light_01_F",700000],
			["B_G_Offroad_01_F",165000]
		];

		if(license_civ_rebel) then
		{
		};
	};
	case "cop_car":
	{
		_return =
		[
			["cg_brinks_bank_noir",95000],


			["cg_peugeot_508_pol_d",25000],
			["cg_mercedes_sprinter_pol_base_reg",25000],
			["cg_suburban_sert_pol",25000],
			["cg_ducati_pol_reg",25000],

			["cg_cvpifpbpd",25000],
			["cg_cvpifpblbpd",25000],
			["cg_TaurusPD2",25000],
			["cg_TaurusPD1",25000],
			["cg_evopol1",45000],

  			["cg_h2_sert",70000],
			["cg_cvpitrooper",20000],
			["cg_taurustrooper",20000],
			["cg_trooperevo",40000],
			["cg_evocor1",40000],
			["cg_evoSERT1",40000],
			["EvoXSo1",40000],
  			["EvoXSo2",40000],
 			["EvoXSo3",40000],
  			["EvoXSo4",40000],
  			["A3L_ChargerUC",70000],
			["A3L_ChargerUCWhite",70000],
			["A3L_TaurusCO1",20000],
//			["A3L_CVPIFPBPD",20000],
//			["A3L_CVPIFPBLBPD",20000],
//			["A3L_TaurusPD1",20000],
//			["A3L_TaurusPD2",20000],
			["A3L_CVPIFPBCSO",20000],
			["A3L_CVPIFPBLBCSO",20000],
			["A3L_TaurusFPBCSO",20000],
			["A3L_TaurusFPBLBCSO",20000],
			["A3L_SuburbanCSO",20000],
			["A3L_SuburbanUM",20000],
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
			["DAR_TahoePoliceDet",30000],
			["DAR_ExplorerPoliceStealth",30000]
		];
	};
	case "civ_air":
	{
		_return =
		[
		
		["Sab_af_An2",300000],
		["Sab_tk_An2",300000],
		["Sab_ca_An2",300000],
		["Sab_ana_An2",300000],
		["Sab_yel_An2",300000],
		["Sab_fd_An2",300000],

		["Sab_Sea2_An2",300000],
		["Sab_Sea4_An2",300000],
		["Sab_Amphi_An2",300000],

		["sab_camel",300000],

			["IVORY_T6A_1",300000],
			["C_Heli_Light_01_civil_F",300000],
			["ivory_b206",350000],
			["ivory_b206_news",400000],
			["GNT_C185",1000000],
			["IVORY_CRJ200_1",1000000],
			["IVORY_ERJ135_1",1000000],
			["IVORY_YAK42D_1",1000000]
		];
	};
	case "cop_air":
	{
		_return =
		[			
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",20000],
			["C_Boat_Civil_01_F",125000],
			["A3L_Ship",400000],
			["A3L_Jetski",50000],
			["A3L_Jetski_yellow",50000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
