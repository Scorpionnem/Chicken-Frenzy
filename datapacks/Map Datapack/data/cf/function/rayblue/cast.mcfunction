scoreboard players set @s carrotstick 0
scoreboard players remove @s feathers 3
execute at @s run particle end_rod ~ ~1.5 ~ 0.1 0.1 0.1 0.1 10 normal
execute at @s run playsound minecraft:block.wool.break player @a[distance=..5]
# Summon a ray at the caster
summon area_effect_cloud ~ ~-64 ~ {Duration: 1, Tags: [ray]}
# Position the ray at the caster's eyes and copy their facing
execute anchored eyes rotated as @s run tp @e[tag=ray,limit=1,sort=nearest] ^ ^ ^ ~ ~

# Process the ray
execute as @e[tag=ray,limit=1,sort=nearest] run function cf:rayblue/process
