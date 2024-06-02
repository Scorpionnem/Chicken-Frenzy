function cf:events/goldenegg/shake

scoreboard players add .state goldenegg 1

execute if score .state goldenegg matches 10 run item replace entity @e[tag=goldenegg,type=item_display] container.0 with white_dye[custom_model_data=2001] 1
execute if score .state goldenegg matches 20 run item replace entity @e[tag=goldenegg,type=item_display] container.0 with white_dye[custom_model_data=2002] 1
execute if score .state goldenegg matches 30 run item replace entity @e[tag=goldenegg,type=item_display] container.0 with white_dye[custom_model_data=2003] 1

execute as @s at @e[tag=goldenegg,type=interaction] run execute if score .state goldenegg matches 40 run function cf:events/goldenegg/open
