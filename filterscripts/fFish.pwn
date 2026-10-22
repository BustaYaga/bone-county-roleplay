/*__________________________________________________________________
|                                                                  |
|            Advance Fishing System [ Y_INI ] Script  By FuNkY     |
|               ____            ____         ___                   |
|				|___ U N K Y	  |  HE 	|  __ R E A T          |
|               |                 |         |___|                  |
|__________________________________________________________________|*/

#include <a_samp> // Thanks to SA-MP team for it
#include <zcmd> // Thanks to ZeeX for it
#include <streamer> // Thanks to Incognito for it
#include <YSI\y_ini> // Thanks to Y_Less for it
#include <sscanf2> // Thanks to Emmet_ for it

#define FOLDER "Fishes/%s.ini" // Folder where the data of players save
#define DIALOG_MSGs 69
#define DIALOG_SELLSHOP 70
#define DIALOG_BUYSHOP 71
#define fc "{DB881A}"
#define wc "{FFFFFF}"
#define red "{ff0000}"

//// ** FISH SELL ** ////

#define SFPRICE 20000
#define BFPRICE 50000
#define VBFPRICE 100000

//// ** FOR BUY ** ////

#define FRPRICE 1000
#define BPRICE 2000
enum PlayerData
{
    SmallFish,
    BigFish,
    VBigFish,
    Bait,
    FishingRod
}
new User[MAX_PLAYERS][PlayerData];
new FishCP, SellShopCP , BuyShopCP;
new Timing[MAX_PLAYERS];
new Fish[MAX_PLAYERS];
new FishON[MAX_PLAYERS];
new FRod[MAX_PLAYERS];
new timeleft[MAX_PLAYERS];
new timer[MAX_PLAYERS];
public OnFilterScriptInit()
{
    FishCP = CreateDynamicCP(377.8893,-2088.7971,7.8359,1.0,-1,-1,-1,50.0);
    BuyShopCP = CreateDynamicCP(360.3678,-2029.4905,7.8359,1.0,-1,-1,-1,50.0);
    SellShopCP = CreateDynamicCP(360.3615,-2034.6349,7.8359,1.0,-1,-1,-1,50.0);
	Create3DTextLabel("Fishing", 0xFF0000FF, 377.8893,-2088.7971,7.8359, 40.0, 0, 1);
	Create3DTextLabel("Buying Shop", 0xFF0000FF, 360.3678,-2029.4905,7.8359, 40.0, 0, 1);
	Create3DTextLabel("Selling Shop", 0xFF0000FF, 360.3615,-2034.6349,7.8359, 40.0, 0, 1);
	print("\n--------------------------------------");
	print(" Advance Fishing System by FuNkYTheGreat");
	print("           ----- LOADED -----"           );
	print("--------------------------------------\n");
	return 1;
}
public OnFilterScriptExit()
{
	print("\n--------------------------------------");
	print(" Advance Fishing System by FuNkYTheGreat");
	print("           ----- UN-LOADED -----"        );
	print("--------------------------------------\n");
	return 1;
}
CMD:fstats(playerid, params[])
{
	new tid,string[128];

	if(!sscanf(params, "u", tid))
	{
		if(tid == INVALID_PLAYER_ID) return SendClientMessage(playerid, -1, ""red"Player not connected.");
		ShowFishStats(playerid, tid);
		format(string, sizeof(string), ""fc"[FISHING-STATS] "wc"%s's Stats.", GetName(tid));
		SendClientMessage(playerid, -1, string);
	}
	else
	{
	    ShowFishStats(playerid, playerid);
	    SendClientMessage(playerid, -1, ""fc"[FISHING-STATS] "wc"You can also use /stats ( playerid ).");
	}
	return 1;
}
public OnPlayerConnect(playerid)
{
	if(fexist(Root(playerid)))
 	{
  		INI_ParseFile(Root(playerid), "LoadUser_%s", .bExtra = true, .extra = playerid);
    }
    else
    {
    	new INI:file = INI_Open(Root(playerid));
    	INI_WriteInt(file, "SmallFish", User[playerid][SmallFish]);
     	INI_WriteInt(file, "BigFish", User[playerid][BigFish]);
      	INI_WriteInt(file, "VBigFish", User[playerid][VBigFish]);
      	INI_WriteInt(file, "FishindRods",User[playerid][FishingRod]);
      	INI_WriteInt(file, "Bait",User[playerid][Bait]);

		INI_ParseFile(Root(playerid), "LoadUser_%s", .bExtra = true, .extra = playerid);
		INI_Close(file);
	}
	return 1;
}

public OnPlayerDisconnect(playerid,reason)
{
	if(fexist(Root(playerid)))
 	{
  		new INI:file = INI_Open(Root(playerid));
    	INI_WriteInt(file, "SmallFish", User[playerid][SmallFish]);
     	INI_WriteInt(file, "BigFish",User[playerid][BigFish]);
      	INI_WriteInt(file, "VBigFish", User[playerid][VBigFish]);
      	INI_WriteInt(file, "FishindRods",User[playerid][FishingRod]);
      	INI_WriteInt(file, "Bait",User[playerid][Bait]);
		INI_Close(file);
	}
	User[playerid][SmallFish] = 0;
 	User[playerid][BigFish] = 0;
	User[playerid][VBigFish] = 0;
  	User[playerid][FishingRod] = 0;
   	User[playerid][Bait] = 0;
	Timing[playerid]= 0;
	Fish[playerid]= 0;
	FishON[playerid]= 0;
	FRod[playerid]= 0;
	timeleft[playerid] = 0;
	timer[playerid] = 0;
 	return 1;
}
public OnPlayerEnterDynamicCP(playerid, checkpointid)
{
	new string[250];
	if(checkpointid == FishCP)
	{
	if(User[playerid][Bait] == 0 ) return SendClientMessage(playerid, -1 ,""fc"[FISHING]"wc" You didn't have any Bait to Start Fishing");
 	if(User[playerid][FishingRod] == 0 ) return SendClientMessage(playerid, -1 ,""fc"[FISHING]"wc" You didn't have any Fishing Rods to Start Fishing");
 	if(FishON[playerid] == 1 ) return SendClientMessage(playerid, -1 ,""fc"[FISHING]"wc" You have to wait 15 Minutes to Start fishing again");
	SendClientMessage( playerid, -1 ,""fc"[FISHING] "wc"You have start Fishing!");
	Timing[playerid] = SetTimerEx("Timer",30000,1,"i",playerid);
	Fish[playerid] = 1;
	FRod[playerid]++;
	User[playerid][Bait]--;
	timeleft[playerid] = 30;
	timer[playerid] = SetTimerEx("tLeft",900,1,"i",playerid);
 	TogglePlayerControllable(playerid , false);
	SetPlayerPos(playerid,377.8893,-2088.7971,7.8359);
	SetPlayerFacingAngle(playerid, 182.2118 );
	SetPlayerAttachedObject( playerid, 0, 18632, 1, -0.091109, 0.255484, 0.018155, 94.362060, 312.328125, 190.418655, 1.000000, 1.000000, 1.000000 );
	ApplyAnimation(playerid, "SAMP", "FishingIdle", 3.0,1,1,0,0,0);
 	ApplyAnimation(playerid, "SAMP", "FishingIdle", 3.0,1,1,0,0,0);
 	FishON[playerid] = 1;
	SetTimerEx("WaitTime",900000, 0, "d", playerid);
	if(FRod[playerid] == 5 )
	{
	User[playerid][FishingRod]--;
	FRod[playerid] = 5;
	}
	}
	else if(checkpointid == BuyShopCP)
	{
	format(string, sizeof(string), ""fc"Buy Fishing Rods\n"fc"Buy Bait");
 	ShowPlayerDialog(playerid, DIALOG_BUYSHOP, DIALOG_STYLE_LIST, "Buying Shop",string, "Buy", "Exit");
	}
	else if(checkpointid == SellShopCP)
	{
	format(string, sizeof(string), ""fc"Sell Small Fish "wc"%d \n"fc"Sell Big Fish "wc"%d \n"fc"Sell Very Big Fish "wc"%d",User[playerid][SmallFish],User[playerid][BigFish],User[playerid][VBigFish]);
 	ShowPlayerDialog(playerid, DIALOG_SELLSHOP, DIALOG_STYLE_LIST, "Selling Shop",string, "Buy", "Exit");
 	}
	return 0;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == DIALOG_SELLSHOP)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
         		case 0:
  				{
		           	if(User[playerid][SmallFish] >= 1)
			        {
		            	SendClientMessage( playerid, -1 ,""fc"[FISHING]"wc" You have succesfully selled a Small Fish!");
			            GivePlayerMoney(playerid,SFPRICE);
			            User[playerid][SmallFish]--;
		           	}
		    		else
		           	{
	            		SendClientMessage( playerid, -1 ,""fc"[FISHING]"wc" You didn't have enough Small Fish to sell!");
					}
				}
	     		case 1:
       			{
         			if(User[playerid][BigFish] >= 1)
			        {
		            	SendClientMessage( playerid, -1 ,""fc"[FISHING]"wc" You have succesfully selled a Big Fish!");
			            GivePlayerMoney(playerid,BFPRICE);
			            User[playerid][BigFish]--;
		           	}
		    		else
		           	{
		            	SendClientMessage( playerid, -1 ,""fc"[FISHING]"wc" You didn't have enough Big Fish to sell!");
					}
		   		}
	     		case 2:
       			{
         			if(User[playerid][VBigFish] >= 1)
			        {
		            	SendClientMessage( playerid, -1 ,""fc"[FISHING]"wc" You have succesfully selled a Very Big Fish!");
			            GivePlayerMoney(playerid,VBFPRICE);
			            User[playerid][VBigFish]--;
		           	}
		    		else
		           	{
		            	SendClientMessage( playerid, -1 ,""fc"[FISHING]"wc" You didn't have enough Very Big Fish to sell!");
		          	}
				}
			}
		}
	}
	if(dialogid == DIALOG_BUYSHOP)
	{
 		if(response)
   		{
     		switch(listitem)
       		{
       			case 0:
       			{
        			if(GetPlayerMoney(playerid) >= FRPRICE)
		        	{
			          	SendClientMessage( playerid, -1 ,""fc"[FISHING]"wc" You have succesfully buy a Fishing Rod!");
			           	GivePlayerMoney(playerid,-FRPRICE);
			           	User[playerid][FishingRod]++;
		           	}
	    			else
       				{
          				SendClientMessage( playerid, -1 ,""fc"[FISHING]"wc" You didn't have enough money to buy a Fishing Rod!");
          			}
        		}
	     		case 1:
     			{
       				if(GetPlayerMoney(playerid) >= BPRICE)
			        {
      					SendClientMessage( playerid, -1 ,""fc"[FISHING]"wc" You have succesfully buy a Bait!");
           				GivePlayerMoney(playerid,-BPRICE);
           				User[playerid][Bait]++;

					}
   					else
       				{
          				SendClientMessage( playerid, -1 ,""fc"[FISHING]"wc" You didn't have enough money to buy a Bait!");
       				}
				}
			}
		}
	}
	return 0;
}
forward ShowFishStats(playerid, targetid);
public ShowFishStats(playerid, targetid)
{
	new string[1500], string2[1500];
 	format(string, sizeof(string), ""fc"Small Fishes: "wc"%d\n", User[playerid][SmallFish]);
	strcat(string2, string);
 	format(string, sizeof(string), ""fc"Big Fishes: "wc"%d\n", User[playerid][BigFish]);
	strcat(string2, string);
 	format(string, sizeof(string), ""fc"Very Big Fishes: "wc"%d\n", User[playerid][VBigFish]);
	strcat(string2, string);
 	format(string, sizeof(string), ""fc"Fishing Rods: "wc"%d\n", User[playerid][FishingRod]);
	strcat(string2, string);
 	format(string, sizeof(string), ""fc"Bait: "wc"%d\n", User[playerid][Bait]);
	strcat(string2, string);
	ShowPlayerDialog(playerid, DIALOG_MSGs , DIALOG_STYLE_MSGBOX, "Fishing Stats", string2, "Close", "");
	return 1;
}
forward Timer(playerid);
public Timer(playerid)
{
	new fishes =  1 + random(10);
	new string[250];
	switch( random( 6 ) )
	{
	case 0,1,2,3:
	{
		format(string, sizeof(string), ""fc"[FISHING] "wc"%s Has Caught "fc"%d"wc" Small Fishes",GetName(playerid),fishes);
	    SendClientMessageToAll(-1 , string);
		format(string, sizeof(string), ""fc"[FISHING] "wc"You have Caught "fc"%d"wc" Small Fishes",fishes);
	    SendClientMessage(playerid, -1 , string);
     	User[playerid][SmallFish]+=fishes;
 	}
	case 4,5:
	{
		format(string, sizeof(string), ""fc"[FISHING] "wc"%s Has Caught "fc"%d"wc" Big Fishes",GetName(playerid),fishes);
	    SendClientMessageToAll(-1 , string);
		format(string, sizeof(string), ""fc"[FISHING] "wc"You have Caught "fc"%d"wc" Big Fishes",fishes);
	    SendClientMessage(playerid, -1 , string);
     	User[playerid][BigFish]+=fishes;
	}
	case 6:
	{
		format(string, sizeof(string), ""fc"[FISHING] "wc"%s Has Caught "fc"%d"wc" Very Big Fishes",GetName(playerid),fishes);
	    SendClientMessageToAll(-1 , string);
		format(string, sizeof(string), ""fc"[FISHING] "wc"You have Caught "fc"%d"wc" Very Big Fishes",fishes);
	    SendClientMessage(playerid, -1 , string);
     	User[playerid][VBigFish]+=fishes;
	}
	}
	GameTextForPlayer(playerid, "~r~Fishing ~y~Complete!", 5000, 3);
	ClearAnimations(playerid);
	Fish[playerid] = 0;
	KillTimer(Timing[playerid]);
 	TogglePlayerControllable(playerid , true);
	RemovePlayerAttachedObject(playerid, 0);
	return 1;
}
forward WaitTime(playerid);
public WaitTime(playerid)
{
    FishON[playerid] = 0;
    return 1;
}
forward LoadUser_data(playerid, name[], value[]);
public LoadUser_data(playerid, name[], value[])
{
	INI_Int("SmallFish", User[playerid][SmallFish]);
 	INI_Int("BigFish",User[playerid][BigFish]);
  	INI_Int("VBigFish", User[playerid][VBigFish]);
  	INI_Int("FishindRods",User[playerid][FishingRod]);
  	INI_Int("Bait",User[playerid][Bait]);
	return 1;
}
Root(playerid)
{
	new string[128],playername[MAX_PLAYER_NAME];
 	GetPlayerName(playerid,playername,sizeof(playername));
  	format(string,sizeof(string),FOLDER,playername);
   	return string;
}
GetName(playerid)
{
	new pName[24];
	GetPlayerName(playerid, pName, 24);
	return pName;
}
forward tLeft(playerid);
public tLeft(playerid)
{
	timeleft[playerid]--;
    new string[128];
    format(string, 128, "~r~TIME LEFT ~b~: %d", timeleft[playerid]);
	GameTextForPlayer(playerid, string , 900, 3);
	if (timeleft[playerid] == 1)
	{
	KillTimer(timer[playerid]);
	}
	return 1;
}
