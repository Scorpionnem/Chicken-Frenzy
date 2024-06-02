scoreboard players set #TEMP2 howmanychickens 0
scoreboard players operation #TEMP2 howmanychickens = @s howmanychickens
execute at @s as @e[type=marker,tag=ride] if score @s howmanychickens = #TEMP2 howmanychickens run teleport @s ^ ^ ^3