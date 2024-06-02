tp @s -31 6 16
scoreboard players set @s bye 0
clear @s
gamemode adventure @s
#execute as @s[tag=!lobby] run function cf:game/team/joinspectate
tag @s remove game