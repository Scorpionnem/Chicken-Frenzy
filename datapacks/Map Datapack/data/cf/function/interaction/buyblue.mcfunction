playsound minecraft:ui.button.click ambient @s
execute as @s[scores={feathers=..0}] run tellraw @s {"text": "Not enough feathers  !"}
execute as @s[scores={feathers=1..}] run function cf:interaction/yesmoneyblue


