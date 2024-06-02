scoreboard players set @s Death 0
function cf:abilities/size/normal
tellraw @a {"text":"","color":"white","extra":[{"selector":"@s"},{"text":" lost a chicken ! "}]}
playsound minecraft:block.note_block.didgeridoo player @s
gamemode spectator @s
tag @s add respawn
clear @s





execute as @s[tag=frozen] run function cf:traps/unfreeze
scoreboard players set @s timer 200
clear @s paper 64
tag @s remove chicken