#include <a_samp>
#include <zcmd>

#define DIALOG_HELMETSELECT 1



CMD:helmet(playerid, params[])
{
    if(IsPlayerInAnyVehicle(playerid) == 1)
    {
        ShowPlayerDialog(playerid,DIALOG_HELMETSELECT,DIALOG_STYLE_LIST,"Select the helmet you wish to use.", "Helmet 1 - Fire Stripes. \nHelmet 2 - Blue and white motocross style. \nHelmet 3 - Red. \nHelmet 4 - White. \nHelmet 5 - Purple / pink. \nRemove helmet.", "Select", "Close");
    }
    if(GetPlayerState(playerid) == PLAYER_STATE_PASSENGER)
    {
        ShowPlayerDialog(playerid,DIALOG_HELMETSELECT,DIALOG_STYLE_LIST,"Select the helmet you wish to use.", "Helmet 1 - Fire Stripes. \nHelmet 2 - Blue and white motocross style. \nHelmet 3 - Red. \nHelmet 4 - White. \nHelmet 5 - Purple / pink. \nRemove helmet.", "Select", "Close");
    }
    return 1;
}


public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch( dialogid )
    {
        case DIALOG_HELMETSELECT:
        {
            if(response)
            {
                switch(listitem)
                {
                    case 0:
                    {
                        SetPlayerAttachedObject(playerid,3 , 18645, 2, 0.07, 0.017, 0, 88, 75, 0);
                        SendClientMessage(playerid, -1,"Helmet 1 - Fire Stripes.");
                        //new sendername[MAX_PLAYER_NAME], string[200];
                        //GetPlayerName(playerid, sendername, sizeof(sendername));
                        //endername[strfind(sendername,"_")] = ' ';
                        //format(string, sizeof(string), "*%s reaches for the helmet, and puts it on.", sendername);
                        //ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
                        return 1;
                    }
                    case 1:
                    {
                        SetPlayerAttachedObject(playerid,3 , 18976, 2, 0.07, 0.017, 0, 88, 75, 0);
                        SendClientMessage(playerid, -1,"Helmet 2 - Blue and white motocross style.");
                        //new sendername[MAX_PLAYER_NAME], string[200];
                        //GetPlayerName(playerid, sendername, sizeof(sendername));
                        //sendername[strfind(sendername,"_")] = ' ';
                        //format(string, sizeof(string), "*%s reaches for the helmet, and puts it on.", sendername);
                        //ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
                        return 1;
                    }
                    case 2:
                    {
                        SetPlayerAttachedObject(playerid,3 , 18977, 2, 0.07, 0.017, 0, 88, 75, 0);
                        SendClientMessage(playerid, -1,"Helmet 3 - Red.");
                        //new sendername[MAX_PLAYER_NAME], string[200];
                        //GetPlayerName(playerid, sendername, sizeof(sendername));
                        //sendername[strfind(sendername,"_")] = ' ';
                        //format(string, sizeof(string), "*%s reaches for the helmet, and puts it on.", sendername);
                        //ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
                        return 1;
                    }
                    case 3:
                    {
                        SetPlayerAttachedObject(playerid,3 , 18978, 2, 0.07, 0.017, 0, 88, 75, 0);
                        SendClientMessage(playerid, -1,"Helmet 4 - White.");
                        //new sendername[MAX_PLAYER_NAME], string[200];
                        //GetPlayerName(playerid, sendername, sizeof(sendername));
                        //sendername[strfind(sendername,"_")] = ' ';
                        //format(string, sizeof(string), "*%s reaches for the helmet, and puts it on.", sendername);
                        //ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
                        return 1;
                    }
                    case 4:
                    {
                        SetPlayerAttachedObject(playerid,3 , 18979, 2, 0.07, 0.017, 0, 88, 75, 0);
                        SendClientMessage(playerid, -1,"Helmet 5 - Purple / pink.");
                        //new sendername[MAX_PLAYER_NAME], string[200];
                        //GetPlayerName(playerid, sendername, sizeof(sendername));
                        //sendername[strfind(sendername,"_")] = ' ';
                        //format(string, sizeof(string), "*%s reaches for the helmet, and puts it on.", sendername);
                        //ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
                        return 1;
                    }
                    case 5:
                    {
                        if(IsPlayerAttachedObjectSlotUsed(playerid, 3)) RemovePlayerAttachedObject(playerid, 3);
                        SendClientMessage(playerid, -1,"Helmet Removed.");
                        //new sendername[MAX_PLAYER_NAME], string[200];
                        //GetPlayerName(playerid, sendername, sizeof(sendername));
                        //sendername[strfind(sendername,"_")] = ' ';
                        //format(string, sizeof(string), "*%s reaches for the helmet, and takes it off.", sendername);
                        //ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
                        return 1;
                    }
                }
            }
        }
    }
    return 1;
}
