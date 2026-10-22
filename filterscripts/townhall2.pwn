//Map Filterscript Exported with Texture Studio By: [uL]Pottus///////////////////////////////////////////////////
///////////////////////////////////////////////////////////and Crayder///////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Map Information////////////////////////////////////////////////////////////////////////////////////////////////
/*
	Exported on "2021-01-26 14:56:47" by "Jardani_Makarov"
	Created by "Scott_Luke"
*/
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#include <a_samp>
#include <streamer>


public OnFilterScriptInit()
{ 
    new tmpobjid;




    tmpobjid = CreateDynamicObject(19866, -235.717391, 1070.878784, 18.742187, 0.000000, 0.000007, -0.300011, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "brick", 0x00000000);
    tmpobjid = CreateDynamicObject(19866, -235.691329, 1075.869262, 18.742187, 0.000000, 0.000007, -0.300011, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "brick", 0x00000000);
    tmpobjid = CreateDynamicObject(19866, -235.665145, 1080.859130, 18.742187, 0.000000, 0.000007, -0.300011, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "brick", 0x00000000);
    tmpobjid = CreateDynamicObject(19866, -235.639114, 1085.860107, 18.742187, 0.000000, 0.000007, -0.300011, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "brick", 0x00000000);
    tmpobjid = CreateDynamicObject(19866, -235.743591, 1065.878662, 18.742187, 0.000000, 0.000007, -0.300011, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 9514, "711_sfw", "brick", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 1, 14668, "711c", "CJ_CHIP_M2", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 2, 14668, "711c", "CJ_7_11_win", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 3, 14668, "711c", "CJ_7_11_win", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 4, 14668, "711c", "CJ_CHIP_M2", 0x00000000);
    tmpobjid = CreateDynamicObject(1468, -219.368820, 1060.620971, 19.944404, 0.000000, 0.000000, 91.300010, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19866, -232.086639, 1065.860961, 17.992172, 0.000000, 0.000007, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19866, -232.086639, 1068.691284, 17.992172, 0.000000, 0.000007, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19866, -228.626663, 1065.860961, 17.992172, 0.000000, 0.000014, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19866, -228.626663, 1068.691284, 17.992172, 0.000000, 0.000014, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19866, -225.306930, 1065.860961, 17.992172, 0.000000, 0.000045, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19866, -225.306930, 1068.691284, 17.992172, 0.000000, 0.000045, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19866, -221.987182, 1065.860961, 17.992172, 0.000000, 0.000068, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19866, -221.987182, 1068.691284, 17.992172, 0.000000, 0.000068, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(11245, -207.630126, 1117.019165, 25.287549, 0.000000, -8.199997, 0.799999, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(11245, -207.654785, 1119.188964, 25.247959, 0.000000, -8.199997, 0.799999, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(11245, -207.684463, 1121.309448, 25.247959, 0.000000, -8.199997, 0.799999, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19969, -229.087005, 1088.418823, 18.742187, 0.000000, 0.000000, 177.799987, -1, -1, -1, 300.00, 300.00); 

    for(new i = 0; i < MAX_PLAYERS; i++)
    { 
        if(!IsPlayerConnected(i)) continue; 
        OnPlayerConnect(i); 
    } 

    return 1; 

} 

public OnFilterScriptExit()
{ 
} 

public OnPlayerConnect(playerid)
{ 
} 

public OnVehicleSpawn(vehicleid)
{ 
} 
