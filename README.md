Frota
=====


###D2Ware Servers###
 - You can play this on D2Ware servers here: http://d2ware.net

###How do I use this?###
 - Keep in mind it is still in development, and may be buggy
 - **IMPORTANT** Dota will only load the first plugin in your addons folder, to prevent this, move all other addons out of your addons folder. (I moved mine into an addons_disabled folder) - ONLY the host has to do this. This is not required if you use d2fixups
 - There is another guide here: http://www.reddit.com/r/Dota2Modding/comments/1v3ywq/custom_gamemodes_how_to_play_frota_and_set_up/
 - Download the zip (or clone if you are good enough)
 - Stick the files into "Steam\steamapps\common\dota 2 beta\dota\addons\Frota"
 - If done correctly, the following folder should exist "Steam\steamapps\common\dota 2 beta\dota\addons\Frota\HudSRC"
 - Reopen dota after each install / update (hud might not update)
 - Run the following command
  - dota_local_addon_enable 1;dota_local_addon_game Frota;dota_local_addon_map Frota;dota_force_gamemode 15;update_addon_paths;dota_wait_for_players_to_load 0;dota_wait_for_players_to_load_timeout 10;map riverofsouls;
 - **NOTE** If you reach the hero selection screen, it means Frota didn't load correctly! Frota should override / skip the hero selection screen, and  take you directly to a vote screen! Please ensure you removed Frostivus (and any other addons) and then restart your client.

###How do I play with friend?###
 - You need to setup a dedicated server, and port forward (or, you can use hamachi, but port forward is easier)
 - Follow the guide here: https://forums.alliedmods.net/showpost.php?p=1911667&postcount=64
 - Your addons folder should look like this (note: No DLL files are pictured) http://i.imgur.com/sUtBFki.jpg
 - Google how to port forward, it is different for every router!

###More SRCDS Setup Help###
 - To debug, try adding **-condebug** to the SRCDS launch parameters, this will log all the server output to server/dota/console.log, you can check for errors in there
 - Here's a set of working launch parameters
  - srcds.exe -console -game dota +maxplayers 10 +hostport 27015 -condebug -dev +exec someconfig +map riverofsouls.bsp
  - **NOTE:** You need to create **server/dota/cfg/someconfig.cfg** and add the following to it to make it work:
   - dota_local_addon_enable 1;dota_local_addon_game Frota;dota_local_addon_map Frota;dota_force_gamemode 15;update_addon_paths
 - NOTE: It is Frota, not frota -- It needs to be uppercase!
 - If your steam.inf doesn't match up to the <active_version> of [THIS DOCUMENT] (http://api.steampowered.com/IGCVersion_570/GetServerVersion/v1?format=xml) then the server may just exit
 - Verify you have installed metamod and d2fixups correctly, you can do this by adding **+meta list** to your launch parameters, starting the server, then checking your dota/console.log. You should see these two lines:
  - Listing 1 plugin:
  - [01] Dota 2 Fixups (1.9.2) by Nicholas Hastings
 - If you don't see these two, then you have installed either metamod, or d2fixups incorrectly
 - If you see >> Unknown command "meta" << it means metamod is installed incorrectly, verify you added it to [gameinfo.txt](http://wiki.alliedmods.net/Installing_Metamod:Source#GameInfo)

###Is there a way I can spawn test heroes?###
 - Try the console command 'fake', it will fill the server with fake clients, and give each a hero, this command can only be run from the server console

###Hooks & Mod Events###
 - There are many hooks and mod events to make making gamemodes easier.
 - See the top of gamemodes.lua for the latest list of hooks and mod events.

###Maps###
 - riverofsouls by [Z-Machine][11]

###Translations###
 - Please make a pull request if you want to update translations
 - English by [Ash47][1]
 - Brazilian by [otaviomad][16], [away000][17]
 - Finnish by [SQL][9]
 - French by Canardlaquay
 - German by [DarkMio_mainframe][5]
 - Greek by [SeCTeen][18]
 - Hungarian by [Easimer][4]
 - Nyx by [penguinwizzard][6]
 - Polish by [Kobb][8]
 - Russian by [lokkdokk][2], [Shuker][3]
 - Chinese by [cs-italy][10]
 - Spanish by JosDW
 - Turkish by [ozen][7]
