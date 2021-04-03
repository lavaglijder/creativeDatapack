execute if score ingame* temple matches 1 run schedule function creativeserver:temple/player_timer 1s
scoreboard players add templeTime* temple 1
scoreboard players operation timeSec* temple = templeTime* temple
scoreboard players operation timeSec* temple %= 60* temple
scoreboard players operation timeMin* temple = templeTime* temple
scoreboard players operation timeMin* temple /= 60* temple
