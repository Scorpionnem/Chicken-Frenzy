scoreboard players set @s carrotstick 0
tag @s remove basic
tag @s remove big
tag @s add small
item replace entity @s[gamemode=!creative] weapon.mainhand with air
execute at @s run particle explosion ~ ~ ~ 0 0 0 1 5 normal
attribute @s minecraft:generic.scale base set 0.5
attribute @s minecraft:generic.movement_speed base set 0.05
attribute @s minecraft:player.block_interaction_range base set 2.5
attribute @s minecraft:player.entity_interaction_range base set 2.5
attribute @s minecraft:generic.step_height base set 0.6
attribute @s minecraft:generic.max_health base set 10
scoreboard players set @s timer 600
execute at @s run playsound minecraft:entity.zombie_villager.cure player @a[distance=..5]