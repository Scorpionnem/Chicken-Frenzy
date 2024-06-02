execute as @s run function cf:lock/unlock_riding
kill @e[tag=freeze,sort=nearest,type=block_display,limit=1]
effect clear @s slowness
effect clear @s resistance
execute as @s run function cf:abilities/size/normal
scoreboard players set @s timer 0
execute at @s run playsound minecraft:block.wool.break player @a[distance=..5]
effect give @s slowness 1 2 true
tag @s remove frozen
scoreboard players set @s cooldown 100
title @s actionbar {"text": ""}