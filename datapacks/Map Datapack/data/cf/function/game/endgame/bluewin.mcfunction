execute as @a[team=blue] run title @s title {"text":"You win !","color":"gold","bold":true}
execute as @a[team=red] run title @s title {"text":"You lost !","color":"dark_red","bold":true}
item replace entity @e[tag=winnercup] container.0 with paper[custom_model_data=2013]
tag @a[team=blue] add winner
#team modify blue prefix {"text":" ","color":"white"}
team modify red prefix ""
function cf:game/spawntrophy/bluetrophy
schedule function cf:game/endgame/bluefw 1s