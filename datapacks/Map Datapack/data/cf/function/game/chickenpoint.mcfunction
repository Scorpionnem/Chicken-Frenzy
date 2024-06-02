effect give @s saturation 1 10 true
clear @s paper
tag @s remove chicken
scoreboard players add @s score2 10
effect clear @s glowing 
effect clear @s slowness 
effect clear @s weakness 

tellraw @a {"text":"","color":"white","extra":[{"selector":"@s"},{"text":" captured a chicken  !"}]}
execute at @s[team=blue] run function cf:game/chicken/summonred
execute at @s[team=red] run function cf:game/chicken/summonblue
execute at @a run playsound block.note_block.pling player @a ~ ~ ~
playsound minecraft:entity.chicken.death player @s