execute as @e[tag=east1,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-0.6
execute as @e[tag=east2,limit=1,sort=nearest] at @s run tp @s ~ ~ ~0.6
execute at @e[tag=east2,limit=1,sort=nearest] run playsound minecraft:block.piston.contract ambient @a ~ ~ ~
fill -1950 105 2036 -1950 102 2034 barrier
scoreboard players set .east doors 0