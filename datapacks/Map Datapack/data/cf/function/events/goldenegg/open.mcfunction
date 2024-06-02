schedule clear cf:events/goldenegg/noegg
kill @e[tag=goldenegg]
particle flash ~ ~ ~ 0 0 0 1 0 normal
playsound entity.generic.explode ambient @a ~ ~ ~ 5
particle end_rod ~ ~1 ~ 0.4 0.4 0.4 0.1 20 normal
execute as @s[team=red] run scoreboard players add @a[team=red] feathers 5
execute as @s[team=blue] run scoreboard players add @a[team=blue] feathers 5
scoreboard players set .state goldenegg 0
function cf:events/wichevent