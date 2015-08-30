#define BGX 0.35
#define BGY 0.2
#define BGW 0.82

class pInteraction_Menu
{
	idd = 37400;
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground
	{
		
		class MainBackground : life_RscText
		{
			idc = -1;
			colorBackground[] = {1,1,1,0.35};
			x = BGX;
			y = BGY + (11 / 250);
			w = BGW;
			h = 0.48 - (22 / 250);
		};
		
	};
	



	class controls
	{
		class ButtonClose : life_RscButtonMenu 
		{
			idc = -1;
			//shortcuts[] = {0x00050000 + 2};
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = BGX;
			y = 0.67 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};


		
				
		class ButtonOne : life_RscButtonMenu
		{
			idc = 37450;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.07;
			w = 0.24;
			h = 0.038;
		};
	


		class ButtonTwo : life_RscButtonMenu
		{
			idc = 37451;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.07;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonThree : life_RscButtonMenu
		{
			idc = 37452;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.07;
			w = 0.24;
			h = 0.038;
		};

		
		class ButtonFour : life_RscButtonMenu
		{
			idc = 37453;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.12;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonFive : life_RscButtonMenu
		{
			idc = 37454;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.12;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonSix : life_RscButtonMenu
		{
			idc = 37455;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.12;
			w = 0.24;
			h = 0.038;
		};
		class ButtonSeven : life_RscButtonMenu
		{
			idc = 37456;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.17;
			w = 0.24;
			h = 0.038;
		};

		class ButtonEight : life_RscButtonMenu
		{
			idc = 37457;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.17;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonNine : life_RscButtonMenu
		{
			idc = 37458;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.17;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonTen : life_RscButtonMenu
		{
			idc = 37459;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.22;
			w = 0.24;
			h = 0.038;
		};

		class ButtonEleven : life_RscButtonMenu
		{
			idc = 37460;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.22;
			w = 0.24;
			h = 0.038;
		};

		class ButtonTwelve : life_RscButtonMenu
		{
			idc = 37461;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.22;
			w = 0.24;
			h = 0.038;
		};

		class ButtonThirteen : life_RscButtonMenu
		{
			idc = 37462;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.27;
			w = 0.24;
			h = 0.038;
		};
	
		class ButtonFourteen : life_RscButtonMenu
		{
			idc = 37463;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.27;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonFifteen : life_RscButtonMenu
		{
			idc = 37464;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.27;
			w = 0.24;
			h = 0.038;
		};

		
		class ButtonSixteen : life_RscButtonMenu
		{
			idc = 37465;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.32;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonSeventeen : life_RscButtonMenu
		{
			idc = 37466;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.32;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonEighteen : life_RscButtonMenu
		{
			idc = 37467;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.32;
			w = 0.24;
			h = 0.038;
		};
		class ButtonNineteen : life_RscButtonMenu
		{
			idc = 37468;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.37;
			w = 0.24;
			h = 0.038;
		};

		class ButtonTwenty : life_RscButtonMenu
		{
			idc = 37469;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.37;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonTwentyOne : life_RscButtonMenu
		{
			idc = 37470;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.37;
			w = 0.24;
			h = 0.038;
		};
		


	};
};

class vInteraction_Menu
{
	idd = 37400;
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground
	{

/*
		class RscTitleBackground:life_RscText 
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = BGX;
			y = BGY;
			w = BGW;
			h = (1 / 25);
		};
		*/


		class MainBackground : life_RscText
		{
			idc = -1;
			colorBackground[] = {1,1,1,0.35};
			x = BGX;
			y = BGY + (11 / 250);
			w = BGW;
			h = 0.48 - (22 / 250);
		};




		/*



		class Title : life_RscTitle
		{
			colorBackground[] = {0,0,0,0};
			idc = 37401;
			text = "$STR_pInAct_Title";
			x = BGX;
			y = BGY;
			w = BGW;
			h = (1 / 25);
		};
		*/
	};
	








	class controls
	{
		class ButtonClose : life_RscButtonMenu 
		{
			idc = -1;
			//shortcuts[] = {0x00050000 + 2};
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = BGX;
			y = 0.67 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};

		
				
		class ButtonOne : life_RscButtonMenu
		{
			idc = 37450;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.07;
			w = 0.24;
			h = 0.038;
		};
	


		class ButtonTwo : life_RscButtonMenu
		{
			idc = 37451;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.07;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonThree : life_RscButtonMenu
		{
			idc = 37452;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.07;
			w = 0.24;
			h = 0.038;
		};

		
		class ButtonFour : life_RscButtonMenu
		{
			idc = 37453;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.12;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonFive : life_RscButtonMenu
		{
			idc = 37454;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.12;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonSix : life_RscButtonMenu
		{
			idc = 37455;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.12;
			w = 0.24;
			h = 0.038;
		};
		class ButtonSeven : life_RscButtonMenu
		{
			idc = 37456;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.17;
			w = 0.24;
			h = 0.038;
		};

		class ButtonEight : life_RscButtonMenu
		{
			idc = 37457;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.17;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonNine : life_RscButtonMenu
		{
			idc = 37458;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.17;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonTen : life_RscButtonMenu
		{
			idc = 37459;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.22;
			w = 0.24;
			h = 0.038;
		};

		class ButtonEleven : life_RscButtonMenu
		{
			idc = 37460;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.22;
			w = 0.24;
			h = 0.038;
		};

		class ButtonTwelve : life_RscButtonMenu
		{
			idc = 37461;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.22;
			w = 0.24;
			h = 0.038;
		};

		class ButtonThirteen : life_RscButtonMenu
		{
			idc = 37462;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.27;
			w = 0.24;
			h = 0.038;
		};
	
		class ButtonFourteen : life_RscButtonMenu
		{
			idc = 37463;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.27;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonFifteen : life_RscButtonMenu
		{
			idc = 37464;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.27;
			w = 0.24;
			h = 0.038;
		};

		
		class ButtonSixteen : life_RscButtonMenu
		{
			idc = 37465;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.32;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonSeventeen : life_RscButtonMenu
		{
			idc = 37466;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.32;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonEighteen : life_RscButtonMenu
		{
			idc = 37467;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.32;
			w = 0.24;
			h = 0.038;
		};
		class ButtonNineteen : life_RscButtonMenu
		{
			idc = 37468;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.37;
			w = 0.24;
			h = 0.038;
		};

		class ButtonTwenty : life_RscButtonMenu
		{
			idc = 37469;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.29;
			y = BGY + 0.37;
			w = 0.24;
			h = 0.038;
		};
		
		class ButtonTwentyOne : life_RscButtonMenu
		{
			idc = 37470;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.8};
			text = "";
			sizeEx = 0.025;
			x = BGX + 0.55;
			y = BGY + 0.37;
			w = 0.24;
			h = 0.038;
		};
		



	};
};