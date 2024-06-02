scoreboard players set .Blue score 0


#scoreboard players operation .Blue score += @a[team=blue] score2


execute at @e[tag=markerblue] run execute as @e[distance=..5,type=chicken,tag=notwild] run scoreboard players add .Blue score 5


