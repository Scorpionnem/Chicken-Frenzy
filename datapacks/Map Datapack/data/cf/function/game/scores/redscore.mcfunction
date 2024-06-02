scoreboard players set .Red score 0


#scoreboard players operation .Red score += @a[team=red] score2



execute at @e[tag=markerred] run execute as @e[distance=..5,type=chicken,tag=notwild] run scoreboard players add .Red score 5



