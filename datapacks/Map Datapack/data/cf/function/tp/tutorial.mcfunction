title @s times 5t 10t 5t
title @s title ""

tp @s -959 27 -18 -90 0
execute at @s run playsound minecraft:block.grass.break ambient @s
particle block{block_state:hay_block} -27 7 27 0.5 0.5 0.5 10 20 normal
function cf:game/lobby/fade