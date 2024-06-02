scoreboard players remove .TSeconds timer 1
execute if score .TSeconds timer matches ..-1 run scoreboard players remove .TMinutes timer 1
execute if score .TSeconds timer matches ..-1 run scoreboard players set .TSeconds timer 59
execute if score .TSeconds timer matches 0..9 run bossbar set minecraft:time name ["Time  : ",{"score":{"name":".TMinutes","objective":"timer"}},{"text":":0"},{"score":{"name":".TSeconds","objective":"timer"}}]
execute if score .TSeconds timer matches 10.. run bossbar set minecraft:time name ["Time  : ",{"score":{"name":".TMinutes","objective":"timer"}},{"text":":"},{"score":{"name":".TSeconds","objective":"timer"}}]

execute if score .TSeconds timer matches 3 if score .TMinutes timer matches 0 run title @a title {"text":"3","bold":true}
execute if score .TSeconds timer matches 3 if score .TMinutes timer matches 0 as @a at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 1 0.5
execute if score .TSeconds timer matches 2 if score .TMinutes timer matches 0 run title @a title {"text":"2","bold":true}
execute if score .TSeconds timer matches 2 if score .TMinutes timer matches 0 as @a at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 1 1
execute if score .TSeconds timer matches 1 if score .TMinutes timer matches 0 run title @a title {"text":"1","bold":true}
execute if score .TSeconds timer matches 1 if score .TMinutes timer matches 0 as @a at @s run playsound minecraft:block.note_block.xylophone ambient @s ~ ~ ~ 1 1.5






schedule function cf:game/ingame/timer/time 1s