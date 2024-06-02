scoreboard players set .east doors 1
execute as @e[tag=east1,limit=1,sort=nearest] at @s run tp @s ~ ~ ~0.6
execute as @e[tag=east2,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-0.6
playsound minecraft:block.piston.extend ambient @a ~ ~ ~
fill -1950 105 2036 -1950 102 2034 air
schedule function cf:interaction/citymap/east/door2 40t
