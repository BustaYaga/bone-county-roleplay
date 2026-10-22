//=======Definitions/Enum/New Statements======//
new
PlayerText:IntroTD1,
PlayerText:IntroTD2,
PlayerText:IntroTD3,
PlayerText:IntroTD4,
PlayerText:PayTDraw[MAX_PLAYERS],
PlayerText:PayTDraw2[MAX_PLAYERS],
Text:PayDraw[13],
PlayerText:Wheels[MAX_PLAYERS][23],
Page[MAX_PLAYERS],
PlayerText:Fishdraw0[MAX_PLAYERS];
//===================Intro====================//
stock BuildIntroTextDraws(playerid)
{
	IntroTD1 = CreatePlayerTextDraw(playerid, 220.000000, 14.000000, "Bone County Roleplay");
	PlayerTextDrawFont(playerid, IntroTD1, 0);
	PlayerTextDrawLetterSize(playerid, IntroTD1, 0.795831, 3.699996);
	PlayerTextDrawTextSize(playerid, IntroTD1, 459.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, IntroTD1, 1);
	PlayerTextDrawSetShadow(playerid, IntroTD1, 0);
	PlayerTextDrawAlignment(playerid, IntroTD1, 1);
	PlayerTextDrawColor(playerid, IntroTD1, -1);
	PlayerTextDrawBackgroundColor(playerid, IntroTD1, 255);
	PlayerTextDrawBoxColor(playerid, IntroTD1, 0);
	PlayerTextDrawUseBox(playerid, IntroTD1, 0);
	PlayerTextDrawSetProportional(playerid, IntroTD1, 1);
	PlayerTextDrawSetSelectable(playerid, IntroTD1, 0);

	IntroTD2 = CreatePlayerTextDraw(playerid, 305.000000, 50.000000, "v0.3.0");
	PlayerTextDrawFont(playerid, IntroTD2, 1);
	PlayerTextDrawLetterSize(playerid, IntroTD2, 0.241667, 1.500000);
	PlayerTextDrawTextSize(playerid, IntroTD2, 368.500000, 16.000000);
	PlayerTextDrawSetOutline(playerid, IntroTD2, 1);
	PlayerTextDrawSetShadow(playerid, IntroTD2, 0);
	PlayerTextDrawAlignment(playerid, IntroTD2, 1);
	PlayerTextDrawColor(playerid, IntroTD2, -2016478465);
	PlayerTextDrawBackgroundColor(playerid, IntroTD2, 255);
	PlayerTextDrawBoxColor(playerid, IntroTD2, 50);
	PlayerTextDrawUseBox(playerid, IntroTD2, 0);
	PlayerTextDrawSetProportional(playerid, IntroTD2, 1);
	PlayerTextDrawSetSelectable(playerid, IntroTD2, 0);

	IntroTD3 = CreatePlayerTextDraw(playerid, 141.000000, 388.000000, "This server may contain explicit content and may be considered only for adults.");
	PlayerTextDrawFont(playerid, IntroTD3, 3);
	PlayerTextDrawLetterSize(playerid, IntroTD3, 0.275000, 2.000000);
	PlayerTextDrawTextSize(playerid, IntroTD3, 624.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, IntroTD3, 1);
	PlayerTextDrawSetShadow(playerid, IntroTD3, 0);
	PlayerTextDrawAlignment(playerid, IntroTD3, 1);
	PlayerTextDrawColor(playerid, IntroTD3, -421070081);
	PlayerTextDrawBackgroundColor(playerid, IntroTD3, 255);
	PlayerTextDrawBoxColor(playerid, IntroTD3, 50);
	PlayerTextDrawUseBox(playerid, IntroTD3, 0);
	PlayerTextDrawSetProportional(playerid, IntroTD3, 1);
	PlayerTextDrawSetSelectable(playerid, IntroTD3, 0);

	IntroTD4 = CreatePlayerTextDraw(playerid, 260.000000, 412.000000, "www.bonecountyrp.net");
	PlayerTextDrawFont(playerid, IntroTD4, 0);
	PlayerTextDrawLetterSize(playerid, IntroTD4, 0.570833, 1.950000);
	PlayerTextDrawTextSize(playerid, IntroTD4, 390.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, IntroTD4, 1);
	PlayerTextDrawSetShadow(playerid, IntroTD4, 0);
	PlayerTextDrawAlignment(playerid, IntroTD4, 1);
	PlayerTextDrawColor(playerid, IntroTD4, -2016478465);
	PlayerTextDrawBackgroundColor(playerid, IntroTD4, 255);
	PlayerTextDrawBoxColor(playerid, IntroTD4, 50);
	PlayerTextDrawUseBox(playerid, IntroTD4, 0);
	PlayerTextDrawSetProportional(playerid, IntroTD4, 1);
	PlayerTextDrawSetSelectable(playerid, IntroTD4, 0);
	
	PlayerTextDrawShow(playerid, PlayerText:IntroTD1);
	PlayerTextDrawShow(playerid, PlayerText:IntroTD2);
	PlayerTextDrawShow(playerid, PlayerText:IntroTD3);
	PlayerTextDrawShow(playerid, PlayerText:IntroTD4);
	return 1;
}
stock DestroyIntoTextDraws(playerid)
{
	PlayerTextDrawDestroy(playerid, PlayerText:IntroTD1);
	PlayerTextDrawDestroy(playerid, PlayerText:IntroTD2);
	PlayerTextDrawDestroy(playerid, PlayerText:IntroTD3);
	PlayerTextDrawDestroy(playerid, PlayerText:IntroTD4);
}
stock BuildPayDraw()
{
/*    PayDraw[0] = TextDrawCreate(213.000000, 198.000000, "|||");//Older Version of payment draw
    TextDrawBackgroundColor(PayDraw[0], 0);
    TextDrawFont(PayDraw[0], 1);
    TextDrawLetterSize(PayDraw[0], 0.519999, 1.100000);
    TextDrawColor(PayDraw[0], 0);
    TextDrawSetOutline(PayDraw[0], 1);
    TextDrawSetProportional(PayDraw[0], 1);
    TextDrawUseBox(PayDraw[0], 1);
    TextDrawBoxColor(PayDraw[0], -1);
    TextDrawTextSize(PayDraw[0], 424.000000, 29.000000);
    TextDrawSetSelectable(PayDraw[0], 0);
    PayDraw[1] = TextDrawCreate(213.000000, 198.000000, "|||");
    TextDrawBackgroundColor(PayDraw[1], 0);
    TextDrawFont(PayDraw[1], 1);
    TextDrawLetterSize(PayDraw[1], 0.519999, 9.200000);
    TextDrawColor(PayDraw[1], 0);
    TextDrawSetOutline(PayDraw[1], 1);
    TextDrawSetProportional(PayDraw[1], 1);
    TextDrawUseBox(PayDraw[1], 1);
    TextDrawBoxColor(PayDraw[1], 150);
    TextDrawTextSize(PayDraw[1], 424.000000, 29.000000);
    TextDrawSetSelectable(PayDraw[1], 0);
    PayDraw[2] = TextDrawCreate(260.000000, 198.000000, "PAYMENT TYPE");
    TextDrawBackgroundColor(PayDraw[2], 255);
    TextDrawFont(PayDraw[2], 2);
    TextDrawLetterSize(PayDraw[2], 0.380000, 1.000000);
    TextDrawColor(PayDraw[2], -1);
    TextDrawSetOutline(PayDraw[2], 0);
    TextDrawSetProportional(PayDraw[2], 1);
    TextDrawSetShadow(PayDraw[2], 1);
    TextDrawSetSelectable(PayDraw[2], 0);
    PayDraw[3] = TextDrawCreate(234.000000, 269.000000, "~b~~h~CASH");
    TextDrawBackgroundColor(PayDraw[3], 255);
    TextDrawFont(PayDraw[3], 2);
    TextDrawLetterSize(PayDraw[3], 0.310000, 0.899999);
    TextDrawColor(PayDraw[3], 0x2641FEFF);
    TextDrawSetOutline(PayDraw[3], 0);
    TextDrawSetProportional(PayDraw[3], 1);
    TextDrawSetShadow(PayDraw[3], 1);
    TextDrawSetSelectable(PayDraw[3], true);
    PayDraw[4] = TextDrawCreate(298.000000, 269.000000, "~b~~h~DEBIT");
    TextDrawBackgroundColor(PayDraw[4], 255);
    TextDrawFont(PayDraw[4], 2);
    TextDrawLetterSize(PayDraw[4], 0.310000, 0.899999);
    TextDrawColor(PayDraw[4], 0x2641FEFF);
    TextDrawSetOutline(PayDraw[4], 0);
    TextDrawSetProportional(PayDraw[4], 1);
    TextDrawSetShadow(PayDraw[4], 1);
    TextDrawSetSelectable(PayDraw[4], true);
    PayDraw[5] = TextDrawCreate(362.000000, 269.000000, "~b~~h~CANCEL");
    TextDrawBackgroundColor(PayDraw[5], 255);
    TextDrawFont(PayDraw[5], 2);
    TextDrawLetterSize(PayDraw[5], 0.310000, 0.899999);
    TextDrawColor(PayDraw[5], 0x2641FEFF);
    TextDrawSetOutline(PayDraw[5], 0);
    TextDrawSetProportional(PayDraw[5], 1);
    TextDrawSetShadow(PayDraw[5], 1);
    TextDrawSetSelectable(PayDraw[5], true);
*/
	PayDraw[0] = TextDrawCreate(318.000000, 119.000000, "_");
	TextDrawFont(PayDraw[0], 1);
	TextDrawLetterSize(PayDraw[0], 0.641665, 24.599960);
	TextDrawTextSize(PayDraw[0], 312.000000, 390.000000);
	TextDrawSetOutline(PayDraw[0], 1);
	TextDrawSetShadow(PayDraw[0], 0);
	TextDrawAlignment(PayDraw[0], 2);
	TextDrawColor(PayDraw[0], -1);
	TextDrawBackgroundColor(PayDraw[0], 255);
	TextDrawBoxColor(PayDraw[0], -1);
	TextDrawUseBox(PayDraw[0], 1);
	TextDrawSetProportional(PayDraw[0], 1);
	TextDrawSetSelectable(PayDraw[0], 0);

	PayDraw[1] = TextDrawCreate(318.000000, 173.000000, "_");
	TextDrawFont(PayDraw[1], 1);
	TextDrawLetterSize(PayDraw[1], 0.649999, 21.099975);
	TextDrawTextSize(PayDraw[1], 312.000000, 390.000000);
	TextDrawSetOutline(PayDraw[1], 1);
	TextDrawSetShadow(PayDraw[1], 0);
	TextDrawAlignment(PayDraw[1], 2);
	TextDrawColor(PayDraw[1], -1);
	TextDrawBackgroundColor(PayDraw[1], 255);
	TextDrawBoxColor(PayDraw[1], 768375551);
	TextDrawUseBox(PayDraw[1], 1);
	TextDrawSetProportional(PayDraw[1], 1);
	TextDrawSetSelectable(PayDraw[1], 0);

	PayDraw[2] = TextDrawCreate(178.000000, 196.000000, "_");
	TextDrawFont(PayDraw[2], 1);
	TextDrawLetterSize(PayDraw[2], 0.616666, 13.350007);
	TextDrawTextSize(PayDraw[2], 304.000000, 104.500000);
	TextDrawSetOutline(PayDraw[2], 1);
	TextDrawSetShadow(PayDraw[2], 0);
	TextDrawAlignment(PayDraw[2], 2);
	TextDrawColor(PayDraw[2], -1);
	TextDrawBackgroundColor(PayDraw[2], 255);
	TextDrawBoxColor(PayDraw[2], -2998785);
	TextDrawUseBox(PayDraw[2], 1);
	TextDrawSetProportional(PayDraw[2], 1);
	TextDrawSetSelectable(PayDraw[2], 0);

	PayDraw[3] = TextDrawCreate(299.000000, 196.000000, "_");
	TextDrawFont(PayDraw[3], 1);
	TextDrawLetterSize(PayDraw[3], 0.616666, 13.350008);
	TextDrawTextSize(PayDraw[3], 304.000000, 124.500000);
	TextDrawSetOutline(PayDraw[3], 1);
	TextDrawSetShadow(PayDraw[3], 0);
	TextDrawAlignment(PayDraw[3], 2);
	TextDrawColor(PayDraw[3], -1);
	TextDrawBackgroundColor(PayDraw[3], 255);
	TextDrawBoxColor(PayDraw[3], -1);
	TextDrawUseBox(PayDraw[3], 1);
	TextDrawSetProportional(PayDraw[3], 1);
	TextDrawSetSelectable(PayDraw[3], 0);

	PayDraw[4] = TextDrawCreate(126.000000, 302.000000, "Total Amount");
	TextDrawFont(PayDraw[4], 2);
	TextDrawLetterSize(PayDraw[4], 0.241667, 0.800000);
	TextDrawTextSize(PayDraw[4], 184.000000, 17.000000);
	TextDrawSetOutline(PayDraw[4], 0);
	TextDrawSetShadow(PayDraw[4], 0);
	TextDrawAlignment(PayDraw[4], 1);
	TextDrawColor(PayDraw[4], -1);
	TextDrawBackgroundColor(PayDraw[4], 255);
	TextDrawBoxColor(PayDraw[4], 50);
	TextDrawUseBox(PayDraw[4], 0);
	TextDrawSetProportional(PayDraw[4], 1);
	TextDrawSetSelectable(PayDraw[4], 0);

	PayDraw[5] = TextDrawCreate(176.000000, 237.000000, "");////item price
	TextDrawFont(PayDraw[5], 3);
	TextDrawLetterSize(PayDraw[5], 0.699998, 4.299999);
	TextDrawTextSize(PayDraw[5], 233.000000, 17.000000);
	TextDrawSetOutline(PayDraw[5], 0);
	TextDrawSetShadow(PayDraw[5], 0);
	TextDrawAlignment(PayDraw[5], 2);
	TextDrawColor(PayDraw[5], -1);
	TextDrawBackgroundColor(PayDraw[5], 255);
	TextDrawBoxColor(PayDraw[5], 50);
	TextDrawUseBox(PayDraw[5], 0);
	TextDrawSetProportional(PayDraw[5], 1);
	TextDrawSetSelectable(PayDraw[5], 0);

	PayDraw[6] = TextDrawCreate(430.000000, 195.000000, "_");
	TextDrawFont(PayDraw[6], 1);
	TextDrawLetterSize(PayDraw[6], 0.616666, 6.150012);
	TextDrawTextSize(PayDraw[6], 304.000000, 124.500000);
	TextDrawSetOutline(PayDraw[6], 1);
	TextDrawSetShadow(PayDraw[6], 0);
	TextDrawAlignment(PayDraw[6], 2);
	TextDrawColor(PayDraw[6], -1);
	TextDrawBackgroundColor(PayDraw[6], 255);
	TextDrawBoxColor(PayDraw[6], -1);
	TextDrawUseBox(PayDraw[6], 1);
	TextDrawSetProportional(PayDraw[6], 1);
	TextDrawSetSelectable(PayDraw[6], 0);

	PayDraw[7] = TextDrawCreate(430.000000, 259.000000, "_");
	TextDrawFont(PayDraw[7], 1);
	TextDrawLetterSize(PayDraw[7], 0.616666, 6.250011);
	TextDrawTextSize(PayDraw[7], 304.000000, 124.500000);
	TextDrawSetOutline(PayDraw[7], 1);
	TextDrawSetShadow(PayDraw[7], 0);
	TextDrawAlignment(PayDraw[7], 2);
	TextDrawColor(PayDraw[7], -1);
	TextDrawBackgroundColor(PayDraw[7], 255);
	TextDrawBoxColor(PayDraw[7], -1);
	TextDrawUseBox(PayDraw[7], 1);
	TextDrawSetProportional(PayDraw[7], 1);
	TextDrawSetSelectable(PayDraw[7], 0);

	PayDraw[8] = TextDrawCreate(430.000000, 280.000000, "Cash");
	TextDrawFont(PayDraw[8], 2);
	TextDrawLetterSize(PayDraw[8], 0.250000, 1.600000);
	TextDrawTextSize(PayDraw[8], 30.500000, 114.000000);
	TextDrawSetOutline(PayDraw[8], 0);
	TextDrawSetShadow(PayDraw[8], 0);
	TextDrawAlignment(PayDraw[8], 2);
	TextDrawColor(PayDraw[8], 255);
	TextDrawBackgroundColor(PayDraw[8], 255);
	TextDrawBoxColor(PayDraw[8], 50);
	TextDrawUseBox(PayDraw[8], 0);
	TextDrawSetProportional(PayDraw[8], 1);
	TextDrawSetSelectable(PayDraw[8], 1);

	PayDraw[9] = TextDrawCreate(430.000000, 222.000000, "");///bank statement
	TextDrawFont(PayDraw[9], 3);
	TextDrawLetterSize(PayDraw[9], 0.254166, 1.600000);
	TextDrawTextSize(PayDraw[9], 30.500000, 114.000000);
	TextDrawSetOutline(PayDraw[9], 0);
	TextDrawSetShadow(PayDraw[9], 0);
	TextDrawAlignment(PayDraw[9], 2);
	TextDrawColor(PayDraw[9], 255);
	TextDrawBackgroundColor(PayDraw[9], 255);
	TextDrawBoxColor(PayDraw[9], 50);
	TextDrawUseBox(PayDraw[9], 0);
	TextDrawSetProportional(PayDraw[9], 1);
	TextDrawSetSelectable(PayDraw[9], 0);

	PayDraw[10] = TextDrawCreate(430.000000, 201.000000, "bank balance");
	TextDrawFont(PayDraw[10], 2);
	TextDrawLetterSize(PayDraw[10], 0.229167, 1.649999);
	TextDrawTextSize(PayDraw[10], 30.500000, 114.000000);
	TextDrawSetOutline(PayDraw[10], 0);
	TextDrawSetShadow(PayDraw[10], 0);
	TextDrawAlignment(PayDraw[10], 2);
	TextDrawColor(PayDraw[10], 255);
	TextDrawBackgroundColor(PayDraw[10], 255);
	TextDrawBoxColor(PayDraw[10], 50);
	TextDrawUseBox(PayDraw[10], 0);
	TextDrawSetProportional(PayDraw[10], 1);
	TextDrawSetSelectable(PayDraw[10], 0);

	PayDraw[11] = TextDrawCreate(299.000000, 246.000000, "Bank");
	TextDrawFont(PayDraw[11], 2);
	TextDrawLetterSize(PayDraw[11], 0.250000, 1.600000);
	TextDrawTextSize(PayDraw[11], 30.500000, 114.000000);
	TextDrawSetOutline(PayDraw[11], 0);
	TextDrawSetShadow(PayDraw[11], 0);
	TextDrawAlignment(PayDraw[11], 2);
	TextDrawColor(PayDraw[11], 255);
	TextDrawBackgroundColor(PayDraw[11], 255);
	TextDrawBoxColor(PayDraw[11], 50);
	TextDrawUseBox(PayDraw[11], 0);
	TextDrawSetProportional(PayDraw[11], 1);
	TextDrawSetSelectable(PayDraw[11], 1);

	PayDraw[12] = TextDrawCreate(502.000000, 350.000000, "Exit");
	TextDrawFont(PayDraw[12], 2);
	TextDrawLetterSize(PayDraw[12], 0.270833, 1.800000);
	TextDrawTextSize(PayDraw[12], 400.000000, 17.000000);
	TextDrawSetOutline(PayDraw[12], 0);
	TextDrawSetShadow(PayDraw[12], 0);
	TextDrawAlignment(PayDraw[12], 2);
	TextDrawColor(PayDraw[12], -1);
	TextDrawBackgroundColor(PayDraw[12], 255);
	TextDrawBoxColor(PayDraw[12], 50);
	TextDrawUseBox(PayDraw[12], 0);
	TextDrawSetProportional(PayDraw[12], 1);
	TextDrawSetSelectable(PayDraw[12], 1);
}
//============================================//
stock BuildWheelMenu(playerid)
{
    Wheels[playerid][0] = CreatePlayerTextDraw(playerid, 132.000000, 147.125000, "box");
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][0], 0.000000, 21.299993);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][0], 534.500000, 0.000000);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][0], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, Wheels[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, Wheels[playerid][0], 95);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][0], 255);
	PlayerTextDrawFont(playerid, Wheels[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][0], 0);

	Wheels[playerid][1] = CreatePlayerTextDraw(playerid, 260.500000, 151.500000, "box");
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][1], 0.000000, 2.150000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][1], 388.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][1], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, Wheels[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, Wheels[playerid][1], 95);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][1], 255);
	PlayerTextDrawFont(playerid, Wheels[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][1], 0);

	Wheels[playerid][2] = CreatePlayerTextDraw(playerid, 281.000000, 154.125000, "WHEELS_MENU");
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][2], 0.388000, 1.486250);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][2], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][2], -1);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][2], 255);
	PlayerTextDrawFont(playerid, Wheels[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][2], 0);

	Wheels[playerid][3] = CreatePlayerTextDraw(playerid, 170.000000, 176.437500, ""); // 1073
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][3], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][3], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][3], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][3], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][3], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][3], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][3], 1073);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][3], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][4] = CreatePlayerTextDraw(playerid, 241.500000, 175.125000, ""); //1074
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][4], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][4], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][4], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][4], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][4], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][4], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][4], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][4], 1074);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][4], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][5] = CreatePlayerTextDraw(playerid, 313.000000, 176.000000, ""); //1075
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][5], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][5], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][5], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][5], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][5], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][5], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][5], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][5], 1075);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][5], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][6] = CreatePlayerTextDraw(playerid, 385.000000, 174.250000, "");//1076
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][6], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][6], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][6], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][6], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][6], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][6], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][6], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][6], 1076);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][6], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][7] = CreatePlayerTextDraw(playerid, 457.500000, 174.250000, ""); //1077
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][7], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][7], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][7], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][7], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][7], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][7], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][7], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][7], 1077);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][7], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][8] = CreatePlayerTextDraw(playerid, 168.000000, 224.562500, ""); //1078
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][8], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][8], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][8], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][8], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][8], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][8], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][8], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][8], 1078);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][8], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][9] = CreatePlayerTextDraw(playerid, 241.000000, 223.687500, "");  //1079
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][9], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][9], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][9], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][9], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][9], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][9], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][9], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][9], 1079);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][9], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][10] = CreatePlayerTextDraw(playerid, 312.500000, 224.562500, "");  //1080
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][10], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][10], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][10], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][10], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][10], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][10], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][10], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][10], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][10], 1080);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][10], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][11] = CreatePlayerTextDraw(playerid, 386.000000, 223.687500, "");  //1081
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][11], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][11], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][11], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][11], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][11], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][11], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][11], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][11], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][11], 1081);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][11], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][12] = CreatePlayerTextDraw(playerid, 458.000000, 222.375000, ""); //1082
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][12], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][12], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][12], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][12], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][12], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][12], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][12], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][12], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][12], 1082);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][12], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][13] = CreatePlayerTextDraw(playerid, 168.500000, 276.187500, ""); //1083
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][13], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][13], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][13], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][13], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][13], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][13], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][13], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][13], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][13], 1083);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][13], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][14] = CreatePlayerTextDraw(playerid, 242.000000, 275.750000, ""); //1084
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][14], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][14], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][14], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][14], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][14], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][14], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][14], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][14], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][14], 1084);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][14], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][15] = CreatePlayerTextDraw(playerid, 314.000000, 276.625000, ""); //1085
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][15], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][15], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][15], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][15], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][15], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][15], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][15], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][15], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][15], 1085);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][15], 0.000000, 0.000000, 90.000000, 1.000000);
	
	Wheels[playerid][16] = CreatePlayerTextDraw(playerid, 170.000000, 176.437500, ""); // 1025 V2--------
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][16], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][16], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][16], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][16], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][16], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][16], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][16], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][16], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][16], 1025);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][16], 0.000000, 0.000000, 90.000000, 1.000000);
	
	Wheels[playerid][17] = CreatePlayerTextDraw(playerid, 241.500000, 175.125000, ""); //1096 V2--------
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][17], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][17], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][17], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][17], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][17], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][17], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][17], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][17], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][17], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][17], 1096);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][17], 0.000000, 0.000000, 90.000000, 1.000000);
	
	Wheels[playerid][18] = CreatePlayerTextDraw(playerid, 313.000000, 176.000000, "");
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][18], 0.000000, 0.000000); // 1097 V2--------
	PlayerTextDrawTextSize(playerid, Wheels[playerid][18], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][18], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][18], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][18], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][18], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][18], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][18], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][18], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][18], 1097);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][18], 0.000000, 0.000000, 90.000000, 1.000000);
	
	Wheels[playerid][19] = CreatePlayerTextDraw(playerid, 385.000000, 174.250000, ""); //1098 V2--------
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][19], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][19], 43.500000, 41.437500);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][19], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][19], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][19], 0);
	PlayerTextDrawFont(playerid, Wheels[playerid][19], 5);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][19], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][19], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][19], true);
	PlayerTextDrawSetPreviewModel(playerid, Wheels[playerid][19], 1098);
	PlayerTextDrawSetPreviewRot(playerid, Wheels[playerid][19], 0.000000, 0.000000, 90.000000, 1.000000);

	Wheels[playerid][20] = CreatePlayerTextDraw(playerid, 437.500000, 312.500000, "box");
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][20], 0.000000, 1.549998);
	PlayerTextDrawTextSize(playerid, Wheels[playerid][20], 506.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][20], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][20], -1);
	PlayerTextDrawUseBox(playerid, Wheels[playerid][20], 1);
	PlayerTextDrawBoxColor(playerid, Wheels[playerid][20], 95);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][20], 255);
	PlayerTextDrawFont(playerid, Wheels[playerid][20], 1);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][20], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][20], 0);

	Wheels[playerid][21] = CreatePlayerTextDraw(playerid, 454.500000, 312.500000, "BACK");
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][21], 0.265498, 1.385625);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][21], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][21], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][21], 255);
	PlayerTextDrawFont(playerid, Wheels[playerid][21], 2);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][21], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][21], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][21], true);
	
	Wheels[playerid][22] = CreatePlayerTextDraw(playerid, 477.000000, 155.000000, "Next ~g~>"); // V2--------
	PlayerTextDrawLetterSize(playerid, Wheels[playerid][22], 0.250999, 1.066249);
	PlayerTextDrawAlignment(playerid, Wheels[playerid][22], 1);
	PlayerTextDrawColor(playerid, Wheels[playerid][22], -1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, Wheels[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, Wheels[playerid][22], 255);
	PlayerTextDrawFont(playerid, Wheels[playerid][22], 1);
	PlayerTextDrawSetProportional(playerid, Wheels[playerid][22], 1);
	PlayerTextDrawSetShadow(playerid, Wheels[playerid][22], 0);
	PlayerTextDrawSetSelectable(playerid, Wheels[playerid][22], true);
	return 1;
}
stock DestroyWheelMenu(playerid)
{
	for(new i=0; i < 23; i++) {
		PlayerTextDrawDestroy(playerid, Wheels[playerid][i]);
	}
	Page[playerid] = 1;
	return 1;
}
forward ShowWheels(playerid);
public ShowWheels(playerid)
{
	PlayerTextDrawShow(playerid, Wheels[playerid][0]);
	PlayerTextDrawShow(playerid, Wheels[playerid][1]);
	PlayerTextDrawShow(playerid, Wheels[playerid][2]);
	PlayerTextDrawShow(playerid, Wheels[playerid][3]);
	PlayerTextDrawShow(playerid, Wheels[playerid][4]);
	PlayerTextDrawShow(playerid, Wheels[playerid][5]);
	PlayerTextDrawShow(playerid, Wheels[playerid][6]);
	PlayerTextDrawShow(playerid, Wheels[playerid][7]);
	PlayerTextDrawShow(playerid, Wheels[playerid][8]);
	PlayerTextDrawShow(playerid, Wheels[playerid][9]);
	PlayerTextDrawShow(playerid, Wheels[playerid][10]);
	PlayerTextDrawShow(playerid, Wheels[playerid][11]);
	PlayerTextDrawShow(playerid, Wheels[playerid][12]);
	PlayerTextDrawShow(playerid, Wheels[playerid][13]);
	PlayerTextDrawShow(playerid, Wheels[playerid][14]);
	PlayerTextDrawShow(playerid, Wheels[playerid][15]);
	PlayerTextDrawShow(playerid, Wheels[playerid][20]);

	PlayerTextDrawShow(playerid, Wheels[playerid][22]);
	PlayerTextDrawSetString(playerid, Wheels[playerid][22], "Next ~g~>");
	PlayerTextDrawShow(playerid, Wheels[playerid][21]);
	Page[playerid] = 1;
   
	SelectTextDraw(playerid,0xFFFFFFFF);
	return 1;
}
stock HideWheels(playerid)
{
	PlayerTextDrawHide(playerid, Wheels[playerid][0]);
	PlayerTextDrawHide(playerid, Wheels[playerid][1]);
	PlayerTextDrawHide(playerid, Wheels[playerid][2]);
	PlayerTextDrawHide(playerid, Wheels[playerid][3]);
	PlayerTextDrawHide(playerid, Wheels[playerid][4]);
	PlayerTextDrawHide(playerid, Wheels[playerid][5]);
	PlayerTextDrawHide(playerid, Wheels[playerid][6]);
	PlayerTextDrawHide(playerid, Wheels[playerid][7]);
	PlayerTextDrawHide(playerid, Wheels[playerid][8]);
	PlayerTextDrawHide(playerid, Wheels[playerid][9]);
	PlayerTextDrawHide(playerid, Wheels[playerid][10]);
	PlayerTextDrawHide(playerid, Wheels[playerid][11]);
	PlayerTextDrawHide(playerid, Wheels[playerid][12]);
	PlayerTextDrawHide(playerid, Wheels[playerid][13]);
	PlayerTextDrawHide(playerid, Wheels[playerid][14]);
	PlayerTextDrawHide(playerid, Wheels[playerid][15]);
	PlayerTextDrawHide(playerid, Wheels[playerid][16]);
	PlayerTextDrawHide(playerid, Wheels[playerid][17]);
	PlayerTextDrawHide(playerid, Wheels[playerid][18]);
	PlayerTextDrawHide(playerid, Wheels[playerid][19]);
	PlayerTextDrawHide(playerid, Wheels[playerid][20]);
	PlayerTextDrawHide(playerid, Wheels[playerid][21]);
	PlayerTextDrawHide(playerid, Wheels[playerid][22]);
	Page[playerid] = 0;
	CancelSelectTextDraw(playerid);
	return 1;
}
stock ShowWPage2(playerid)
{
    PlayerTextDrawHide(playerid, Wheels[playerid][3]);
	PlayerTextDrawHide(playerid, Wheels[playerid][4]);
	PlayerTextDrawHide(playerid, Wheels[playerid][5]);
	PlayerTextDrawHide(playerid, Wheels[playerid][6]);
	PlayerTextDrawHide(playerid, Wheels[playerid][7]);
	PlayerTextDrawHide(playerid, Wheels[playerid][8]);
	PlayerTextDrawHide(playerid, Wheels[playerid][9]);
	PlayerTextDrawHide(playerid, Wheels[playerid][10]);
	PlayerTextDrawHide(playerid, Wheels[playerid][11]);
	PlayerTextDrawHide(playerid, Wheels[playerid][12]);
	PlayerTextDrawHide(playerid, Wheels[playerid][13]);
	PlayerTextDrawHide(playerid, Wheels[playerid][14]);
	PlayerTextDrawHide(playerid, Wheels[playerid][15]);
   
	PlayerTextDrawShow(playerid, Wheels[playerid][16]);
	PlayerTextDrawShow(playerid, Wheels[playerid][17]);
	PlayerTextDrawShow(playerid, Wheels[playerid][18]);
	PlayerTextDrawShow(playerid, Wheels[playerid][19]);
   
	PlayerTextDrawSetString(playerid, Wheels[playerid][22], "Prev ~g~<");
	PlayerTextDrawShow(playerid, Wheels[playerid][22]);
	Page[playerid] = 2;
   
	return 1;
}
stock ShowWPage1(playerid)
{
    PlayerTextDrawShow(playerid, Wheels[playerid][3]);
	PlayerTextDrawShow(playerid, Wheels[playerid][4]);
	PlayerTextDrawShow(playerid, Wheels[playerid][5]);
	PlayerTextDrawShow(playerid, Wheels[playerid][6]);
	PlayerTextDrawShow(playerid, Wheels[playerid][7]);
	PlayerTextDrawShow(playerid, Wheels[playerid][8]);
	PlayerTextDrawShow(playerid, Wheels[playerid][9]);
	PlayerTextDrawShow(playerid, Wheels[playerid][10]);
	PlayerTextDrawShow(playerid, Wheels[playerid][11]);
	PlayerTextDrawShow(playerid, Wheels[playerid][12]);
	PlayerTextDrawShow(playerid, Wheels[playerid][13]);
	PlayerTextDrawShow(playerid, Wheels[playerid][14]);
	PlayerTextDrawShow(playerid, Wheels[playerid][15]);
   
	PlayerTextDrawHide(playerid, Wheels[playerid][16]);
	PlayerTextDrawHide(playerid, Wheels[playerid][17]);
	PlayerTextDrawHide(playerid, Wheels[playerid][18]);
	PlayerTextDrawHide(playerid, Wheels[playerid][19]);
   
	PlayerTextDrawSetString(playerid, Wheels[playerid][22], "Next ~g~>");
	PlayerTextDrawShow(playerid, Wheels[playerid][22]);
	Page[playerid] = 1;
   
	return 1;
}
//============================================//
stock BuildFishingTextdraws(playerid)
{
	Fishdraw0[playerid] = CreatePlayerTextDraw(playerid, 624.375000, 215.833282, "Fishing...");
	PlayerTextDrawLetterSize(playerid, Fishdraw0[playerid], 0.618125, 2.323333);
	PlayerTextDrawTextSize(playerid, Fishdraw0[playerid], -505.000000, -222.833374);
	PlayerTextDrawAlignment(playerid, Fishdraw0[playerid], 3);
	PlayerTextDrawColor(playerid, Fishdraw0[playerid], -1);
	PlayerTextDrawSetShadow(playerid, Fishdraw0[playerid], 0);
	PlayerTextDrawSetOutline(playerid, Fishdraw0[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, Fishdraw0[playerid], 65535);
	PlayerTextDrawFont(playerid, Fishdraw0[playerid], 1);
	PlayerTextDrawSetProportional(playerid, Fishdraw0[playerid], 1);
	return 1;
}

stock ShowFishingTD(playerid)
{
	PlayerTextDrawShow(playerid, Fishdraw0[playerid]);
	return 1;
}

stock HideFishingTD(playerid)
{
	PlayerTextDrawHide(playerid, Fishdraw0[playerid]);
	return 1;
}
//============================================//