scoreboard players set .west doors 1
execute as @e[tag=west1,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-0.6
execute as @e[tag=west2,limit=1,sort=nearest] at @s run tp @s ~ ~ ~0.6
playsound minecraft:block.piston.extend ambient @a ~ ~ ~
fill -1958 105 2036 -1958 102 2034 air
schedule function cf:interaction/citymap/west/door2 40t
