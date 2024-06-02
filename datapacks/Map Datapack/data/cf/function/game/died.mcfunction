scoreboard players set @s Death 0
function cf:abilities/size/normal
execute at @s[tag=!died] run tellraw @a {"text":"","color":"white","extra":[{"selector":"@s"},{"text":" died "}]}
execute as @s[scores={feathers=1..}] run scoreboard players remove @s feathers 1
playsound minecraft:block.note_block.didgeridoo player @s
clear @s
gamemode spectator @s
tag @s add respawn
execute as @s run function cf:traps/unfreeze
execute as @s[tag=ride] run function cf:abilities/giantchicken/isriding
scoreboard players set @s timer 100
tag @s remove died