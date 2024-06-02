scoreboard players set #TEMP howmanychickens 0
scoreboard players operation #TEMP howmanychickens = @s howmanychickens
execute at @s as @e[type=chicken,tag=ride] if score @s howmanychickens = #TEMP howmanychickens run kill @s
execute at @s as @e[type=marker,tag=ride] if score @s howmanychickens = #TEMP howmanychickens run kill @s
execute at @s as @e[type=wandering_trader,tag=ride] if score @s howmanychickens = #TEMP howmanychickens run kill @s