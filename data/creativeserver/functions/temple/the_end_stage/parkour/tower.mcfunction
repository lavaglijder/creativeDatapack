schedule function creativeserver:temple/the_end_stage/parkour/tower 20t

scoreboard players add towerParkour1* temple 1
execute if score towerParkour1* temple matches 3.. in the_end run scoreboard players set towerParkour1* temple 0

execute if score towerParkour1* temple matches 0 in the_end run setblock 2 105 19 purpur_block
execute if score towerParkour1* temple matches 0 in the_end run setblock -1 105 16 air

execute if score towerParkour1* temple matches 1 in the_end run setblock 2 105 16 purpur_block
execute if score towerParkour1* temple matches 1 in the_end run setblock 2 105 19 air

execute if score towerParkour1* temple matches 2 in the_end run setblock 2 105 16 air
execute if score towerParkour1* temple matches 2 in the_end run setblock -1 105 16 purpur_block
