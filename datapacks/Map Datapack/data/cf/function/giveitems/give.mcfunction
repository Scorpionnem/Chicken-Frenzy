tag @s add give
clear @s carrot_on_a_stick
execute as @s[tag=!game] run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick[minecraft:custom_data={customTag:32},minecraft:custom_model_data=1010,minecraft:custom_name='{"text":"Spectate the game","color":"white","bold":true,"italic":false}']
execute as @s[tag=!game] run item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick[minecraft:custom_data={customTag:6},minecraft:custom_model_data=1005,minecraft:custom_name='{"text":"Join red team","color":"red","bold":true,"italic":false}']
execute as @s[tag=!game] run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[minecraft:custom_data={customTag:5},minecraft:custom_model_data=1004,minecraft:custom_name='{"text":"Join blue team","color":"blue","bold":true,"italic":false}']


#execute as @s[tag=game,tag=!winner,team=!spectate] run item replace entity @s hotbar.0 with minecraft:wooden_sword[minecraft:custom_model_data=3001,minecraft:custom_name='{"text":"Chicken net","color":"white","bold":true,"italic":false}',unbreakable={show_in_tooltip:false}]
#execute as @s[tag=game,tag=winner,team=!spectate] run item replace entity @s hotbar.0 with minecraft:wooden_sword[minecraft:custom_model_data=3002,minecraft:custom_name='{"text":"Chicken net","color":"gold","bold":true,"italic":false}',unbreakable={show_in_tooltip:false}]


execute if score .map map = .3 map run execute as @s[tag=game,team=!spectate] run item replace entity @s hotbar.1 with trident[custom_name='[{"color":"white","italic":false,"text":"Riptide Trident"},{"bold":true,"color":"red","italic":false,"text":" (Only use it for riptide)"}]',lore=['{"color":"dark_green","italic":false,"text":"0 Attack Damage"}'],unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:riptide":2}},attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:-10,operation:"add_multiplied_base",slot:"mainhand"}],show_in_tooltip:false},hide_additional_tooltip={}] 1
execute as @s[tag=game,tag=!winner,team=!spectate] run item replace entity @s hotbar.0 with stick[custom_name='{"bold":true,"italic":false,"text":"Chicken net"}',custom_model_data=2012,attribute_modifiers=[{id:"armor",type:"generic.attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{id:"armor",type:"generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}]] 1
execute as @s[tag=game,tag=winner,team=!spectate] run item replace entity @s hotbar.0 with stick[custom_name='{"bold":true,"italic":false,"text":"Chicken net"}',custom_model_data=2013,attribute_modifiers=[{id:"armor",type:"generic.attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{id:"armor",type:"generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}]] 1


#execute as @s[tag=!game,tag=!ready,team=blue] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[minecraft:custom_data={customTag:7},minecraft:custom_model_data=1006,minecraft:custom_name='{"text":"Join the queue","color":"white","bold":true,"italic":false}']
#execute as @s[tag=!game,tag=ready,team=blue] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[minecraft:custom_data={customTag:8},minecraft:custom_model_data=1007,minecraft:custom_name='{"text":"Leave the queue","color":"white","bold":true,"italic":false}']

#execute as @s[tag=!game,tag=!ready,team=red] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[minecraft:custom_data={customTag:7},minecraft:custom_model_data=1006,minecraft:custom_name='{"text":"Join the queue","color":"white","bold":true,"italic":false}']
#execute as @s[tag=!game,tag=ready,team=red] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[minecraft:custom_data={customTag:8},minecraft:custom_model_data=1007,minecraft:custom_name='{"text":"Leave the queue","color":"white","bold":true,"italic":false}']
