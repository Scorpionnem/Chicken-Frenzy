
scoreboard objectives remove score2 
scoreboard objectives add score2 dummy
scoreboard objectives setdisplay sidebar score
scoreboard players set @a[gamemode=!spectator] score2 0
scoreboard players set .ingame playercount 1
scoreboard players set @a feathers 0
scoreboard players set @a feathers 5
scoreboard objectives modify score2 displayname "Score "
tag @a remove give
gamerule fallDamage true
scoreboard objectives modify score2 numberformat styled {"color":"gold"}
tag @a remove lobby
tag @a[team=!spectate] remove ready
title @a times 5t 10t 5t






kill @e[type=item]
scoreboard players set .game game 1
#MAP SCORPIONEM
execute if score .map map = .1 map run spawnpoint @a[team=blue] 1081 36 1023
execute if score .map map = .1 map run spawnpoint @a[team=red] 986 36 1023

#MAP REFORTOR
execute if score .map map = .2 map run spawnpoint @a[team=blue] -1037 58 -1093
execute if score .map map = .2 map run spawnpoint @a[team=red] -1029 58 -953

#MAP SCORPIONEM 2
execute if score .map map = .3 map run spawnpoint @a[team=blue] -967 119 991
execute if score .map map = .3 map run spawnpoint @a[team=red] -1041 119 993
execute if score .map map = .3 map run execute as @a run attribute @s minecraft:generic.fall_damage_multiplier base set 0.2



#MAP TWELFTH
execute if score .map map matches 4 run spawnpoint @a[team=blue] 976 109 -929
execute if score .map map matches 4 run spawnpoint @a[team=red] 992 109 -1037

#MAP SMARTY
execute if score .map map matches 5 run spawnpoint @a[team=blue] -2042 94 -1910
execute if score .map map matches 5 run spawnpoint @a[team=red] -2042 94 -2034

scoreboard players operation .timer timer = .gt settings





tag @a[team=!spectate] add game
effect clear @a
clear @a
execute as @a run function cf:game/respawn
#give @a wooden_sword{display:{Name:'{"text":"Chicken net","color":"white","bold":true,"italic":false}'},CustomModelData:3001,Unbreakable:1b} 1
function cf:game/ingame/spawnpoulet
kill @e[type=item]

#spawn blue chicken
execute if score .map map = .1 map run summon chicken 981 36 1021 {Health:1f,Tags:["notwild"]}
execute if score .map map = .2 map run summon chicken -1051 57 -956 {Health:1f,Tags:["notwild"]}
execute if score .map map = .1 map run summon chicken 981 36 1021 {Health:1f,Tags:["notwild"]}
execute if score .map map = .2 map run summon chicken -1051 57 -956 {Health:1f,Tags:["notwild"]}
execute if score .map map = .1 map run summon chicken 981 36 1021 {Health:1f,Tags:["notwild"]}
execute if score .map map = .2 map run summon chicken -1051 57 -956 {Health:1f,Tags:["notwild"]}
execute if score .map map = .3 map run summon chicken -960 122 994 {Health:1f,Tags:["notwild"]}
execute if score .map map = .3 map run summon chicken -960 122 994 {Health:1f,Tags:["notwild"]}
execute if score .map map = .3 map run summon chicken -960 122 994 {Health:1f,Tags:["notwild"]}

execute if score .map map matches 4 run summon chicken 982 109 -925 {Health:1f,Tags:["notwild"]}
execute if score .map map matches 4 run summon chicken 982 109 -925 {Health:1f,Tags:["notwild"]}
execute if score .map map matches 4 run summon chicken 982 109 -925 {Health:1f,Tags:["notwild"]}

execute if score .map map matches 5 run summon chicken -2033 94 -1910 {Health:1f,Tags:["notwild"]}
execute if score .map map matches 5 run summon chicken -2033 94 -1910 {Health:1f,Tags:["notwild"]}
execute if score .map map matches 5 run summon chicken -2033 94 -1910 {Health:1f,Tags:["notwild"]}
#spawn red chicken

execute if score .map map = .1 map run summon chicken 1087 36 1020 {Health:1f,Tags:["notwild"]}
execute if score .map map = .2 map run summon chicken -1015 57 -1090 {Health:1f,Tags:["notwild"]}
execute if score .map map = .1 map run summon chicken 1087 36 1020 {Health:1f,Tags:["notwild"]}
execute if score .map map = .2 map run summon chicken -1015 57 -1090 {Health:1f,Tags:["notwild"]}
execute if score .map map = .1 map run summon chicken 1087 36 1020 {Health:1f,Tags:["notwild"]}
execute if score .map map = .2 map run summon chicken -1015 57 -1090 {Health:1f,Tags:["notwild"]}
execute if score .map map = .3 map run summon chicken -1048 122 990 {Health:1f,Tags:["notwild"]}
execute if score .map map = .3 map run summon chicken -1048 122 990 {Health:1f,Tags:["notwild"]}
execute if score .map map = .3 map run summon chicken -1048 122 990 {Health:1f,Tags:["notwild"]}

execute if score .map map matches 4 run summon chicken 986 109 -1041 {Health:1f,Tags:["notwild"]}
execute if score .map map matches 4 run summon chicken 986 109 -1041 {Health:1f,Tags:["notwild"]}
execute if score .map map matches 4 run summon chicken 986 109 -1041 {Health:1f,Tags:["notwild"]}

execute if score .map map matches 5 run summon chicken -2052 94 -2035 {Health:1f,Tags:["notwild"]}
execute if score .map map matches 5 run summon chicken -2052 94 -2035 {Health:1f,Tags:["notwild"]}
execute if score .map map matches 5 run summon chicken -2052 94 -2035 {Health:1f,Tags:["notwild"]}

schedule function cf:game/ingame/timer/calculs 1t
execute if score .randomevents settings matches 1 run schedule function cf:events/random 30s

tp @a[team=spectate] @r[team=!spectate]