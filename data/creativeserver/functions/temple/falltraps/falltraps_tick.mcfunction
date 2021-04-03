execute as @e[tag=falling_temple_block] positioned as @s unless block ~ ~-1.5 ~ air run kill @s

execute unless score 1 fallen matches 1 run function creativeserver:temple/falltraps/falltrap_1/trigger
execute unless score 2 fallen matches 1 run function creativeserver:temple/falltraps/falltrap_2/trigger
execute unless score 3 fallen matches 1 run function creativeserver:temple/falltraps/falltrap_3/trigger
execute unless score 4 fallen matches 1 run function creativeserver:temple/falltraps/falltrap_4/trigger
execute unless score 4 fallen matches 1 run function creativeserver:temple/falltraps/falltrap_5/trigger

execute as @a[gamemode=adventure,x=-266,y=69,z=147,dx=4,dy=6,dz=4] positioned as @s unless block ~ ~-1 ~ air run kill @s
execute as @a[gamemode=adventure,x=-260,y=69,z=160,dx=0,dy=3,dz=0] positioned as @s unless block ~ ~-1 ~ air run kill @s