playsound minecraft:ui.button.click ambient @s
scoreboard players remove #map map 1

execute if score #map map matches ..0 run scoreboard players set #map map 6


execute if score #map map matches 1 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=mapicon] {text:""}
execute if score #map map matches 1 run scoreboard players set .map map 1
execute if score #map map matches 2 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=mapicon] {text:""}
execute if score #map map matches 2 run scoreboard players set .map map 2
execute if score #map map matches 3 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=mapicon] {text:""}
execute if score #map map matches 3 run scoreboard players set .map map 3
execute if score #map map matches 4 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=mapicon] {text:""}
execute if score #map map matches 4 run scoreboard players set .map map 4
execute if score #map map matches 5 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=mapicon] {text:""}
execute if score #map map matches 5 run scoreboard players set .map map 5
execute if score #map map matches 6 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=mapicon] {text:""}
execute if score #map map matches 6 run scoreboard players set .map map 6

item replace entity @e[type=armor_stand,tag=left] armor.head with paper[custom_model_data=2002]

schedule function cf:interaction/resetbutton 4t



# map 5 
#random 