scoreboard players set .north doors 1
execute as @e[tag=north1,limit=1,sort=nearest] at @s run tp @s ~0.6 ~ ~
execute as @e[tag=north2,limit=1,sort=nearest] at @s run tp @s ~-0.6 ~ ~
playsound minecraft:block.piston.extend ambient @a ~ ~ ~
fill -1953 105 2031 -1955 102 2031 air
schedule function cf:interaction/citymap/north/door2 40t
