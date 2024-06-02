execute store result score .random random run random value 1..3
stopsound @s record


execute if score .random random matches 1 run scoreboard players set @s spawnmusic 3920
execute if score .random random matches 2 run scoreboard players set @s spawnmusic 3560
execute if score .random random matches 3 run scoreboard players set @s spawnmusic 4100

execute if score .random random matches 1 run execute at @a run playsound minecraft:spawn1 record @s ~ ~ ~ 0.6
execute if score .random random matches 2 run execute at @a run playsound minecraft:spawn2 record @s ~ ~ ~ 0.6
execute if score .random random matches 3 run execute at @a run playsound minecraft:spawn3 record @s ~ ~ ~ 0.6