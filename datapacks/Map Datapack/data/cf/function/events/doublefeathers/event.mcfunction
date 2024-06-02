tellraw @a {"text":"Everyone's feathers have been doubled","color":"gold","bold":false}

execute as @a run scoreboard players operation @s feathers *= .2 playercount
execute at @a run particle end_rod ~ ~1 ~ 0.4 0.4 0.4 0.1 20 normal
execute at @a run playsound minecraft:block.wool.break ambient @a ~ ~ ~ 2