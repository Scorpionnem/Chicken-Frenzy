playsound minecraft:ui.button.click ambient @s
scoreboard players add .randomevents settings 1
execute as @e[type=minecraft:item_display,limit=1,tag=randomevents] at @s run tp @s ~ ~ ~ ~90 0

execute if score .randomevents settings matches 2.. run scoreboard players set .randomevents settings 0


execute if score .randomevents settings matches 1 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=randomevents] {text:"Yes"}

execute if score .randomevents settings matches 0 run data merge entity @e[type=minecraft:text_display,limit=1,sort=nearest,tag=randomevents] {text:"No"}

