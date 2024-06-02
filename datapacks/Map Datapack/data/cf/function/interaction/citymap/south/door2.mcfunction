execute as @e[tag=south1,limit=1,sort=nearest] at @s run tp @s ~0.6 ~ ~
execute as @e[tag=south2,limit=1,sort=nearest] at @s run tp @s ~-0.6 ~ ~
execute at @e[tag=south2,limit=1,sort=nearest] run playsound minecraft:block.piston.contract ambient @a ~ ~ ~
fill -1955 105 2039 -1953 102 2039 barrier
scoreboard players set .south doors 0