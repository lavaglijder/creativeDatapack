scoreboard players set foundCheck* temple 0
## Check if new record
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 1 if score templeTime* temple < solo1* temple as @a[tag=inTempleGame] run function creativeserver:temple/ending/leaderboard_sign_add/updaters/s1
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 1 if score templeTime* temple < solo2* temple as @a[tag=inTempleGame] run function creativeserver:temple/ending/leaderboard_sign_add/updaters/s2
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 1 if score templeTime* temple < solo3* temple as @a[tag=inTempleGame] run function creativeserver:temple/ending/leaderboard_sign_add/updaters/s3
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 1 if score templeTime* temple < solo4* temple as @a[tag=inTempleGame] run function creativeserver:temple/ending/leaderboard_sign_add/updaters/s4
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 1 if score templeTime* temple < solo5* temple as @a[tag=inTempleGame] run function creativeserver:temple/ending/leaderboard_sign_add/updaters/s5

execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 2 if score templeTime* temple < team1* temple run scoreboard players set templeCT* temple 1
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 2 if score templeTime* temple < team1* temple as @a[tag=inTempleGame] run function creativeserver:temple/ending/leaderboard_sign_add/updaters/t1
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 2 if score templeTime* temple < team2* temple run scoreboard players set templeCT* temple 3
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 2 if score templeTime* temple < team2* temple as @a[tag=inTempleGame] run function creativeserver:temple/ending/leaderboard_sign_add/updaters/t2
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 2 if score templeTime* temple < team3* temple run scoreboard players set templeCT* temple 5
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 2 if score templeTime* temple < team3* temple as @a[tag=inTempleGame] run function creativeserver:temple/ending/leaderboard_sign_add/updaters/t3
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 2 if score templeTime* temple < team4* temple run scoreboard players set templeCT* temple 7
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 2 if score templeTime* temple < team4* temple as @a[tag=inTempleGame] run function creativeserver:temple/ending/leaderboard_sign_add/updaters/t4
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 2 if score templeTime* temple < team5* temple run scoreboard players set templeCT* temple 9
execute if score foundCheck* temple matches 0 if score playersInLobby* temple matches 2 if score templeTime* temple < team5* temple as @a[tag=inTempleGame] run function creativeserver:temple/ending/leaderboard_sign_add/updaters/t5

## update signs
execute if entity @a[scores={soloTLBAdd=1..4}] run data modify block -276 95 87 Text2 set from block -276 95 86 Text2 
execute if entity @a[scores={soloTLBAdd=1..4}] run data modify block -276 95 87 Text4 set from block -276 95 86 Text4
execute if entity @a[scores={soloTLBAdd=1..4}] run scoreboard players operation solo5* temple = solo4* temple
execute if entity @a[scores={soloTLBAdd=4}] run scoreboard players operation solo4* temple = templeTime* temple

execute if entity @a[scores={soloTLBAdd=1..3}] run data modify block -276 95 86 Text2 set from block -276 95 85 Text2
execute if entity @a[scores={soloTLBAdd=1..3}] run data modify block -276 95 86 Text4 set from block -276 95 85 Text4
execute if entity @a[scores={soloTLBAdd=1..3}] run scoreboard players operation solo4* temple = solo3* temple
execute if entity @a[scores={soloTLBAdd=3}] run scoreboard players operation solo3* temple = templeTime* temple

execute if entity @a[scores={soloTLBAdd=1..2}] run data modify block -276 95 85 Text2 set from block -276 96 87 Text2
execute if entity @a[scores={soloTLBAdd=1..2}] run data modify block -276 95 85 Text4 set from block -276 96 87 Text4
execute if entity @a[scores={soloTLBAdd=1..2}] run scoreboard players operation solo3* temple = solo2* temple
execute if entity @a[scores={soloTLBAdd=2}] run scoreboard players operation solo2* temple = templeTime* temple

execute if entity @a[scores={soloTLBAdd=1}] run data modify block -276 96 87 Text2 set from block -276 96 85 Text2
execute if entity @a[scores={soloTLBAdd=1}] run data modify block -276 96 87 Text4 set from block -276 96 85 Text4
execute if entity @a[scores={soloTLBAdd=1}] run scoreboard players operation solo2* temple = solo1* temple
execute if entity @a[scores={soloTLBAdd=1}] run scoreboard players operation solo1* temple = templeTime* temple


execute if entity @a[scores={teamTLBAdd=1..8}] run data modify block -276 95 91 Text2 set from block -276 95 90 Text2 
execute if entity @a[scores={teamTLBAdd=1..8}] run data modify block -276 95 91 Text3 set from block -276 95 90 Text3 
execute if entity @a[scores={teamTLBAdd=1..8}] run data modify block -276 95 91 Text4 set from block -276 95 90 Text4
execute if entity @a[scores={teamTLBAdd=1..8}] run scoreboard players operation team5* temple = team4* temple
execute if entity @a[scores={teamTLBAdd=7..8}] run scoreboard players operation team4* temple = templeTime* temple

execute if entity @a[scores={teamTLBAdd=1..6}] run data modify block -276 95 90 Text2 set from block -276 95 89 Text2 
execute if entity @a[scores={teamTLBAdd=1..6}] run data modify block -276 95 90 Text3 set from block -276 95 89 Text3 
execute if entity @a[scores={teamTLBAdd=1..6}] run data modify block -276 95 90 Text4 set from block -276 95 89 Text4
execute if entity @a[scores={teamTLBAdd=1..6}] run scoreboard players operation team4* temple = team3* temple
execute if entity @a[scores={teamTLBAdd=5..6}] run scoreboard players operation team3* temple = templeTime* temple

execute if entity @a[scores={teamTLBAdd=1..4}] run data modify block -276 95 89 Text2 set from block -276 96 91 Text2 
execute if entity @a[scores={teamTLBAdd=1..4}] run data modify block -276 95 89 Text3 set from block -276 96 91 Text3 
execute if entity @a[scores={teamTLBAdd=1..4}] run data modify block -276 95 89 Text4 set from block -276 96 91 Text4
execute if entity @a[scores={teamTLBAdd=1..4}] run scoreboard players operation team3* temple = team2* temple
execute if entity @a[scores={teamTLBAdd=3..4}] run scoreboard players operation team2* temple = templeTime* temple

execute if entity @a[scores={teamTLBAdd=1..2}] run data modify block -276 96 91 Text2 set from block -276 96 89 Text2 
execute if entity @a[scores={teamTLBAdd=1..2}] run data modify block -276 96 91 Text3 set from block -276 96 89 Text3 
execute if entity @a[scores={teamTLBAdd=1..2}] run data modify block -276 96 91 Text4 set from block -276 96 89 Text4
execute if entity @a[scores={teamTLBAdd=1..2}] run scoreboard players operation team2* temple = team1* temple
execute if entity @a[scores={teamTLBAdd=1..2}] run scoreboard players operation team1* temple = templeTime* temple

execute if entity @a[scores={soloTLBAdd=1}] run data merge block -276 96 85 {Text1:'{"text":"Solo #1","color":"#bfd7ea"}',Text2:'{"selector":"@a[scores={soloTLBAdd=1}]","color":"#36d1f7"}',Text4:'[{"score":{"name":"timeMin*","objective":"temple"},"color":"#ff5a5f"},{"text":"m ", "color":"#ff5a5f"},{"score":{"name":"timeSec*","objective":"temple"},"color":"#ff5a5f"},{"text":"s", "color":"#ff5a5f"}]'}
execute if entity @a[scores={soloTLBAdd=2}] run data merge block -276 96 87 {Text1:'{"text":"Solo #2","color":"#bfd7ea"}',Text2:'{"selector":"@a[scores={soloTLBAdd=2}]","color":"#36d1f7"}',Text4:'[{"score":{"name":"timeMin*","objective":"temple"},"color":"#ff5a5f"},{"text":"m ", "color":"#ff5a5f"},{"score":{"name":"timeSec*","objective":"temple"},"color":"#ff5a5f"},{"text":"s", "color":"#ff5a5f"}]'}
execute if entity @a[scores={soloTLBAdd=3}] run data merge block -276 95 85 {Text1:'{"text":"Solo #3","color":"#bfd7ea"}',Text2:'{"selector":"@a[scores={soloTLBAdd=3}]","color":"#36d1f7"}',Text4:'[{"score":{"name":"timeMin*","objective":"temple"},"color":"#ff5a5f"},{"text":"m ", "color":"#ff5a5f"},{"score":{"name":"timeSec*","objective":"temple"},"color":"#ff5a5f"},{"text":"s", "color":"#ff5a5f"}]'}
execute if entity @a[scores={soloTLBAdd=4}] run data merge block -276 95 86 {Text1:'{"text":"Solo #4","color":"#bfd7ea"}',Text2:'{"selector":"@a[scores={soloTLBAdd=4}]","color":"#36d1f7"}',Text4:'[{"score":{"name":"timeMin*","objective":"temple"},"color":"#ff5a5f"},{"text":"m ", "color":"#ff5a5f"},{"score":{"name":"timeSec*","objective":"temple"},"color":"#ff5a5f"},{"text":"s", "color":"#ff5a5f"}]'}
execute if entity @a[scores={soloTLBAdd=5}] run data merge block -276 95 87 {Text1:'{"text":"Solo #5","color":"#bfd7ea"}',Text2:'{"selector":"@a[scores={soloTLBAdd=5}]","color":"#36d1f7"}',Text4:'[{"score":{"name":"timeMin*","objective":"temple"},"color":"#ff5a5f"},{"text":"m ", "color":"#ff5a5f"},{"score":{"name":"timeSec*","objective":"temple"},"color":"#ff5a5f"},{"text":"s", "color":"#ff5a5f"}]'}

execute if entity @a[scores={teamTLBAdd=1}] run data merge block -276 96 89 {Text1:'{"text":"Team #1","color":"#bfd7ea"}',Text2:'{"selector":"@a[scores={teamTLBAdd=1}]","color":"#36d1f7"}',Text3:'{"selector":"@a[scores={teamTLBAdd=2}]","color":"#36d1f7"}',Text4:'[{"score":{"name":"timeMin*","objective":"temple"},"color":"#ff5a5f"},{"text":"m ", "color":"#ff5a5f"},{"score":{"name":"timeSec*","objective":"temple"},"color":"#ff5a5f"},{"text":"s", "color":"#ff5a5f"}]'}
execute if entity @a[scores={teamTLBAdd=3}] run data merge block -276 96 91 {Text1:'{"text":"Team #2","color":"#bfd7ea"}',Text2:'{"selector":"@a[scores={teamTLBAdd=3}]","color":"#36d1f7"}',Text3:'{"selector":"@a[scores={teamTLBAdd=4}]","color":"#36d1f7"}',Text4:'[{"score":{"name":"timeMin*","objective":"temple"},"color":"#ff5a5f"},{"text":"m ", "color":"#ff5a5f"},{"score":{"name":"timeSec*","objective":"temple"},"color":"#ff5a5f"},{"text":"s", "color":"#ff5a5f"}]'}
execute if entity @a[scores={teamTLBAdd=5}] run data merge block -276 95 89 {Text1:'{"text":"Team #3","color":"#bfd7ea"}',Text2:'{"selector":"@a[scores={teamTLBAdd=5}]","color":"#36d1f7"}',Text3:'{"selector":"@a[scores={teamTLBAdd=6}]","color":"#36d1f7"}',Text4:'[{"score":{"name":"timeMin*","objective":"temple"},"color":"#ff5a5f"},{"text":"m ", "color":"#ff5a5f"},{"score":{"name":"timeSec*","objective":"temple"},"color":"#ff5a5f"},{"text":"s", "color":"#ff5a5f"}]'}
execute if entity @a[scores={teamTLBAdd=7}] run data merge block -276 95 90 {Text1:'{"text":"Team #4","color":"#bfd7ea"}',Text2:'{"selector":"@a[scores={teamTLBAdd=7}]","color":"#36d1f7"}',Text3:'{"selector":"@a[scores={teamTLBAdd=8}]","color":"#36d1f7"}',Text4:'[{"score":{"name":"timeMin*","objective":"temple"},"color":"#ff5a5f"},{"text":"m ", "color":"#ff5a5f"},{"score":{"name":"timeSec*","objective":"temple"},"color":"#ff5a5f"},{"text":"s", "color":"#ff5a5f"}]'}
execute if entity @a[scores={teamTLBAdd=9}] run data merge block -276 95 91 {Text1:'{"text":"Team #5","color":"#bfd7ea"}',Text2:'{"selector":"@a[scores={teamTLBAdd=9}]","color":"#36d1f7"}',Text3:'{"selector":"@a[scores={teamTLBAdd=10}]","color":"#36d1f7"}',Text4:'[{"score":{"name":"timeMin*","objective":"temple"},"color":"#ff5a5f"},{"text":"m ", "color":"#ff5a5f"},{"score":{"name":"timeSec*","objective":"temple"},"color":"#ff5a5f"},{"text":"s", "color":"#ff5a5f"}]'}


execute as @a[scores={soloTLBAdd=1..}] run scoreboard players reset @s soloTLBAdd 
execute as @a[scores={teamTLBAdd=1..}] run scoreboard players reset @s teamTLBAdd 