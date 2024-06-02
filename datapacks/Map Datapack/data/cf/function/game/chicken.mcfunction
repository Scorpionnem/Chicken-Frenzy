scoreboard players set @s chicken 0
advancement revoke @s only cf:wildchicken
advancement revoke @s only cf:playerkill
execute store result score .random random run random value 1..3
execute if score .random random = .1 random run scoreboard players add @s feathers 2
execute if score .random random = .2 random run scoreboard players add @s feathers 3
execute if score .random random = .3 random run scoreboard players add @s feathers 4
effect give @s glowing infinite 0 true
effect give @s slowness infinite 1 true
effect give @s weakness infinite 2 true

execute at @s run particle end_rod ~ ~1.5 ~ 0.1 0.1 0.1 0.1 10 normal


item replace entity @s armor.head with minecraft:paper[minecraft:custom_data={customTag:69},minecraft:custom_model_data=2000,minecraft:custom_name='{"text":"Chicken","color":"white","bold":true,"italic":false}']
item replace entity @s[predicate=!cf:offhand] weapon.offhand with minecraft:paper[minecraft:custom_data={customTag:69},minecraft:custom_model_data=2000,minecraft:custom_name='{"text":"Chicken","color":"white","bold":true,"italic":false}']
title @s times 5t 40t 5t
title @s title {"text": "YOU HAVE A CHICKEN"}
title @s subtitle {"text": "return it to your base"}
tellraw @a {"text":"","color":"white","extra":[{"selector":"@s"},{"text":" caught a chicken  !"}]}
tag @s add chicken