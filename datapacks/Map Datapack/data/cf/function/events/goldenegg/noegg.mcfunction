execute at @e[tag=eventsspawn] run particle flash ~ ~ ~ 0 0 0 1 0 normal
execute at @e[tag=eventsspawn] run playsound entity.generic.explode ambient @a ~ ~ ~ 5
execute at @e[tag=eventsspawn] run particle end_rod ~ ~1 ~ 0.4 0.4 0.4 0.1 20 normal
kill @e[tag=goldenegg]
scoreboard players set .state goldenegg 0
