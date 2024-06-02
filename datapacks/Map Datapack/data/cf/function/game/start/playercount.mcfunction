scoreboard players set .playercount playercount 0
execute as @a[team=!spectate] run scoreboard players add .playercount playercount 1



scoreboard players set .bluecount playercount 0
execute as @a[team=blue] run scoreboard players add .bluecount playercount 1

scoreboard players set .speccount playercount 0
execute as @a[team=spectate] run scoreboard players add .speccount playercount 1

scoreboard players set .redcount playercount 0
execute as @a[team=red] run scoreboard players add .redcount playercount 1

scoreboard players set .readycount playercount 0
execute as @a[tag=ready] run scoreboard players add .readycount playercount 1

scoreboard players set .teamcount playercount 0
scoreboard players operation .teamcount playercount = .bluecount playercount
scoreboard players operation .teamcount playercount += .redcount playercount