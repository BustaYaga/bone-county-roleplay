/*
	Created: 17.12.2011
	Update: 29.12.2011
	Author: SLICK
	Description: Fuel System ver. 1.1
	
	Contacts:
	Skype: sl1ck55
	ICQ: 369330001
*/

#include <a_samp>
#include <progress>

#define VERSION "1.1"

#define BAR_HEIGHT 150.0 // Высота прогресс бара
#define BAR_WIDTH 548.0 // Ширина прогресс бара
#define BAR_COLOR 0x00FF00FF // Цвет прогресс бара

#define COLOR_GREEN 0x00FF00FF

new Bar:gFuel[MAX_PLAYERS];
new count;
new bool:Filling[MAX_PLAYERS];
new bool:NotFuel[MAX_PLAYERS];
new Fuel[MAX_VEHICLES];
new FuelTimer[MAX_PLAYERS];
new FillTimer[MAX_PLAYERS];
new bool:pMove[MAX_PLAYERS];
new Float:cx[MAX_PLAYERS];
new Float:cy[MAX_PLAYERS];
new Float:cz;

new NoFuelVehicles[] =
{
	592, 577, 511, 512,
	593, 520, 553, 476,
	519, 460, 513, 548,
	425, 417, 487, 488,
	497, 563, 447, 469,
	509, 481, 510, 472,
	473, 493, 595, 484,
	430, 453, 452, 446,
	454, 538, 537, 449,
	539
};

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	printf(" FuelSystem v%d Loaded! [by SLICK]", VERSION);
	print("--------------------------------------\n");
	
	for(new i=0; i<MAX_VEHICLES; i++) Fuel[i] = random(100);
	return 1;
}

public OnFilterScriptExit()
{
    print("Fuel System Unloaded!");
    
    for(new i=0; i<MAX_PLAYERS; i++) KillTimer(FuelTimer[i]);
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{

	return 1;
}

public OnPlayerConnect(playerid)
{
    Filling[playerid] = false;
    NotFuel[playerid] = false;
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    KillTimer(FuelTimer[playerid]);
	KillTimer(FillTimer[playerid]);
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if(strcmp(cmdtext, "/fillcar", true) == 0)
	{
	    if(IsNotFuel(playerid)) return SendClientMessage(playerid, COLOR_GREEN, "Этот транспорт нельзя заправлять!");
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_GREEN, "Вы должны находиться в транспорте.");
	    if(!IsAtFuelStation(playerid)) return SendClientMessage(playerid, COLOR_GREEN, "Вы должны находиться на автозаправке!");
	    if(Filling[playerid]) return SendClientMessage(playerid, COLOR_GREEN, "Вы уже заправляетесь..");

		FillTimer[playerid] = SetTimerEx("FillingCar", 1000, 1, "d", playerid);
		SendClientMessage(playerid, COLOR_GREEN, "Началась заправка.. Ожидайте окончания заправки вашего авто.");
		Filling[playerid] = true;
		return 1;
	}
	
	if(strcmp(cmdtext, "/off", true) == 0)
	{
		HideProgressBarForPlayer(playerid, gFuel[playerid]);
	    return 1;
	}
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
    
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
 	if(IsNotFuel(playerid))
	{
		NotFuel[playerid] = true;
	}
	
	KillTimer(FuelTimer[playerid]);
	HideProgressBarForPlayer(playerid, gFuel[playerid]);
	//ShowProgressBarForAll(gFuel[playerid]);
	//gFuel[playerid] = INVALID_BAR_ID;
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
    if(newstate == PLAYER_STATE_DRIVER)
    {
        FuelTimer[playerid] = SetTimerEx("OnFuel", 7000, 1, "d", playerid); 
        gFuel[playerid] = CreateProgressBar(BAR_WIDTH, BAR_HEIGHT, _, 10, BAR_COLOR, 100.0);
        SetProgressBarValue(gFuel[playerid], Fuel[GetPlayerVehicleID(playerid)]);
        
		UpdateProgressBar(gFuel[playerid], playerid);
        ShowProgressBarForPlayer(playerid, gFuel[playerid]);
    }
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
    if(IsPlayerInAnyVehicle(playerid))
	{
    	if(!NotFuel[playerid])
		{
			GetVehicleVelocity(GetPlayerVehicleID(playerid), cx[playerid], cy[playerid], cz);
		    if(Fuel[GetPlayerVehicleID(playerid)] < 1 && IsPlayerInAnyVehicle(playerid))  SetVehicleParamsEx(GetPlayerVehicleID(playerid), 0, -1, -1, -1, -1, -1, -1), GameTextForPlayer(playerid, "~W~NO FUEL", 1, 1);
			if(cx[playerid] > 0.1 || cy[playerid] > 0.1 || cx[playerid] < -0.1 || cy[playerid] < -0.1 && Fuel[GetPlayerVehicleID(playerid)] > 0)
			pMove[playerid] = true;
		}
	}
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

stock IsAtFuelStation(playerid)
{
	if(PlayerToPoint(6.0,playerid,1004.0070,-939.3102,42.1797) || PlayerToPoint(6.0,playerid,1944.3260,-1772.9254,13.3906))
		return 1;
	else if(PlayerToPoint(6.0,playerid,-90.5515,-1169.4578,2.4079) || PlayerToPoint(6.0,playerid,-1609.7958,-2718.2048,48.5391))
 		return 1;
	else if(PlayerToPoint(6.0,playerid,-2029.4968,156.4366,28.9498) || PlayerToPoint(8.0,playerid,-2408.7590,976.0934,45.4175))
 		return 1;
	else if(PlayerToPoint(5.0,playerid,-2243.9629,-2560.6477,31.8841) || PlayerToPoint(8.0,playerid,-1676.6323,414.0262,6.9484))
 		return 1;
	else if(PlayerToPoint(6.0,playerid,2202.2349,2474.3494,10.5258) || PlayerToPoint(10.0,playerid,614.9333,1689.7418,6.6968))
 		return 1;
	else if(PlayerToPoint(8.0,playerid,-1328.8250,2677.2173,49.7665) || PlayerToPoint(6.0,playerid,70.3882,1218.6783,18.5165))
 		return 1;
	else if(PlayerToPoint(8.0,playerid,2113.7390,920.1079,10.5255) || PlayerToPoint(6.0,playerid,-1327.7218,2678.8723,50.0625))
 		return 1;
      else if(PlayerToPoint(8.0,playerid,2146.5759,2750.8442,10.6447) || PlayerToPoint(6.0,playerid,2146.8779,2739.6157,10.6435))
 		return 1;
      else if(PlayerToPoint(8.0,playerid,1595.3046,2191.1331,10.6454) || PlayerToPoint(6.0,playerid,1596.3274,2206.7070,10.6449))
 		return 1;
      else if(PlayerToPoint(8.0,playerid,-736.9305,2742.6138,47.0158))
	  	return 1;
	return 0;
}

forward OnFuel(playerid);
public OnFuel(playerid)
{
	if(pMove[playerid])
	{
		Fuel[GetPlayerVehicleID(playerid)]--;
		//UpdateFuelStatus(playerid, gFuel, Fuel[GetPlayerVehicleID(playerid)]);
		pMove[playerid] = false;
		
		SetProgressBarValue(gFuel[playerid], Fuel[GetPlayerVehicleID(playerid)]);
		UpdateProgressBar(gFuel[playerid], playerid);
	}
}

forward FillingCar(playerid);
public FillingCar(playerid)
{
    if(!IsAtFuelStation(playerid))
    {
		StopFilling(playerid);
		SendClientMessage(playerid, COLOR_GREEN, "Вы слишком далео от бензоколонки, заправка остановлена!");
	}

	switch(count)
	{
		case 1: GameTextForPlayer(playerid, "~W~Filling.", 1, 1);
		case 2: GameTextForPlayer(playerid, "~W~Filling..", 1, 1);
		case 3: GameTextForPlayer(playerid, "~W~Filling...", 1, 1);
	}
	count++;
	if(count > 3) count = 0;

	if(Fuel[GetPlayerVehicleID(playerid)] >= 99)
	{
		StopFilling(playerid);
		SendClientMessage(playerid, COLOR_GREEN, "У вас полный бак бензина!");
		SetVehicleParamsEx(GetPlayerVehicleID(playerid), 1, -1, -1, -1, -1, -1, -1);
	}

	if(Fuel[GetPlayerVehicleID(playerid)] < 95) Fuel[GetPlayerVehicleID(playerid)]+=5;
	else if(Fuel[GetPlayerVehicleID(playerid)] >= 95) Fuel[GetPlayerVehicleID(playerid)]++;

	//UpdateFuelStatus(playerid, gFuel, Fuel[GetPlayerVehicleID(playerid)]);

}

stock StopFilling(playerid)
{
    KillTimer(FillTimer[playerid]);
	Filling[playerid] = false;
}

stock IsNotFuel(playerid)
{
	new carid = GetVehicleModel(GetPlayerVehicleID(playerid));

	for(new i=0; i<sizeof(NoFuelVehicles); i++)
	{
		if(NoFuelVehicles[i] == carid) return 1;
	}
	return 0;
}

stock PlayerToPoint(Float:radi, playerid, Float:x, Float:y, Float:z)
{
    if(IsPlayerConnected(playerid))
    {
	     new Float:oldposx, Float:oldposy, Float:oldposz;
	     new Float:tempposx, Float:tempposy, Float:tempposz;
	     GetPlayerPos(playerid, oldposx, oldposy, oldposz);
	     tempposx = (oldposx -x);
	     tempposy = (oldposy -y);
	     tempposz = (oldposz -z);
	     if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi))) return 1;
    }
	return 0;
}
