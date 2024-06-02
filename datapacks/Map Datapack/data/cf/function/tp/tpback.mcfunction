effect give @s slow_falling 1 1 true
tp @s[tag=!game,tag=lobby] -31 6 16
tag @s remove fade

execute if score .game game = .1 timer run tp @s[team=spectate] @r[team=!spectate]