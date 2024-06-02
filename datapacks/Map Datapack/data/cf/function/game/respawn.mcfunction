gamemode adventure @s
tag @s remove respawn
clear @s
execute as @s run function cf:giveitems/give
scoreboard players set @s bye 0

execute if score .map map = .1 map run execute as @s[team=blue] run tp @s 1081 36 1023
execute if score .map map = .1 map run execute as @s[team=red] run tp @s 986 36 1023

execute if score .map map = .2 map run execute as @s[team=blue] run tp @s -1037 58 -1093
execute if score .map map = .2 map run execute as @s[team=red] run tp @s -1029 58 -953

execute if score .map map = .3 map run execute as @s[team=blue] run tp @s -967 119 991
execute if score .map map = .3 map run execute as @s[team=red] run tp @s -1041 119 993

execute if score .map map matches 4 run execute as @s[team=blue] run tp @s 977 109 -930
execute if score .map map matches 4 run execute as @s[team=red] run tp @s 991 109 -1036

execute if score .map map matches 5 run execute as @s[team=blue] run tp @s -2042.00 94.00 -1910.00
execute if score .map map matches 5 run execute as @s[team=red] run tp @s -2042.00 94.00 -2034.00 