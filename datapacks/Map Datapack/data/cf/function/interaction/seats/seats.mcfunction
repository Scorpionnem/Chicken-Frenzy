ride @s dismount 
execute as @e[type=interaction,tag=seat1] at @s on target run ride @s mount @e[type=interaction,tag=seat1,limit=1]

execute as @e[type=interaction,tag=seat2] at @s on target run ride @s mount @e[type=interaction,tag=seat2,limit=1]

execute as @e[type=interaction,tag=seat3] at @s on target run ride @s mount @e[type=interaction,tag=seat3,limit=1]

execute as @e[type=interaction,tag=seat4] at @s on target run ride @s mount @e[type=interaction,tag=seat4,limit=1]

playsound minecraft:block.wood.fall ambient @a ~ ~ ~