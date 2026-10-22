//Map Filterscript Exported with Texture Studio By: [uL]Pottus///////////////////////////////////////////////////
///////////////////////////////////////////////////////////and Crayder///////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Map Information////////////////////////////////////////////////////////////////////////////////////////////////
/*
	Exported on "2021-01-27 18:34:58" by "Jardani_Makarov"
	Created by "Jardani_Makarov"
*/
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#include <a_samp>
#include <streamer>


public OnFilterScriptInit()
{ 
    new tmpobjid;




    tmpobjid = CreateDynamicObject(16563, -222.766693, 979.251281, 16.980690, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 10041, "archybuild10", "copshop5", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 1, 10041, "archybuild10", "copshop2", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 2, 10041, "archybuild10", "stonesteps1", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 3, 10041, "archybuild10", "copshop5", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 4, 10041, "archybuild10", "copshop5", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 5, 10041, "archybuild10", "copshop3", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 8, 10041, "archybuild10", "copshop5", 0x00000000);
    tmpobjid = CreateDynamicObject(19866, -234.264648, 995.109985, 22.023138, 0.000000, 0.000000, 0.599999, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 10041, "archybuild10", "copshop5", 0x00000000);
    tmpobjid = CreateDynamicObject(19866, -234.309204, 999.359680, 22.023138, 0.000000, 0.000000, 0.599999, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 10041, "archybuild10", "copshop5", 0x00000000);
    tmpobjid = CreateDynamicObject(3940, -231.025009, 989.696166, 21.650718, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 10041, "archybuild10", "stonesteps1", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 1, 10041, "archybuild10", "copshop5", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 2, 10041, "archybuild10", "copshop3", 0x00000000);
    SetDynamicObjectMaterial(tmpobjid, 6, 4833, "airprtrunway_las", "asandockw", 0x00000000);
    tmpobjid = CreateDynamicObject(19866, -231.923950, 1001.776672, 22.023138, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 10041, "archybuild10", "copshop5", 0x00000000);
    tmpobjid = CreateDynamicObject(19866, -230.523986, 1001.776672, 22.023138, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 10041, "archybuild10", "copshop5", 0x00000000);
    tmpobjid = CreateDynamicObject(19866, -228.146957, 995.109863, 22.023138, 0.000000, 0.000007, -0.000006, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 10041, "archybuild10", "copshop5", 0x00000000);
    tmpobjid = CreateDynamicObject(19866, -228.147018, 999.359802, 22.023138, 0.000000, 0.000007, -0.000006, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 0, 10041, "archybuild10", "copshop5", 0x00000000);
    tmpobjid = CreateDynamicObject(11453, -206.819961, 986.966247, 19.619184, 0.000000, 0.000000, 90.100028, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterial(tmpobjid, 1, 14668, "711c", "cj_white_wall2", 0x00000000);
    SetDynamicObjectMaterialText(tmpobjid, 0, "None", 10, "Ariel", 20, 0, 0x00000000, 0x00000000, 0);
    tmpobjid = CreateDynamicObject(18665, -206.777465, 986.544494, 20.081056, 0.000000, 0.000000, -179.799926, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterialText(tmpobjid, 0, "{000000}BONE", 140, "Ariel", 110, 1, 0x00000000, 0x00000000, 1);
    tmpobjid = CreateDynamicObject(18665, -206.782714, 988.044921, 20.081056, 0.000000, 0.000000, -179.799926, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterialText(tmpobjid, 0, "{000000}COUNTY", 140, "Ariel", 110, 1, 0x00000000, 0x00000000, 1);
    tmpobjid = CreateDynamicObject(18665, -206.776596, 986.304443, 19.421056, 0.000000, 0.000000, -179.799926, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterialText(tmpobjid, 0, "{000000}SHERIFF'S", 140, "Ariel", 110, 1, 0x00000000, 0x00000000, 1);
    tmpobjid = CreateDynamicObject(18665, -206.782897, 988.104553, 19.431056, 0.000000, 0.000000, -179.799926, -1, -1, -1, 300.00, 300.00); 
    SetDynamicObjectMaterialText(tmpobjid, 0, "{000000}OFFICE", 140, "Ariel", 110, 1, 0x00000000, 0x00000000, 1);
    tmpobjid = CreateDynamicObject(983, -209.248748, 970.875488, 18.735118, 4.900001, 0.000000, 90.499984, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(983, -215.658309, 970.856506, 18.994356, -0.099999, 0.000000, 89.899993, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(983, -222.098266, 970.867919, 18.983118, -0.099999, 0.000000, 89.899993, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(983, -228.488311, 970.839233, 19.001987, 0.000000, 0.000000, 89.899993, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(983, -231.594787, 974.053100, 19.001987, 0.000000, 0.000000, -1.600000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(700, -226.912445, 1005.264282, 19.612831, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(807, -227.319259, 1004.882995, 19.306018, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(807, -226.103530, 1005.658691, 19.306018, 0.000000, 0.000000, 166.500000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(869, -228.552581, 1006.268615, 19.714647, 0.000000, 0.000000, -98.100006, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(869, -224.994308, 1006.005432, 19.714647, 0.000000, 0.000000, -98.100006, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(869, -226.607620, 1003.657287, 19.714647, 0.000000, 0.000000, 175.699951, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(700, -210.532440, 1005.264282, 19.612831, 0.000000, 0.000007, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(807, -210.939254, 1004.882995, 19.306018, 0.000000, 0.000007, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(807, -209.723526, 1005.658691, 19.306018, 0.000000, -0.000007, 166.499954, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(869, -212.172576, 1006.268615, 19.714647, -0.000007, -0.000000, -98.099983, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(869, -208.614303, 1006.005432, 19.714647, -0.000007, -0.000000, -98.099983, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(869, -210.227615, 1003.657287, 19.714647, 0.000000, -0.000007, 175.699905, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(1237, -193.104125, 993.027404, 18.431364, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(1237, -192.154159, 993.397460, 18.431364, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(1237, -193.984146, 993.357727, 18.431364, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(1237, -194.714126, 993.817810, 18.431364, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(1237, -191.354171, 993.807800, 18.431364, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19121, -214.564102, 1008.225830, 19.280378, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19121, -222.984100, 1008.235839, 19.270378, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19121, -205.733947, 983.196105, 18.883489, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(19121, -205.603973, 970.995727, 18.243480, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(1237, -192.964355, 1009.138183, 18.431364, 0.000000, 0.000007, 179.599945, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(1237, -193.916900, 1008.774780, 18.431364, 0.000000, 0.000007, 179.599945, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(1237, -192.086685, 1008.801696, 18.431364, 0.000000, 0.000007, 179.599945, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(1237, -191.359924, 1008.336547, 18.431364, 0.000000, 0.000007, 179.599945, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(1237, -194.719711, 1008.369995, 18.431364, 0.000000, 0.000007, 179.599945, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(8615, -233.190887, 995.623596, 24.236648, 0.000000, 0.000000, -89.599990, -1, -1, -1, 300.00, 300.00); 
    tmpobjid = CreateDynamicObject(1247, -206.781372, 985.516296, 20.048042, 0.000000, 0.000000, 86.300018, -1, -1, -1, 300.00, 300.00);


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
