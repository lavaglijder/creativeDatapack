function creativeserver:temple/arrow_trap_triggers
function creativeserver:temple/falltraps/falltraps_tick
function creativeserver:temple/lobby/tick
execute if score ingame* temple matches 1 run function creativeserver:temple/ingame_tick

## on leave
execute as @a[scores={leave=1..},tag=inTempleLobby,tag=!inTempleGame] run function creativeserver:temple/lobby/leave
execute as @a[scores={leave=1..},tag=inTempleGame,tag=!inTempleLobby] run function creativeserver:temple/lobby/leave
execute as @a[scores={leave=1..},tag=inTempleGame,tag=inTempleLobby] run function creativeserver:temple/lobby/leave

execute as @a[scores={leave=1..}] run scoreboard players set @s leave 0