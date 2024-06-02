kill @s

execute at @s run title @a[distance=..5] times 2t 1s 3s
scoreboard players set @s fungus 0
execute at @s run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~
execute at @s run playsound minecraft:block.glass.break ambient @a ~ ~ ~
execute at @s run effect give @a[distance=..5] blindness 5 1 true
execute at @s run title @a[distance=..5] title ""
execute at @s run particle poof ~ ~1 ~ 0 0 0 0.1 20 normal
execute at @s run particle flash ~ ~ ~ 0 0 0 1 1 normal
schedule function cf:abilities/flash/title 5s
