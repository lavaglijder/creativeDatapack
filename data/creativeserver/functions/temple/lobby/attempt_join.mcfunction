scoreboard players set @s templeJoin 0

execute if score t playersInLobby matches 2.. unless score ingame* temple matches 1.. run tellraw @s [{"text":"Game is full","color": "red"}]
execute if score ingame* temple matches 1.. run tellraw @s [{"text":"Game in progress","color": "red"}]

execute as @s[tag=!inTempleLobby] if score ingame* temple matches ..0 if score t playersInLobby matches ..1 run function creativeserver:temple/lobby/join