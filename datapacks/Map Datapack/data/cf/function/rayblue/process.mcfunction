# Initialize steps
scoreboard players set @s steps 24

# Move the ray
execute at @s run function cf:rayblue/move

# Check if the ray hit a Creeper
execute as @s[tag=hit] at @s run function cf:rayblue/hit

# Destroy the ray (very important!)
kill @s
