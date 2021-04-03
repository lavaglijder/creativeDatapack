## Secret door nether stage
execute unless block -270 61 168 lever[powered=true] run fill -271 61 167 -271 60 167 polished_basalt[axis=y]
execute unless block -270 61 166 lever[powered=true] run fill -271 61 167 -271 60 167 polished_basalt[axis=y]
execute if block -270 61 168 lever[powered=true] if block -270 61 166 lever[powered=true] run fill -271 61 167 -271 60 167 air

execute if score stage* temple matches 6 as @a[scores={hunger=..18},tag=inTempleGame] run effect give @s saturation 1 1