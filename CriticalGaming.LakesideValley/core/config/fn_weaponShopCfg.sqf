#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
 
switch(_shop) do
{
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Supplies Shop",
                                        [
                                            ["ToolKit",nil,25000],
                                            ["ItemCompass",nil,500],
                                            ["tf_anprc152",nil,100],
                                            ["NVGoggles",nil,5000]
                                        ]
                                ];
                        };
                };
        };
        case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Basic Shop",
                                        [
                                            ["A3L_Extinguisher",nil,350],
                                            ["30Rnd_test_mag_Tracer",nil,350],
                                            ["ItemGPS",nil,250],
                                            ["tf_microdagr",nil,50],
                                            ["Binocular",nil,1250],
                                            ["ToolKit",nil,25000],
                                            ["ItemCompass",nil,500],
                                            ["Chemlight_red",nil,200],
                                            ["NVGoggles",nil,5000]
                                        ]
                                ];
                        };
                };
        };
    



        
        case "cop_basic":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["General",
                                        [
                                            ["CG_BATON","Police Baton",100],
                                            ["CG_TELBAT","Police TelBat",100],
                                            ["Radar_Gun","Radar Gun",250], 
                                            ["ToolKit",nil,25000], 
                                            ["ItemCompass",nil,500],   
                                            ["Taser_26","Taser",50],
                                            ["26_cartridge",nil,5],
                                            ["Chemlight_red",nil,100],
                                            ["Binocular",nil,150],
                                            ["Rangefinder","Rangefinder SERT ONLY",5000],
                                            ["ItemGPS",nil,100],  
                                            ["tf_microdagr",nil,50], 
                                            ["NVGoggles",nil,30000],
                                            ["NVGoggles_OPFOR",nil,30000],
                                            ["NVGoggles_INDEP",nil,30000],
                                            ["TRYK_G_bala_ess_NV","NVG Balaclava SERT ONLY",11000],
                                            ["TRYK_balaclava_BLACK_NV","NVG Balaclava 2 SERT ONLY",11000],
                                            ["tf_anprc152",nil,100],
                                            ["tf_fadak_1",nil,100]
                                        ]
                                ];
                        };
                };
        };
        case "cop_patrol":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a Jnr Deputy!"};
                        default
                        {
                                ["Rank 1",
                                        [
                                            ["RH_g17",nil,2100],
                                            ["RH_17Rnd_9x19_g17",nil,50],
                                            ["RH_m9",nil,2000],
                                            ["RH_15Rnd_9x19_M9",nil,50]
                                        ]
                                ];
                        };
                };
        };
        case "cop_patrol2":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a deputy!"};
                        case (__GETC__(life_coplevel) != 2): {"You are not Deputy!"};
                        default
                        {
                                ["Rank 2",
                                        [
                                            ["hlc_smg_mp5a3","MP5A3",45000],
                                            ["hlc_30Rnd_9x19_B_MP5","MP5 Mag",100],
                                            ["RH_g17",nil,2100],
                                            ["RH_17Rnd_9x19_g17",nil,50],
                                            ["RH_m9",nil,2000],
                                            ["RH_15Rnd_9x19_M9",nil,50]
                                        ]
                                ];
                        };
                };
        };
        case "cop_patrol3":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a deputy!"};
                        case (__GETC__(life_coplevel) != 3): {"You are not Snr Deputy!"};
                        default
                        {
                                ["Rank 3",
                                        [

                                            ["RH_sbr9",nil,65500],
                                            ["RH_32Rnd_9mm_M822",nil,550],
                                            ["hlc_smg_mp5a3","MP5A3",45000],
                                            ["hlc_30Rnd_9x19_B_MP5","MP5 Mag",100],
                                            ["RH_g17",nil,2100],
                                            ["RH_17Rnd_9x19_g17",nil,50],
                                            ["RH_m9",nil,2000],
                                            ["RH_15Rnd_9x19_M9",nil,50]
                                        ]
                                ];
                        };
                };
        };
        case "cop_patrol4":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a deputy!"};
                        case (__GETC__(life_coplevel) != 4): {"You are not DTU!"};
                        default
                        {
                                ["Undercover Guns",
                                        [


                                        ["hgun_PDW2000_F",nil,34500],
                                        ["SMG_02_F",nil,34550],
                                        ["30Rnd_9x21_Mag",nil,255],

                                        ["RH_sbr9_des",nil,37550],
                                        ["RH_32Rnd_9mm_M822",nil,255],
                                         
                                        ["chakFNP90_50rnd_skin1",nil,43000],
                                        ["chakFNP90_57x28_B_skin1",nil,332],
                                        ["SMG_01_F",nil,53000],
                                        ["30Rnd_45ACP_Mag_SMG_01",nil,330],

                                        ["A3L_AK47s",nil,83000],
                                        ["A3L_AK47sgold",nil,83000],
                                        ["A3L_RedDot",nil,8000],
                                        ["A3L_AK47sMag",nil,400],

                                        ["RH_vp70",nil,9850],
                                        ["RH_18Rnd_9x19_VP",nil,125],  

                                        //Micro Uzi
                                        ["RH_muzi",nil,14500],
                                        ["RH_30Rnd_9x19_UZI",nil,250],

                                        //Tec9
                                        ["RH_tec9",nil,19800],
                                        ["RH_32Rnd_9x19_tec",nil,260],

                                        ["hlc_smg_mp5k",nil,20800],
                                        ["hlc_30Rnd_9x19_B_MP5",nil,260],

                                        ["RH_vz61",nil,21800],
                                        ["RH_20Rnd_32cal_vz61",nil,280],

                                        ["RH_fn57",nil,22800],
                                        ["RH_20Rnd_57x28_FN",nil,280],

                                        //Glock 18
                                        ["RH_g18",nil,22500],
                                        ["RH_33Rnd_9x19_g18",nil,250]


                                        ]
                                ];
                        };
                };
        };
        case "cop_sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) != 5): {"You are not Sergeant!"};
                        default
                        {
                                ["Sergeant Shop",
                                        [

                                            ["A3L_m4a3","M4A3",200000],
                                            ["A3L_M4Mag","M4A3 Mag",2250],
                                            ["A3L_CCO","M4A3 CCO Scope",1250],
                                            ["RH_sbr9",nil,35500],
                                            ["RH_32Rnd_9mm_M822",nil,550],
                                            ["RH_g17",nil,2100],
                                            ["RH_17Rnd_9x19_g17",nil,50],
                                            ["RH_m9",nil,2000],
                                            ["RH_15Rnd_9x19_M9",nil,50]
                                        ]
                                ];
                        };
                };
        };
        
        case "cop_command":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) != 6): {"You are not command!"};
                        default
                        {
                                ["Command Shop",
                                        [

                                            ["A3L_m4a3","M4A3",150000],
                                            ["A3L_M4Mag","M4A3 Mag",2250],
                                            ["A3L_CCO","M4A3 CCO Scope",1250],
                                            ["RH_sbr9",nil,35500],
                                            ["RH_32Rnd_9mm_M822",nil,550],
                                            ["RH_g17",nil,2100],
                                            ["RH_17Rnd_9x19_g17",nil,50],
                                            ["RH_m9",nil,2000],
                                            ["RH_15Rnd_9x19_M9",nil,50]
                                        ]
                                ];
                        };
                };
        };

        case "cop_sheriff":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) != 7): {"You are not High Command!"};
                        default
                        {
                                ["High Command",
                                        [

                                            ["A3L_m4a3","M4A3",100000],
                                            ["A3L_M4Mag","M4A3 Mag",2250],
                                            ["A3L_CCO","M4A3 CCO Scope",1250],

                                            ["AG_MP9_peq",nil,41000],
                                            ["30Rnd_45ACP_Mag_SMG_01",nil,250],

                                            ["hgun_Pistol_heavy_01_F",nil,2400],
                                            ["11Rnd_45ACP_Mag",nil,50]
                                        ]
                                ];
                        };
                };
        };


        case "cop_swat":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) != 8): {"You are not SERT!"};
                        default
                        {
                                ["SERT Shop",
                                        [

                                            //Flashbangs & Teargas
                                            ["HandGrenade_Stone","Flashbang",3000],
                                            ["SmokeShellYellow","TearGas",3000],

                                            ["RH_PDW",nil,100000],
                                            ["RH_30Rnd_6x35_mag",nil,2250],

                                            ["RH_compM2","Rifle Aimpoint",250],
                                            ["RH_compM2l","Rifle Aimpoint Low",250],
                                            ["acc_flashlight","Flashlight",250],

                                            //MP9
                                            ["AG_MP9_peq",nil,41000],
                                            ["30Rnd_45ACP_Mag_SMG_01",nil,250],
                                            ["RH_t1","Aimpoint",100],

                                            ["RH_uspm",nil,6000],
                                            ["RH_16Rnd_40cal_usp",nil,200],
                                            ["RH_fn57",nil,22800],
                                            ["RH_20Rnd_57x28_FN",nil,280],
                                            ["RH_m9",nil,2000],
                                            ["RH_15Rnd_9x19_M9",nil,50]
                                        ]
                                ];
                        };
                };
        };
      
        case "rebel_low":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You want some, I'll give it YA! You don't have a license you pleb!"};
                        default
                        {
                                ["Rebel Pistols",
                                    [



                                        ["RH_vp70",nil,98500],
                                        ["RH_18Rnd_9x19_VP",nil,1250],  

                                        //Micro Uzi
                                        ["RH_muzi",nil,145000],
                                        ["RH_30Rnd_9x19_UZI",nil,2500],

                                        //Tec9
                                        ["RH_tec9",nil,198000],
                                        ["RH_32Rnd_9x19_tec",nil,2600],

                                        ["hlc_smg_mp5k",nil,208000],
                                        ["hlc_30Rnd_9x19_B_MP5",nil,2600],

                                        ["RH_vz61",nil,218000],
                                        ["RH_20Rnd_32cal_vz61",nil,2800],

                                        ["RH_fn57",nil,228000],
                                        ["RH_20Rnd_57x28_FN",nil,2800],

                                        //Glock 18
                                        ["RH_g18",nil,225000],
                                        ["RH_33Rnd_9x19_g18",nil,2500]

                                    ]
                                ];
                        };
                };
        };

        case "rebel_high":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You want some, I'll give it YA! You don't have a license you pleb!"};
                        default
                        {
                                ["Rebel Primarys",
                                    [

                                         ["hgun_PDW2000_F",nil,245500],
                                         ["SMG_02_F",nil,245500],
                                         ["30Rnd_9x21_Mag",nil,2550],


                                         ["RH_sbr9_des",nil,325500],
                                         ["RH_32Rnd_9mm_M822",nil,2550],
                                         


                                     ["chakFNP90_50rnd_skin1",nil,350000],
                                      ["chakFNP90_57x28_B_skin1",nil,3320],
                                     ["SMG_01_F",nil,530000],
                                      ["30Rnd_45ACP_Mag_SMG_01",nil,3320],


                                      ["AG_MP9_sand",nil,530000],
                                      ["30Rnd_45ACP_Mag_SMG_01",nil,3320],


                                      ["A3L_AK47s",nil,730000],
                                      ["A3L_AK47sgold",nil,730000],
                                      ["A3L_RedDot",nil,80000],
                                      ["A3L_AK47sMag",nil,4000]

                                    ]
                             ];
                        };
                };
        };
       
        case "gun":
        {
                switch(true) do
                {
                        case (life_karma < 0): {"You need positive reputation to use this store!"};
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Kaels Firearms",
                                        [
                                                      ["KPFS_HKP7",nil,12500],
                                                      ["KPFS_8Rnd_9x19_PARA",nil,1250],

                                                      ["KPFS_Mauser_Hsc",nil,14500],
                                                      ["kpfs_8Rnd_765x17_PP",nil,1250],

                                                      ["KPFS_Walther_M9",nil,15500],
                                                      ["kpfs_6Rnd_635x15",nil,1250],

                                                      ["KPFS_P99",nil,16500],
                                                      ["KPFS_15rnd_9x19_P99",nil,1250],

                                                ["RH_g17",nil,17500],
                                                ["RH_g19",nil,18500],
                                                ["RH_g19t",nil,18500],
                                                ["RH_17Rnd_9x19_g17",nil,1250],

                                                ["RH_m9",nil,18500],
                                                ["RH_15Rnd_9x19_M9",nil,1250],

                                                ["RH_sw659",nil,19500],
                                               ["RH_14Rnd_9x19_sw",nil,1500],

                                                ["hgun_Rook40_F",nil,33500],
                                                ["16Rnd_9x21_Mag",nil,1250],
                                                
                                                ["hgun_P07_F",nil,33500],
                                                ["16Rnd_9x21_Mag",nil,1250],

                                                ["RH_gsh18",nil,41500],
                                                ["RH_18Rnd_9x19_gsh",nil,1250]


                                        ]
                                ];
                        };
                };
        };
        
        case "rifle":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rifle): {"You don't have a Rifle license!"};
                        default
                        {
                                ["Hunting Shop",
                                        [
                                           //     ["A3L_CZ550",nil,275000],
                                            //    ["A3L_CZ550mag",nil,50],
                                            //    ["A3L_CZ550Scope",nil,25000],
                                                ["arifle_SDAR_F","Turtle ONLY SDAR",10000],
                                                ["20Rnd_556x45_UW_mag","Underwater magazine",1200]
                                        ]
                                ];
                        };
                };
        };      
       
        case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Hideout Armament",
                                        [
                                                ["A3L_Glock17",nil,12600],
                                                ["A3L_Glock17mag",nil,500]                                          
                                        ]
                                ];
                        };
                };
        };
       
        case "genstore":
        {
                ["General Store",
                        [
                                ["ItemMap",nil,69],
                                ["tf_anprc152",nil,4000],
                                ["Binocular",nil,11250],
                                ["tf_microdagr",nil,50],
                                ["ToolKit",nil,25000],
                                ["ItemCompass",nil,500],
                                ["NVGoggles_OPFOR",nil,47500],
                                ["NVGoggles",nil,47500],
                                ["Chemlight_red",nil,200],
                                ["Chemlight_yellow",nil,200],
                                ["Chemlight_green",nil,200],
                                ["Chemlight_blue",nil,200],
                                ["nonlethal_swing", "Blunt Ammo (b)", 1000],
                                ["sharp_swing","Sharp Ammo (s)",1000],
 
                                ["cg_scythe","Scythe (s)",5000],
                                ["CG_PICKAXE","Pickaxe (s)",5000],
                                ["cg_hatchet","Hatchet (s)",5000],
                                ["cg_machete","Machete (s)",5000],
                                ["CG_BAT","Bat (b)",5000],
                                ["CG_SHOVEL","Shovel (b)",5000],
                                ["CG_CROSS","Holy Cross (b)",5000],
                                ["A3L_Hammer","Hammer(Secondary Slot)",2000],
                                ["A3L_Spanner","Spanner(Secondary Slot)",2000],
                                ["A3L_Sign2","Weed Sign(Secondary Slot)",10000],
                                ["A3L_Sign","Police Sign(Secondary Slot)",10000],
                                ["Tv_Camera","TV Camera(Secondary Slot)",25200]
                        ]
                ];
        };
};