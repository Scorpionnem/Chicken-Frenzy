effect give @s slowness infinite 100 true
effect give @s resistance infinite 0 true
execute as @s run function cf:abilities/giantchicken/isriding
execute at @s run playsound minecraft:block.wool.break player @a[distance=..5]
execute at @s run function cf:lock/lock_riding
execute at @s[tag=big] run summon block_display ~-0.5 ~ ~-0.5 {Glowing:0b,Tags:["freeze"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[2f,2f,2f]},block_state:{Name:"minecraft:calcite"}}
execute at @s[tag=small] run summon block_display ~-0.25 ~ ~-0.25 {Glowing:0b,Tags:["freeze"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:calcite"}}
execute at @s[tag=basic] run summon block_display ~-0.5 ~ ~-0.5 {Glowing:0b,Tags:["freeze"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:calcite"}}

tag @s add frozen
scoreboard players set @s timer 60