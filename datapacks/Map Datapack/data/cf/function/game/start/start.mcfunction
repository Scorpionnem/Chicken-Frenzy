schedule clear cf:game/ingame/start
item replace entity @e[tag=startbutton] container.0 with paper[minecraft:custom_model_data=2026]
scoreboard players set .start settings 1
tellraw @a {"color": "green","text": "Starting game in 3 seconds !"}
playsound minecraft:block.note_block.chime player @a
scoreboard players set @a startanyways 0
clear @a
execute if score .map map matches 6 run scoreboard players set .random map 1
execute if score .map map matches 1..5 run scoreboard players set .random map 0

execute if score .map map matches 6 run execute store result score .map map run random value 1..4

execute at @a run schedule function cf:game/ingame/resetshop 10t
schedule function cf:game/ingame/start 3s
 