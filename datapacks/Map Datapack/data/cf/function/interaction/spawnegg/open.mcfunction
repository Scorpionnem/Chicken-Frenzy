particle flash ~ ~ ~ 0 0 0 1 0 normal
playsound entity.generic.explode ambient @a ~ ~ ~ 5
particle end_rod ~ ~1 ~ 0.4 0.4 0.4 0.1 20 normal
scoreboard players set .state2 goldenegg 0
title @s times 1t 10t 5t
title @s title ""
execute as @s run tp @s -25 -3 33 -90 0
item replace entity @e[tag=spawnegg,type=item_display] container.0 with white_dye[minecraft:custom_model_data=2000] 1

