execute as @a[team=red] run title @s title {"text":"You win !","color":"gold","bold":true}
execute as @a[team=blue] run title @s title {"text":"You lost !","color":"dark_red","bold":true}
item replace entity @e[tag=winnercup] container.0 with paper[custom_model_data=2014]
tag @a[team=red] add winner
#team modify red prefix {"text":" ","color":"white"}
team modify blue prefix ""
function cf:game/spawntrophy/redtrophy
schedule function cf:game/endgame/redfw 1s
