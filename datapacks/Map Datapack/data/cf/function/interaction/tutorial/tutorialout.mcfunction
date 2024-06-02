execute at @s run particle minecraft:end_rod ~ ~ ~ 0.2 1 0.2 0.1 10 normal
execute as @s run function cf:tp/tutorialout
playsound minecraft:ui.button.click ambient @s
item replace entity @e[tag=tutorialout,type=item_display] container.0 with paper[custom_model_data=2016]
particle end_rod -27 7 12 0.2 0.2 0.2 0.1 5 normal
schedule function cf:interaction/resetbutton 4t
