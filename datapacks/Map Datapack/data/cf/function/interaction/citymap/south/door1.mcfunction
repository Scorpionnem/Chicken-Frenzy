scoreboard players set .south doors 1
execute as @e[tag=south1,limit=1,sort=nearest] at @s run tp @s ~-0.6 ~ ~
execute as @e[tag=south2,limit=1,sort=nearest] at @s run tp @s ~0.6 ~ ~
playsound minecraft:block.piston.extend ambient @a ~ ~ ~
fill -1955 105 2039 -1953 102 2039 air
schedule function cf:interaction/citymap/south/door2 40t
