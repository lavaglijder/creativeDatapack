## Count players in lobby
scoreboard players set playersInLobby* temple 0
execute as @a[tag=inTempleLobby] run scoreboard players add playersInLobby* temple 1
execute as @a[tag=inTempleGame] run scoreboard players add playersInLobby* temple 1

## Sign update
data merge block -276 95 88 {Text1:'[{"text":"Temple Quest","color":"#fc8803"}]',Text2:'[{"text":"Status: ","color":"#03fce7"},{"nbt":"status","storage":"minecraft:temple","color":"#03b1fc"}]',Text3:'[{"text":"Players: ","color":"#03fce7"},{"score":{"name":"playersInLobby*","objective":"temple"},"color":"#03b1fc"},{"text":"/2","color":"#03fce7"}]',Text4:'{"text":"Click to join","color":"green","clickEvent":{"action":"run_command","value":"/trigger templeJoin"}}'}

## Join info
scoreboard players enable @a templeJoin
execute as @a if score @s templeJoin matches 1.. run function creativeserver:temple/lobby/attempt_join

# run function when not ingame
execute if score ingame* temple matches ..0 run function creativeserver:temple/lobby/in_lobby