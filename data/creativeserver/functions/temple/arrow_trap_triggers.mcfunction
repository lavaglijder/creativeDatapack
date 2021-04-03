execute if block -268 70 167 minecraft:tripwire_hook[powered=true] run scoreboard players set ar pulse 100
execute if block -259 72 163 stone_pressure_plate[powered=true] run scoreboard players set ar pulse 100
execute if block -265 72 163 stone_pressure_plate[powered=true] run scoreboard players set ar pulse 100
execute if block -266 71 165 stone_pressure_plate[powered=true] run scoreboard players set ar pulse 100
execute if block -263 71 165 stone_pressure_plate[powered=true] run scoreboard players set ar pulse 100
execute if block -265 69 169 stone_pressure_plate[powered=true] run scoreboard players set ar pulse 100
execute if block -261 69 169 stone_pressure_plate[powered=true] run scoreboard players set ar pulse 100


execute if score ar pulse matches 1.. run function creativeserver:temple/arrow_trap
execute if score ar pulse matches 1.. run scoreboard players remove ar pulse 1