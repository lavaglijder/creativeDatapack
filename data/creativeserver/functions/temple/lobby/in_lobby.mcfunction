## countdown checks
execute if score countdown* temple matches 0.. if score t playersInLobby matches ..0 run scoreboard players set countdown* temple -1
execute if score countdown* temple matches ..-1 if score t playersInLobby matches 0.. run scoreboard players set countdown* temple 600
## remove one score of countdown
scoreboard players remove countdown* temple 1
## make a countdown to sec
scoreboard players operation countdownr* temple = countdown* temple
scoreboard players operation countdownr* temple /= tick* temple

execute if score countdown* temple matches 0.. as @a[tag=inTempleLobby] run title @s actionbar [{"text":"Starting in ","color":"#18b1d6"},{"score": {"name": "countdownr*","objective": "temple"},"color":"aqua"}]

execute if score countdown* temple matches 0 run function creativeserver:temple/reset
execute if score countdown* temple matches 0 run tag @a[tag=inTempleLobby] add inTempleGame
execute if score countdown* temple matches 0 run tag @a[tag=inTempleLobby] remove inTempleLobby

execute if score countdown* temple matches 0 as @a[tag=inTempleGame] run function creativeserver:temple/lobby/start_game
execute if score countdown* temple matches 0 run schedule function creativeserver:temple/player_timer 1s replace

execute if score countdown* temple matches 0 run scoreboard players set ingame* temple 1