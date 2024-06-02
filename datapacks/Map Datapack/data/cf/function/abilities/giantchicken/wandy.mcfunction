execute at @s[type=player] run summon wandering_trader
execute at @s[type=player] run data modify entity @e[type=minecraft:wandering_trader,limit=1,sort=nearest] wander_target set value [I;0,0,0]
execute at @s[type=player] store result entity @e[type=wandering_trader,sort=nearest,limit=1] wander_target[0] int 1 run data get entity @a[sort=nearest,limit=1] Pos[0]
execute at @s[type=player] store result entity @e[type=wandering_trader,sort=nearest,limit=1] wander_target[1] int 1 run data get entity @a[sort=nearest,limit=1] Pos[1]
execute at @s[type=player] store result entity @e[type=wandering_trader,sort=nearest,limit=1] wander_target[2] int 1 run data get entity @a[sort=nearest,limit=1] Pos[2]