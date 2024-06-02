execute as @e[type=minecraft:item_display,limit=1,tag=spawnegg] at @s run tp @s ~ ~ ~ 25 0
schedule function cf:interaction/spawnegg/shake2 2t
playsound minecraft:entity.turtle.egg_crack ambient @a ~ ~ ~ 5


scoreboard players add .state2 goldenegg 1
execute if score .state2 goldenegg matches 0 run item replace entity @e[tag=spawnegg,type=item_display] container.0 with white_dye[minecraft:custom_model_data=2000] 1

execute if score .state2 goldenegg matches 1 run item replace entity @e[tag=spawnegg,type=item_display] container.0 with white_dye[minecraft:custom_model_data=2001] 1
execute if score .state2 goldenegg matches 2 run item replace entity @e[tag=spawnegg,type=item_display] container.0 with white_dye[minecraft:custom_model_data=2002] 1
execute if score .state2 goldenegg matches 3 run item replace entity @e[tag=spawnegg,type=item_display] container.0 with white_dye[minecraft:custom_model_data=2003] 1

execute at @e[tag=spawnegg,type=interaction] run execute if score .state2 goldenegg matches 4 run function cf:interaction/spawnegg/open
