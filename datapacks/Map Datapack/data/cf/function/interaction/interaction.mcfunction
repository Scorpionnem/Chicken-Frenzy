execute as @e[type=interaction,tag=red,tag=leftarrow] at @s on target run function cf:interaction/leftarrow
execute as @e[type=interaction,tag=red,tag=rightarrow] at @s on target run function cf:interaction/rightarrow
execute as @e[type=interaction,tag=red,tag=buy] at @s on target run function cf:interaction/buy

execute as @e[type=interaction,tag=blue,tag=leftarrow] at @s on target run function cf:interaction/leftarrowblue
execute as @e[type=interaction,tag=blue,tag=rightarrow] at @s on target run function cf:interaction/rightarrowblue
execute as @e[type=interaction,tag=blue,tag=buy] at @s on target run function cf:interaction/buyblue

execute if score .game game matches 0 run execute if score .start settings matches 0 run execute as @e[type=interaction,tag=mapleft] at @s on target run function cf:interaction/map/left
execute if score .game game matches 0 run execute if score .start settings matches 0 run execute as @e[type=interaction,tag=mapright] at @s on target run function cf:interaction/map/right

execute if score .game game matches 0 run execute if score .start settings matches 0 run execute as @e[type=interaction,tag=gametime] at @s on target run function cf:interaction/settings/gametime
execute if score .game game matches 0 run execute if score .start settings matches 0 run execute as @e[type=interaction,tag=chickenspawntime] at @s on target run function cf:interaction/settings/chickenspawntime
execute if score .game game matches 0 run execute if score .start settings matches 0 run execute as @e[type=interaction,tag=randomevents] at @s on target run function cf:interaction/settings/randomevents


execute if score .game game matches 0 run execute if score .start settings matches 0 run execute as @e[type=interaction,tag=startbutton] at @s on target run function cf:interaction/start

execute if score .game game matches 0 run execute as @e[type=interaction,tag=tutorialout] at @s on target run function cf:interaction/tutorial/tutorialout


execute if score .game game matches 0 run execute as @e[type=interaction,tag=computer] at @s on target run function cf:interaction/computer/computer



execute if score .game game matches 0 run execute as @e[type=interaction,tag=seat] on target run function cf:interaction/seats/seats


execute if score .game game matches 0 run execute as @e[type=interaction,tag=tutorialleft] at @s on target run function cf:interaction/tutorial/left
execute if score .game game matches 0 run execute as @e[type=interaction,tag=tutorialright] at @s on target run function cf:interaction/tutorial/right

execute if score .game game matches 0 run execute as @e[type=interaction,tag=tutorialuh] at @s on target run function cf:interaction/tutorial/tutorialuh

execute as @e[type=interaction,tag=goldenegg] at @s on target run function cf:interaction/goldenegg/wichstate
execute as @e[type=interaction,tag=goldenegg] at @s on attacker run function cf:interaction/goldenegg/wichstate

execute if score .game game matches 0 run execute as @e[type=interaction,tag=spawnegg] at @s on target run function cf:interaction/spawnegg/shake

execute if score .game game matches 0 run execute if score .north doors matches 0 run execute as @e[type=interaction,tag=northbutton] at @s on target run function cf:interaction/citymap/north/door1
execute if score .game game matches 0 run execute if score .east doors matches 0 run execute as @e[type=interaction,tag=eastbutton] at @s on target run function cf:interaction/citymap/east/door1
execute if score .game game matches 0 run execute if score .south doors matches 0 run execute as @e[type=interaction,tag=southbutton] at @s on target run function cf:interaction/citymap/south/door1
execute if score .game game matches 0 run execute if score .west doors matches 0 run execute as @e[type=interaction,tag=westbutton] at @s on target run function cf:interaction/citymap/west/door1



#Easter egg
execute if score .game game matches 0 run execute as @e[type=interaction,tag=goldenchicken] on target run tellraw @s [{"text":"Golden Chicken :","color":"gold"},{"text":" Hey, this map was created by Scorpionem !","color":"white"}]







execute as @e[type=interaction] run data remove entity @s attack
execute as @e[type=interaction] run data remove entity @s interaction
