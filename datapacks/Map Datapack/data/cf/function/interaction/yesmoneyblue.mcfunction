execute if score .blueshop buttonsel matches 1 run tellraw @s[scores={feathers=..0}] {"text": "Not enough feathers  !"}
execute if score .blueshop buttonsel matches 1 run give @s minecraft:carrot_on_a_stick[minecraft:custom_data={customTag:1},minecraft:custom_model_data=1001,minecraft:custom_name='{"text":"Smallinator","color":"red","bold":true,"italic":false}',lore=['{"text":"The smallinator will change your size to ","color":"gray","italic":false}','{"text":"make you small, use it to sneak on your enemies !","color":"gray","italic":false}']]
execute if score .blueshop buttonsel matches 1 run tellraw @s {"text": "-1  !"}
execute if score .blueshop buttonsel matches 1 run scoreboard players remove @s feathers 1
#minecraft:carrot_on_a_stick[minecraft:custom_data={customTag:32},minecraft:custom_model_data=1010,minecraft:custom_name=,lore=[]]

execute if score .blueshop buttonsel matches 2 run tellraw @s[scores={feathers=..0}] {"text": "Not enough feathers  !"}
execute if score .blueshop buttonsel matches 2 run give @s minecraft:carrot_on_a_stick[minecraft:custom_data={customTag:2},minecraft:custom_model_data=1000,minecraft:custom_name='{"text":"Biginator","color":"yellow","bold":true,"italic":false}',lore=['{"text":"The biginator will change your size to ","color":"gray","italic":false}','{"text":"make you big, use it to fight your enemies !","color":"gray","italic":false}']]

execute if score .blueshop buttonsel matches 2 run tellraw @s {"text": "-1  !"}
execute if score .blueshop buttonsel matches 2 run scoreboard players remove @s feathers 1


execute if score .blueshop buttonsel matches 3 run tellraw @s[scores={feathers=..2}] {"text": "Not enough feathers  !"}
execute if score .blueshop buttonsel matches 3 run give @s[scores={feathers=3..}] minecraft:carrot_on_a_stick[minecraft:custom_data={customTag:9},minecraft:custom_model_data=1008,minecraft:custom_name='{"text":"Chicken Ride ","color":"white","bold":true,"italic":false}',lore=['{"text":"The chicken ride will summon a big chicken","color":"gray","italic":false}','{"text":"for you to ride !","color":"gray","italic":false}']]

execute if score .blueshop buttonsel matches 3 run tellraw @s[scores={feathers=3..}] {"text": "-3  !"}
execute if score .blueshop buttonsel matches 3 run scoreboard players remove @s[scores={feathers=3..}] feathers 3

execute if score .blueshop buttonsel matches 4 run tellraw @s[scores={feathers=..2}] {"text": "Not enough feathers  !"}
execute if score .blueshop buttonsel matches 4 run give @s[scores={feathers=3..}] minecraft:carrot_on_a_stick[minecraft:custom_data={customTag:3},minecraft:custom_model_data=1002,minecraft:custom_name='{"text":"Feather Staff ","color":"white","bold":true,"italic":false}',lore=['{"text":"The feather staff lets you launch","color":"gray","italic":false}','{"text":"feathers to freeze your enemies !","color":"gray","italic":false}']]

execute if score .blueshop buttonsel matches 4 run tellraw @s[scores={feathers=3..}] {"text": "-3  !"}
execute if score .blueshop buttonsel matches 4 run scoreboard players remove @s[scores={feathers=3..}] feathers 3

execute if score .blueshop buttonsel matches 5 run tellraw @s[scores={feathers=..0}] {"text": "Not enough feathers  !"}
execute if score .blueshop buttonsel matches 5 run give @s minecraft:splash_potion[minecraft:custom_name='{"text":"Flash Egg","color":"white","bold":true,"italic":false}',lore=['{"text":"An egg filled with glowstone.","color":"gray","bold":false,"italic":false}'],potion_contents={custom_effects:[{id:'minecraft:blindness'}]},max_stack_size=16]
execute if score .blueshop buttonsel matches 5 run tellraw @s {"text": "-1  !"}
execute if score .blueshop buttonsel matches 5 run scoreboard players remove @s feathers 1


execute if score .blueshop buttonsel matches 6 run tellraw @s[scores={feathers=..1}] {"text": "Not enough feathers  !"}
execute if score .blueshop buttonsel matches 6 run give @s[scores={feathers=2..}] iron_chestplate[max_damage=32,item_name='{"text":"Feather Chestplate","color":"white","bold":true,"italic":false}',lore=['{"text":"Protects you from your enemies","color":"gray","bold":false,"italic":false}'],damage=0] 1
execute if score .blueshop buttonsel matches 6 run tellraw @s[scores={feathers=2..}] {"text": "-2  !"}
execute if score .blueshop buttonsel matches 6 run scoreboard players remove @s[scores={feathers=2..}] feathers 2



execute if score .blueshop buttonsel matches 7 run tellraw @s[scores={feathers=..9}] {"text": "Not enough feathers  !"}
execute if score .blueshop buttonsel matches 7 run give @s[scores={feathers=10..}] elytra[max_damage=1,item_name='{"text":"Chicken Wings","color":"white","bold":true,"italic":false}',lore=['{"text":"Gives the player slow falling + jump boost","color":"gray","bold":false,"italic":false}']] 1

execute if score .blueshop buttonsel matches 7 run tellraw @s[scores={feathers=10..}] {"text": "-10  !"}
execute if score .blueshop buttonsel matches 7 run scoreboard players remove @s[scores={feathers=10..}] feathers 10

execute if score .blueshop buttonsel matches 8 run tellraw @s[scores={feathers=..5}] {"text": "Not enough feathers  !"}
execute if score .blueshop buttonsel matches 8 run give @s[scores={feathers=6..}] carrot_on_a_stick[custom_name='{"bold":true,"color":"red","italic":false,"text":"Chicken Decoy"}',lore=['{"color":"gray","italic":false,"text":"This decoy will look just like a chicken"}','{"color":"gray","italic":false,"text":"but it will explode if a player tries to catch it !"}'],custom_model_data=1013] 1

execute if score .blueshop buttonsel matches 8 run tellraw @s[scores={feathers=3..}] {"text": "-6  !"}
execute if score .blueshop buttonsel matches 8 run scoreboard players remove @s[scores={feathers=6..}] feathers 6




item replace entity @e[tag=blue,tag=buy,type=item_display] container.0 with paper[custom_model_data=2007]

schedule function cf:interaction/resetbutton 4t