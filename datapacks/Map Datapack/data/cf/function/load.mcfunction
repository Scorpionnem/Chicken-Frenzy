#Adds all scoreboards and teams just in case, will be removed later on
scoreboard objectives add feathers dummy
scoreboard objectives add timer dummy
scoreboard objectives add timer2 dummy
scoreboard objectives add steps dummy
scoreboard objectives add score dummy
scoreboard objectives add score2 dummy
scoreboard objectives add carrotstick used:carrot_on_a_stick
scoreboard objectives add lock_id dummy
scoreboard players set @a feathers 0
scoreboard objectives add Death deathCount
scoreboard objectives add chicken minecraft.killed:minecraft.chicken
scoreboard players set .1 feathers 1
scoreboard objectives add playercount dummy
scoreboard players set .playercount playercount 0
scoreboard players set .2 playercount 2
scoreboard players set .1 playercount 1
scoreboard players set .bluecount playercount 0
scoreboard players set .redcount playercount 0
scoreboard players set .readycount playercount 0
scoreboard objectives add test dummy
scoreboard objectives add howmanychickens dummy
scoreboard players set .chickencount howmanychickens 0
scoreboard players set .20 timer2 20
scoreboard players set .0 playercount 0
scoreboard players set .0 timer 0
scoreboard players set .1 timer 1
scoreboard players set .6000 timer 6000
scoreboard players set .200 timer 200
scoreboard players set .Red score 0
scoreboard players set .Blue score 0
scoreboard objectives add ylevel dummy
scoreboard objectives add cooldown dummy
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add random dummy
scoreboard players set .random random 0
scoreboard players set .1 random 1
scoreboard players set .2 random 2
scoreboard players set .3 random 3
scoreboard objectives add buttonsel dummy
scoreboard objectives add buttonselblue dummy
scoreboard objectives add settings dummy
scoreboard objectives add startanyways trigger
scoreboard objectives add map dummy
scoreboard players set .1 map 1
scoreboard players set .2 map 2
scoreboard players set .3 map 3
scoreboard objectives add game dummy
scoreboard objectives add fungus minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add killcount playerKillCount
scoreboard objectives add tutorial dummy
scoreboard objectives add goldenegg dummy
scoreboard objectives add bye minecraft.custom:minecraft.leave_game
scoreboard players set .start settings 0
gamerule doMobSpawning false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false


tag @a remove fadetime

team add red
team modify red color red
team modify red nametagVisibility always

team add blue
team modify blue color blue
team modify blue nametagVisibility always

team add neutral

team add spectate


#attribute @e[type=minecraft:shulker,limit=1] minecraft:generic.scale base set 0.27


tellraw @a "Pack loaded !"