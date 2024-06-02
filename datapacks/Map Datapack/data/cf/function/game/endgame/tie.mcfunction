execute as @a run title @s title {"text":"Its a tie !","color":"white","bold":true}
item replace entity @e[tag=winnercup] container.0 with paper[custom_model_data=2015]
team modify red prefix ""
team modify blue prefix ""
function cf:game/spawntrophy/notrophy
schedule function cf:game/endgame/tielogo 1s
