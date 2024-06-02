execute as @e[tag=west1,limit=1,sort=nearest] at @s run tp @s ~ ~ ~0.6
execute as @e[tag=west2,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-0.6
execute at @e[tag=west2,limit=1,sort=nearest] run playsound minecraft:block.piston.contract ambient @a ~ ~ ~
fill -1958 105 2036 -1958 102 2034 barrier
scoreboard players set .west doors 0