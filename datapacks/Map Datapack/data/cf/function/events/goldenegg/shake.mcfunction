execute as @e[type=minecraft:item_display,limit=1,tag=goldenegg] at @s run tp @s ~ ~ ~ 25 0
playsound minecraft:entity.turtle.egg_crack ambient @a ~ ~ ~ 5

schedule function cf:events/goldenegg/shake2 2t