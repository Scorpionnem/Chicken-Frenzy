scoreboard players set #TEMP howmanychickens 0
scoreboard players operation #TEMP howmanychickens = @s howmanychickens
execute at @s as @e[type=chicken,tag=ride] if score @s howmanychickens = #TEMP howmanychickens run teleport @s ~ ~ ~ facing entity @e[type=marker,limit=1,sort=nearest,tag=ride]