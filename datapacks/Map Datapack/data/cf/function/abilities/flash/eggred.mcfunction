kill @e[type=marker,limit=1,sort=nearest,tag=flashy]
execute at @s run playsound entity.tnt.primed ambient @a ~ ~ ~


execute store result score .random random run random value 1..3
execute if score .random random = .1 random run scoreboard players set .flash random 10
execute if score .random random = .2 random run scoreboard players set .flash random 15
execute if score .random random = .3 random run scoreboard players set .flash random 20

execute at @s run summon item_display ~ ~0.5 ~ {Tags:["flash"],item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomModelData:1001}},billboard:"vertical"}
execute at @s run scoreboard players operation @e[type=item_display,tag=flash,sort=nearest,limit=1,tag=!flashy] timer = .flash random
tag @e[type=item_display,tag=flash,sort=nearest,limit=1,tag=!flashy] add flashy