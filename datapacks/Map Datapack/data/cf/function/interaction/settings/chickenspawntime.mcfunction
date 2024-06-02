playsound minecraft:ui.button.click ambient @s
scoreboard players add .chickenspawntime settings 1

execute if score .chickenspawntime settings matches 4.. run scoreboard players set .chickenspawntime settings 1

execute if score .chickenspawntime settings matches 1 run item replace entity @e[type=armor_stand,tag=chickenspawntime] armor.head with brick[custom_model_data=1001] 1
execute if score .chickenspawntime settings matches 1 run item replace entity @e[tag=chickenspawntime,type=item_display] container.0 with brick[custom_model_data=1001]

execute if score .chickenspawntime settings matches 1 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=chickenspawntime] {text:"10Seconds"}
execute if score .chickenspawntime settings matches 1 run scoreboard players set .cst settings 200
execute if score .chickenspawntime settings matches 2 run item replace entity @e[tag=chickenspawntime,type=item_display] container.0 with brick[custom_model_data=1002]

execute if score .chickenspawntime settings matches 2 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=chickenspawntime] {text:"30Seconds"}
execute if score .chickenspawntime settings matches 2 run scoreboard players set .cst settings 600

execute if score .chickenspawntime settings matches 3 run item replace entity @e[tag=chickenspawntime,type=item_display] container.0 with brick[custom_model_data=1003]

execute if score .chickenspawntime settings matches 3 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=chickenspawntime] {text:"60Seconds"}
execute if score .chickenspawntime settings matches 3 run scoreboard players set .cst settings 1200