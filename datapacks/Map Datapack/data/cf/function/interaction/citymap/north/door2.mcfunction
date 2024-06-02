execute as @e[tag=north1,limit=1,sort=nearest] at @s run tp @s ~-0.6 ~ ~
execute as @e[tag=north2,limit=1,sort=nearest] at @s run tp @s ~0.6 ~ ~
execute at @e[tag=north2,limit=1,sort=nearest] run playsound minecraft:block.piston.contract ambient @a ~ ~ ~
fill -1953 105 2031 -1955 102 2031 barrier
scoreboard players set .north doors 0