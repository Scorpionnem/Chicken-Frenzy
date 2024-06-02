scoreboard players set #TEMP2 howmanychickens 0
scoreboard players operation #TEMP2 howmanychickens = @s howmanychickens
tag @s add temp2
execute at @s as @e[type=chicken,tag=ride] if score @s howmanychickens = #TEMP2 howmanychickens run ride @e[type=player,tag=temp2,sort=nearest,limit=1] mount @s
tag @e remove temp2