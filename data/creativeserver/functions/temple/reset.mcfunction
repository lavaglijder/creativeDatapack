data merge block -289 60 136 {Items: [],LootTable:"creativeserver:temple/secret_chest_1"}
data merge block -258 56 174 {Items: [],LootTable:"creativeserver:temple/secret_chest_1"}
setblock -270 61 168 air
setblock -270 61 166 air
clone -67 79 -10 -59 79 -2 -297 61 154

scoreboard players set stage* temple 0
scoreboard players set templeTime* temple 0
schedule function creativeserver:temple/the_end_stage/parkour/tower 1s replace