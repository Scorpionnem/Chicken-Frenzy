scoreboard players set #TEMP3 howmanychickens 0
scoreboard players operation #TEMP3 howmanychickens = @s howmanychickens
execute at @s as @e[type=marker,tag=ride] if score @s howmanychickens = #TEMP3 howmanychickens run tag @s add temp
execute at @s as @e[type=wandering_trader,tag=ride] if score @s howmanychickens = #TEMP3 howmanychickens run tag @s add temp
execute at @s as @e[type=wandering_trader,tag=ride] run data modify entity @e[type=minecraft:wandering_trader,limit=1,sort=nearest] wander_target set value [I;0,0,0]

execute at @s[tag=temp,tag=ride,type=marker] store result entity @e[type=wandering_trader,sort=nearest,limit=1,tag=temp] wander_target[0] int 1 run data get entity @s Pos[0]
execute at @s[tag=temp,tag=ride,type=marker] store result entity @e[type=wandering_trader,sort=nearest,limit=1,tag=temp] wander_target[1] int 1 run data get entity @s Pos[1]
execute at @s[tag=temp,tag=ride,type=marker] store result entity @e[type=wandering_trader,sort=nearest,limit=1,tag=temp] wander_target[2] int 1 run data get entity @s Pos[2]

tag @e remove temp