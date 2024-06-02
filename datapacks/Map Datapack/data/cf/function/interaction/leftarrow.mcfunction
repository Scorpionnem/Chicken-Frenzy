playsound minecraft:ui.button.click ambient @s
scoreboard players add .redshop buttonsel 1

execute if score .redshop buttonsel matches 9.. run scoreboard players set .redshop buttonsel 1

execute if score .redshop buttonsel matches 1 run item replace entity @e[tag=red,tag=item,type=item_display] container.0 with carrot_on_a_stick[custom_model_data=1001]
execute if score .redshop buttonsel matches 1 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=red] {text:"Smallinator1"}

execute if score .redshop buttonsel matches 2 run item replace entity @e[tag=red,tag=item,type=item_display] container.0 with carrot_on_a_stick[custom_model_data=1000]
execute if score .redshop buttonsel matches 2 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=red] {text:"Biginator1"}

execute if score .redshop buttonsel matches 3 run item replace entity @e[tag=red,tag=item,type=item_display] container.0 with carrot_on_a_stick[custom_model_data=1008]
execute if score .redshop buttonsel matches 3 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=red] {text:"Chickenride3"}

execute if score .redshop buttonsel matches 4 run item replace entity @e[tag=red,tag=item,type=item_display] container.0 with carrot_on_a_stick[custom_model_data=1002]
execute if score .redshop buttonsel matches 4 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=red] {text:"Featherstaff3"}

execute if score .redshop buttonsel matches 5 run item replace entity @e[tag=red,tag=item,type=item_display] container.0 with warped_fungus_on_a_stick[custom_model_data=1001]
execute if score .redshop buttonsel matches 5 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=red] {text:"FlashEgg1"}

execute if score .redshop buttonsel matches 6 run item replace entity @e[tag=red,tag=item,type=item_display] container.0 with iron_chestplate
execute if score .redshop buttonsel matches 6 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=red] {text:"FeatherChestplate2"}

execute if score .redshop buttonsel matches 7 run item replace entity @e[tag=red,tag=item,type=item_display] container.0 with elytra[damage=500]
execute if score .redshop buttonsel matches 7 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=red] {text:"ChickenWings10"}

execute if score .redshop buttonsel matches 8 run item replace entity @e[tag=red,tag=item,type=item_display] container.0 with carrot_on_a_stick[custom_model_data=1013]
execute if score .redshop buttonsel matches 8 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=red] {text:"ChickenDecoy6"}



item replace entity @e[type=item_display,tag=leftarrow,tag=red] container.0 with paper[custom_model_data=2002]


schedule function cf:interaction/resetbutton 4t