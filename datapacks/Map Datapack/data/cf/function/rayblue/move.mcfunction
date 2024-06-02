# Move forward according to step size
tp @s ^ ^ ^0.5
#execute at @e[type=area_effect_cloud] run particle dust 0.541 0.831 1 1 ~ ~ ~ 0 0 0 10 0 normal
execute at @e[type=area_effect_cloud] run particle end_rod

# TEST
#particle flame ~ ~ ~ 0 0 0 0 1 force

# Check for collisions with Creepers
execute if entity @e[type=player,distance=..1.5,team=red,tag=!frozen] run tag @s add hit

# Check for collisions with blocks
execute unless block ~ ~ ~ #cf:ray_permeable run tag @s add hitBlock

# Decrease the number of steps remaining
scoreboard players remove @s steps 1

# Recurse until we hit something or run out of steps
execute as @s[tag=!hit,tag=!hitBlock,scores={steps=1..}] at @s run function cf:rayblue/move
