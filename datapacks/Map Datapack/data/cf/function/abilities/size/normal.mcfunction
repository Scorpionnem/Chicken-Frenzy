execute at @s run particle explosion ~ ~ ~ 0 0 0 1 5 normal
tag @s remove small
tag @s remove big
tag @s add basic
title @s actionbar {"text": ""}
attribute @s minecraft:generic.scale base set 1
attribute @s minecraft:generic.movement_speed base set 0.1
attribute @s minecraft:player.block_interaction_range base set 4.5
attribute @s minecraft:player.entity_interaction_range base set 3
attribute @s minecraft:generic.step_height base set 0.6
attribute @s minecraft:generic.max_health base set 20
execute at @s run playsound minecraft:entity.zombie_villager.converted player @a[distance=..5]
