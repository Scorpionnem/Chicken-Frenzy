execute if score .map map = .1 map run execute at @e[tag=eventsspawn,tag=map1] run summon interaction ~ ~-0.5 ~ {width:2f,height:2f,response:1b,Tags:["goldenegg"]}
execute if score .map map = .1 map run execute at @e[tag=eventsspawn,tag=map1] run summon item_display ~ ~0.5 ~ {Glowing:1b,teleport_duration:2,Tags:["goldenegg"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",Count:1b,component:{custom_model_data:2000}}}

execute if score .map map = .2 map run execute at @e[tag=eventsspawn,tag=map2] run summon interaction ~ ~-0.5 ~ {width:2f,height:2f,response:1b,Tags:["goldenegg"]}
execute if score .map map = .2 map run execute at @e[tag=eventsspawn,tag=map2] run summon item_display ~ ~0.5 ~ {Glowing:1b,teleport_duration:2,Tags:["goldenegg"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",Count:1b,component:{custom_model_data:2000}}}

execute if score .map map = .3 map run execute at @e[tag=eventsspawn,tag=map3] run summon interaction ~ ~-0.5 ~ {width:2f,height:2f,response:1b,Tags:["goldenegg"]}
execute if score .map map = .3 map run execute at @e[tag=eventsspawn,tag=map3] run summon item_display ~ ~0.5 ~ {Glowing:1b,teleport_duration:2,Tags:["goldenegg"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",Count:1b,component:{custom_model_data:2000}}}

execute if score .map map matches 4 run execute at @e[tag=eventsspawn,tag=map4] run summon interaction ~ ~-0.5 ~ {width:2f,height:2f,response:1b,Tags:["goldenegg"]}
execute if score .map map matches 4 run execute at @e[tag=eventsspawn,tag=map4] run summon item_display ~ ~0.5 ~ {Glowing:1b,teleport_duration:2,Tags:["goldenegg"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",Count:1b,component:{custom_model_data:2000}}}

execute if score .map map matches 5 run execute at @e[tag=eventsspawn,tag=map5] run summon interaction ~ ~-0.5 ~ {width:2f,height:2f,response:1b,Tags:["goldenegg"]}
execute if score .map map matches 5 run execute at @e[tag=eventsspawn,tag=map5] run summon item_display ~ ~0.5 ~ {Glowing:1b,teleport_duration:2,Tags:["goldenegg"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:white_dye",Count:1b,component:{custom_model_data:2000}}}

item replace entity @e[tag=goldenegg,type=item_display] container.0 with white_dye[custom_model_data=2000] 1

tellraw @a {"text":"A giant golden egg has appeared !","color":"gold","bold":false}


schedule function cf:events/goldenegg/noegg 25s