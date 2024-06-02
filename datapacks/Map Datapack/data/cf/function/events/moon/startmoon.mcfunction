time set midnight
tellraw @a {"text":"The egg moon is rising...","color":"gold","bold":false}
execute as @a run attribute @s minecraft:generic.gravity base set 0.02
execute as @a run attribute @s minecraft:generic.fall_damage_multiplier base set 0.4
execute as @a run attribute @s minecraft:generic.safe_fall_distance base set 8.0
schedule function cf:events/moon/day 25s