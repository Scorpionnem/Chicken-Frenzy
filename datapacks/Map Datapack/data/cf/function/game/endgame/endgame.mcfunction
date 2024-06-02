function cf:events/goldenegg/noegg
function cf:game/scores/bluescore
function cf:events/moon/day
item replace entity @e[tag=startbutton] container.0 with paper[custom_model_data=2017]
scoreboard players set .start settings 0
function cf:game/scores/redscore
gamerule fallDamage false
execute as @a run attribute @s minecraft:generic.fall_damage_multiplier base set 1
tag @a remove winner
tag @a remove give
function cf:game/endgame/score
tellraw @a [{"text":"Red team finished with a score of ","bold":true,"color":"red"},{"score":{"name":".Red","objective":"score"}}]
tellraw @a [{"text":"Blue team finished with a score of ","bold":true,"color":"blue"},{"score":{"name":".Blue","objective":"score"}}]
execute as @a[tag=respawn] run function cf:game/respawn

execute as @s[tag=ride] run function cf:abilities/giantchicken/isriding

execute as @a run function cf:abilities/size/normal

kill @e[tag=decoymarker]

kill @e[type=chicken,tag=!spawnchicken]

kill @e[type=item]

tag @a remove game

xp set @a 0 levels
xp set @a 0 points
effect clear @a

scoreboard players set .game game 0

tp @a 50 22 13 90 -40

kill @e[type=item]

spawnpoint @a -31 6 16

clear @a

tag @a remove ready

execute as @a[tag=frozen] run function cf:traps/unfreeze

tag @a remove chicken

scoreboard players set .ingame playercount 0

scoreboard players set .timer timer 0

tag @a add lobby

gamemode adventure @a[gamemode=!adventure]

bossbar set minecraft:time visible false
schedule clear cf:game/ingame/timer/time
schedule clear cf:events/random
team modify blue nametagVisibility always
team modify red nametagVisibility always
schedule function cf:game/endgame/tpback 10s

execute if score .random map matches 1 run scoreboard players set .map map 6


#execute as @a[team=red] run function cf:game/start/ready
#execute as @a[team=blue] run function cf:game/start/ready


stopsound @a record
execute as @a run scoreboard players set .music music 0
execute as @a run scoreboard players set @s spawnmusic 200

schedule function cf:game/endgame/goat 1s