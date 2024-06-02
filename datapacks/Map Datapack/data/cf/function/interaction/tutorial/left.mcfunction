playsound minecraft:ui.button.click ambient @s ~ ~ ~ 0.1
playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 0.3 0.5
scoreboard players remove .tutorial tutorial 1

execute if score .tutorial tutorial matches ..0 run scoreboard players set .tutorial tutorial 9


execute if score .tutorial tutorial matches 1 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=text_display,distance=..4]
execute if score .tutorial tutorial matches 1 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=item_display,distance=..4]
execute if score .tutorial tutorial matches 1 run execute at @e[type=minecraft:marker,tag=tutorialstructure] run place template minecraft:tutorial1
execute if score .tutorial tutorial matches 1 run execute at @e[type=marker,tag=tutorialmarker] run particle flash ~ ~ ~ 0 0 0 1 0 normal


execute if score .tutorial tutorial matches 2 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=text_display,distance=..4]
execute if score .tutorial tutorial matches 2 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=item_display,distance=..4]
execute if score .tutorial tutorial matches 2 run execute at @e[type=minecraft:marker,tag=tutorialstructure] run place template minecraft:tutorial8
execute if score .tutorial tutorial matches 2 run execute at @e[type=marker,tag=tutorialmarker] run particle flash ~ ~ ~ 0 0 0 1 0 normal


execute if score .tutorial tutorial matches 3 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=text_display,distance=..4]
execute if score .tutorial tutorial matches 3 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=item_display,distance=..4]
execute if score .tutorial tutorial matches 3 run execute at @e[type=minecraft:marker,tag=tutorialstructure] run place template minecraft:tutorial3
execute if score .tutorial tutorial matches 3 run execute at @e[type=marker,tag=tutorialmarker] run particle flash ~ ~ ~ 0 0 0 1 0 normal


execute if score .tutorial tutorial matches 4 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=text_display,distance=..4]
execute if score .tutorial tutorial matches 4 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=item_display,distance=..4]
execute if score .tutorial tutorial matches 4 run execute at @e[type=minecraft:marker,tag=tutorialstructure] run place template minecraft:tutorial4
execute if score .tutorial tutorial matches 4 run execute at @e[type=marker,tag=tutorialmarker] run particle flash ~ ~ ~ 0 0 0 1 0 normal

execute if score .tutorial tutorial matches 5 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=text_display,distance=..4]
execute if score .tutorial tutorial matches 5 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=item_display,distance=..4]
execute if score .tutorial tutorial matches 5 run execute at @e[type=minecraft:marker,tag=tutorialstructure] run place template minecraft:tutorial5
execute if score .tutorial tutorial matches 5 run execute at @e[type=marker,tag=tutorialmarker] run particle flash ~ ~ ~ 0 0 0 1 0 normal


execute if score .tutorial tutorial matches 6 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=text_display,distance=..4]
execute if score .tutorial tutorial matches 6 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=item_display,distance=..4]
execute if score .tutorial tutorial matches 6 run execute at @e[type=minecraft:marker,tag=tutorialstructure] run place template minecraft:tutorial6
execute if score .tutorial tutorial matches 6 run execute at @e[type=marker,tag=tutorialmarker] run particle flash ~ ~ ~ 0 0 0 1 0 normal

execute if score .tutorial tutorial matches 7 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=item_display,distance=..4]
execute if score .tutorial tutorial matches 7 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=text_display,distance=..4]
execute if score .tutorial tutorial matches 7 run execute at @e[type=minecraft:marker,tag=tutorialstructure] run place template minecraft:tutorial2
execute if score .tutorial tutorial matches 7 run execute at @e[type=marker,tag=tutorialmarker] run particle flash ~ ~ ~ 0 0 0 1 0 normal

execute if score .tutorial tutorial matches 8 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=item_display,distance=..4]
execute if score .tutorial tutorial matches 8 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=text_display,distance=..4]
execute if score .tutorial tutorial matches 8 run execute at @e[type=minecraft:marker,tag=tutorialstructure] run place template minecraft:tutorial7
execute if score .tutorial tutorial matches 8 run execute at @e[type=marker,tag=tutorialmarker] run particle flash ~ ~ ~ 0 0 0 1 0 normal

execute if score .tutorial tutorial matches 9 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=item_display,distance=..4]
execute if score .tutorial tutorial matches 9 run execute at @e[type=marker,tag=tutorialmarker] run kill @e[type=text_display,distance=..4]
execute if score .tutorial tutorial matches 9 run execute at @e[type=minecraft:marker,tag=tutorialstructure] run place template minecraft:tutorial9
execute if score .tutorial tutorial matches 9 run execute at @e[type=marker,tag=tutorialmarker] run particle flash ~ ~ ~ 0 0 0 1 0 normal




item replace entity @e[tag=tutorialleft,type=item_display] container.0 with paper[custom_model_data=2004]
schedule function cf:interaction/resetbutton 4t