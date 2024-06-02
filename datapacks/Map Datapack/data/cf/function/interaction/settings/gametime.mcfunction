playsound minecraft:ui.button.click ambient @s
scoreboard players add .gametime settings 1

execute if score .gametime settings matches 4.. run scoreboard players set .gametime settings 1

execute if score .gametime settings matches 1 run item replace entity @e[tag=gametime,type=item_display] container.0 with brick[custom_model_data=1001]

execute if score .gametime settings matches 1 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=gametime] {text:"2Minutes"}
execute if score .gametime settings matches 1 run scoreboard players set .gt settings 2400

execute if score .gametime settings matches 2 run item replace entity @e[tag=gametime,type=item_display] container.0 with brick[custom_model_data=1002]

execute if score .gametime settings matches 2 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=gametime] {text:"5Minutes"}
execute if score .gametime settings matches 2 run scoreboard players set .gt settings 6000

execute if score .gametime settings matches 3 run item replace entity @e[tag=gametime,type=item_display] container.0 with brick[custom_model_data=1003]

execute if score .gametime settings matches 3 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=gametime] {text:"10Minutes"}
execute if score .gametime settings matches 3 run scoreboard players set .gt settings 12000
