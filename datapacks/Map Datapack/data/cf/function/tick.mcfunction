
#Avoids a bug with text displays
    execute if score .game game matches 1 run execute at @a run function cf:game/ingame/resettext


#Having a chorus in inventory tps in the map storage (DEV ONLY)
    execute if score .game game matches 0 as @a if items entity @s container.* chorus_fruit run function cf:tpchorus


#Custom elytra (chicken wings)
    execute as @a if items entity @s armor.chest elytra run effect give @s slow_falling 1 0 true
    execute as @a if items entity @s armor.chest elytra run effect give @s jump_boost 1 2 true



#Adds music to new players for the lobby
    execute as @a[team=!red,team=!blue,tag=!game,tag=!lobby,team=!spectate] run scoreboard players set @s spawnmusic 50


#Detects player that disconnected and proccess them
    execute if score .game game matches 0 as @a if score @s bye matches 1.. run scoreboard players set @s spawnmusic 50
    execute if score .game game matches 0 as @a if score @s bye matches 1.. run function cf:game/endgame/endgameoffline
    #execute if score .game game matches 1 as @a if score @s bye matches 1.. run function cf:game/respawn
    execute if score .game game matches 1 as @a if score @s bye matches 1.. run function cf:game/killdeco


    execute if score .game game matches 1 run function cf:game/spectateendgame


#Flash egg functions
    execute as @e[type=potion,tag=!process] at @s run function cf:flashegg/prokes
    execute as @e[type=marker,tag=flashy,predicate=!cf:ridingsnowball] at @s run function cf:abilities/flash/eggred
    execute as @e[scores={timer=..0},tag=flash,type=item_display] run function cf:abilities/flash/flash
    execute at @e[tag=flash,type=item_display] run particle block{block_state:glowstone} ~ ~ ~ 0 0.2 0 1 3 normal

#decoy chicken functions
    #execute as @e[type=chicken,tag=!processdecoy,tag=decoy] at @s run function cf:abilities/decoy/process   <--- removed this one cuz I found a better way but keeping it bcs idk
    execute as @e[type=marker,tag=decoymarker,predicate=!cf:ridingchicken] at @s run function cf:abilities/decoy/pop



#Gives saturation to players in the lobby
    execute if score .game game matches 0 run effect give @a[tag=lobby] saturation infinite 1 true


#Gives items to players that didnt get them (lobby)
    execute as @a[tag=!give] run function cf:giveitems/give

#Adds players that dont have any team to the spectate team
    execute as @a[team=!red,team=!blue,tag=!game,tag=lobby,team=!spectate] run function cf:game/team/joinspectate

#Timer function idk why its here
    execute store result bossbar minecraft:time value run scoreboard players get .timer timer


#Feather staff functions    

    execute as @a[team=red,tag=!frozen] if score @s carrotstick matches 1.. if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={customTag:3}] if score @s feathers matches 3.. at @s run function cf:tickred
    execute as @a[team=blue,tag=!frozen] if score @s carrotstick matches 1.. if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={customTag:3}] if score @s feathers matches 3.. at @s run function cf:tickblue


#For the trigger  to start games as a solo
    execute as @a[scores={startanyways=1..},tag=!game] run function cf:game/start/start


execute at @e[tag=scoreblue] run execute as @a[distance=..3,tag=chicken,team=blue] run function cf:game/chickenpoint
execute at @e[tag=scorered] run execute as @a[distance=..3,tag=chicken,team=red] run function cf:game/chickenpoint



#Protects chickens 
    execute at @a[team=blue,gamemode=adventure] run execute as @e[team=blue,type=chicken,distance=..7,tag=!ride,tag=notwild] run effect give @s resistance 1 100 true
    execute at @a[team=red,gamemode=adventure] run execute as @e[team=red,type=chicken,distance=..7,tag=!ride,tag=notwild] run effect give @s resistance 1 100 true

    execute as @e[predicate=cf:resistance,team=red,type=chicken,tag=!ride,tag=notwild] run data merge entity @s {CustomName:""}
    execute as @e[predicate=cf:resistance,team=blue,type=chicken,tag=!ride,tag=notwild] run data merge entity @s {CustomName:""}

    execute as @e[predicate=!cf:resistance,team=red,type=chicken,tag=!ride,tag=notwild] run data merge entity @s {CustomName:""}
    execute as @e[predicate=!cf:resistance,team=blue,type=chicken,tag=!ride,tag=notwild] run data merge entity @s {CustomName:""}

    execute at @a[team=blue,gamemode=adventure] run execute as @e[team=blue,type=chicken,distance=..7,tag=!ride,tag=notwild] run effect give @s glowing 1 100 true
    execute at @a[team=red,gamemode=adventure] run execute as @e[team=red,type=chicken,distance=..7,tag=!ride,tag=notwild] run effect give @s glowing 1 100 true



    execute at @e[tag=markerblue] run team join blue @e[distance=..5,type=chicken,tag=notwild]
    execute at @e[tag=markerred] run team join red @e[distance=..5,type=chicken,tag=notwild]

#Effects for wild chickens
    effect give @e[type=chicken,tag=wild] glowing 1 1 true
    effect give @e[type=chicken,tag=wild] slowness 1 2 true





#Death detection and process
    execute as @a[scores={Death=1..},tag=chicken] at @s run function cf:game/diedchicken
    execute as @a[scores={Death=1..},tag=!chicken] at @s run function cf:game/died

#Makes it so you always have a chicken on you when you catched one / cant have one in ur inv
    execute as @a[tag=chicken] unless items entity @s armor.head paper[minecraft:custom_model_data=2000] run function cf:game/newchicken
    execute as @a[predicate=!cf:offhand,tag=chicken] run function cf:game/newchicken
    execute as @a[tag=chicken] if items entity @s container.* paper run clear @s paper

#Gives the colored helmets to players
    execute as @a[tag=!chicken,team=red] unless items entity @s armor.head minecraft:leather_helmet run item replace entity @s armor.head with minecraft:leather_helmet[dyed_color={rgb:16711680},enchantment_glint_override=false,enchantments={levels:{'minecraft:binding_curse':1},show_in_tooltip:false},unbreakable={}]
    execute as @a[tag=!chicken,team=blue] unless items entity @s armor.head minecraft:leather_helmet run item replace entity @s armor.head with minecraft:leather_helmet[dyed_color={rgb:3604735},enchantment_glint_override=false,enchantments={levels:{'minecraft:binding_curse':1},show_in_tooltip:false},unbreakable={}]



#Functions for the chicken mount (Yes, I use wandering traders to have a "random" way of walking :) )
    execute as @e[type=marker,tag=ride] run function cf:abilities/giantchicken/wandy2
    execute as @e[type=wandering_trader,tag=ride] run function cf:abilities/giantchicken/tp
    execute as @e[type=player,tag=ride] run function cf:abilities/giantchicken/tpmarker

    effect give @e[type=wandering_trader,tag=ride] invisibility infinite 1 true
    effect give @e[type=wandering_trader,tag=ride] speed infinite 6 true
    effect give @e[type=wandering_trader,tag=ride] resistance infinite 100 true
    effect give @e[type=chicken,tag=ride] resistance infinite 100 true
    execute as @a[scores={timer=..1},tag=ride] run function cf:abilities/giantchicken/isriding
    execute at @e[predicate=!cf:chickenriden,tag=ride,type=chicken] run execute as @a[sort=nearest,limit=1,tag=ride] run function cf:abilities/giantchicken/isriding


#Function to tp to the tutorial
    execute if score .game game matches 0 run execute at @e[type=marker,tag=tutorial] as @a[distance=..2] run function cf:tp/tutorial

#Detects kills not that useful it just adds 1 feather per kill
    execute if score .game game matches 1 run execute as @a[scores={killcount=1..}] run function cf:game/kill



#Anti item drop doesnt work flawlessly but its alr
    execute if score .game game matches 1 run execute as @e[type=item,tag=!processed] run data modify entity @s Owner set from entity @s Thrower
    execute if score .game game matches 1 run execute as @e[type=item,tag=!processed] run data modify entity @s PickupDelay set value 0
    execute if score .game game matches 1 run tag @e[type=item] add processed
    execute if score .game game matches 0 run kill @e[type=item]



#No hat for spectators !
execute as @a[tag=!chicken,team=!blue,team=!red] unless items entity @s armor.head air run item replace entity @s armor.head with air


#Team choice
    execute as @a[scores={carrotstick=1..,},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{customTag:5}}}},team=!blue] at @s run function cf:game/team/joinblue
    execute as @a[scores={carrotstick=1..,},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{customTag:6}}}},team=!red] at @s run function cf:game/team/joinred
    execute as @a[scores={carrotstick=1..,},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{customTag:32}}}},team=!spectate] at @s run function cf:game/team/joinspectate


#ready or not buttons :P
    execute as @a[scores={carrotstick=1..,},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{customTag:7}}}},tag=!ready] at @s run function cf:game/start/ready
    execute as @a[scores={carrotstick=1..,},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{customTag:8}}}},tag=!notready] at @s run function cf:game/start/notready










#Biginator / smallinator / freeze end
    execute as @a[scores={timer=..1},tag=big] at @s run function cf:abilities/size/normal
    execute as @a[scores={timer=..1},tag=small] at @s run function cf:abilities/size/normal
    execute as @a[scores={timer=..1},tag=frozen] at @s run function cf:traps/unfreeze
    execute as @a[scores={timer=..1},tag=respawn] at @s run function cf:game/respawn

#Ready / not ready / spectator titles
    execute if score .game game matches 0 run title @a[tag=ready,team=!spectate,tag=lobby] actionbar {"text":"You are ready !","color":"green"}
    execute if score .game game matches 0 run title @a[tag=!ready,team=!spectate,tag=lobby] actionbar {"text":"You are ready!","color":"green"}
    execute if score .game game matches 0 run title @a[team=spectate] actionbar {"text":"You are spectating.","color":"white"}







#Functions for freezing with feather staff
    execute as @a[scores={lock_id=0..},predicate=cf:is_not_riding] at @s run function cf:lock/ride
    execute as @a[tag=frozen,tag=!big,tag=!small] at @s run particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0 2 normal
    execute as @a[tag=frozen,tag=small] at @s run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0 1 normal
    execute as @a[tag=frozen,tag=big] at @s run particle end_rod ~ ~1 ~ 1 1 1 0 2 normal
    execute as @a[tag=frozen] run scoreboard players set @s carrotstick 0
    execute as @a[tag=cooldown,gamemode=!spectator] at @s run particle end_rod ~ ~ ~ 0.5 1 0.5 0 2 normal

#Timer -1 every tick
    scoreboard players remove @e[scores={timer=1..}] timer 1
    scoreboard players remove @e[scores={cooldown=1..}] cooldown 1




#Musics !!!
    execute if score .game game matches 1 run execute if score .music music >= .1 music run scoreboard players remove .music music 1
    execute if score .game game matches 1 run execute if score .music music matches 0 run function cf:zmusics/music

    execute if score .game game matches 0 as @a if score @s spawnmusic matches 1.. run scoreboard players remove @s spawnmusic 1
    execute if score .game game matches 0 as @a if score @s spawnmusic matches 0 run function cf:zmusics/spawnmusic

#Timer again ! (endgame)
    execute if score .timer timer >= .1 timer run scoreboard players remove .timer timer 1
    execute if score .timer timer = .1 timer run function cf:game/endgame/endgame

#cooldown
    tag @e[scores={cooldown=1..}] add cooldown
    tag @e[scores={cooldown=0}] remove cooldown
#Commands for new players
    tag @a[tag=!game] add lobby
    gamemode adventure @a[gamemode=survival]

#Chicken spawn time things
    execute if score .game game = .1 timer run scoreboard players remove .cst2 settings 1
    execute if score .game game = .1 timer run execute if score .cst2 settings = .0 timer run function cf:game/ingame/spawnpoulet



#No death animation for chickens / wandering traders
    execute as @e[type=chicken] run data merge entity @s {DeathTime:19}
    execute if score .game game matches 1 run execute as @e[type=wandering_trader] run data merge entity @s {DeathTime:19}





#bossbar timer calculations
    execute as @a run scoreboard players operation @s timer2 = @s timer
    execute as @a run scoreboard players operation @s timer2 /= .20 timer2
    scoreboard players operation .timer2 timer = .timer timer
    scoreboard players operation .timer2 timer /= .20 timer2



#Some right click detection idk why its here
    execute as @a[scores={carrotstick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{customTag:1}}}},tag=!small] run function cf:abilities/size/small
    execute as @a[scores={carrotstick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{customTag:9}}}},tag=!ride] run execute at @s run function cf:abilities/giantchicken/giantchicken
    execute as @a[scores={carrotstick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{customTag:2}}}},tag=!big] at @s run execute if block ~ ~2 ~ #minecraft:air run function cf:abilities/size/big
    execute as @a[scores={carrotstick=1..}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=1013] run function cf:abilities/decoy/summon






#titles for actionbar

    execute if score .game game matches 1 run execute as @a[tag=frozen,tag=!respawn,tag=game] run title @s actionbar [{"text":"Frozen time: "},{"score":{"objective":"timer2","name":"@s"}},{"text": " "},{"text":" Feathers : "},{"score":{"objective":"feathers","name":"@s"}},{"text": " "}]
    execute if score .game game matches 1 run execute as @a[team=red,tag=!frozen,tag=!respawn,tag=game] run title @s actionbar [{"text":"Feathers : "},{"score":{"objective":"feathers","name":"@s"}},{"text": " "}]
    execute if score .game game matches 1 run execute as @a[team=blue,tag=!frozen,tag=!respawn,tag=game] run title @s actionbar [{"text":"Feathers : "},{"score":{"objective":"feathers","name":"@s"}},{"text": " "}]
    execute if score .game game matches 1 run execute as @a[tag=small,tag=!respawn,tag=game] run title @s actionbar [{"text":"Smallinator time: "},{"score":{"objective":"timer2","name":"@s"}},{"text": " "},{"text":" Feathers : "},{"score":{"objective":"feathers","name":"@s"}},{"text": " "}]
    execute if score .game game matches 1 run execute as @a[tag=big,tag=!respawn,tag=game] run title @s actionbar [{"text":"Biginator time: "},{"score":{"objective":"timer2","name":"@s"}},{"text": " "},{"text":" Feathers : "},{"score":{"objective":"feathers","name":"@s"}},{"text": " "}]
    execute if score .game game matches 1 run execute as @a[tag=respawn,tag=game] run title @s actionbar [{"text":"Respawning in: "},{"score":{"objective":"timer2","name":"@s"}},{"text": " "}]
    execute if score .game game matches 1 run execute as @a[tag=ride,tag=!respawn,tag=game] run title @s actionbar [{"text":"Chicken time : "},{"score":{"objective":"timer2","name":"@s"}},{"text": " "},{"text":" Feathers : "},{"score":{"objective":"feathers","name":"@s"}},{"text": " "}]

#basic size 
    tag @a[tag=!small,tag=!big] add basic



#kills items that we dont want to drop

    execute if score .game game matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:chicken",}}]

    execute if score .game game matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:gunpowder",}}]


    execute if score .game game matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:feather",}},tag=!feather]

    kill @e[type=item,nbt={Item:{id:"minecraft:egg",}}]





#fadetime
    execute as @a[tag=!fadetime] run function cf:game/lobby/fade



#count items at spawn lol
    execute if score .game game matches 0 if score .start settings matches 0 run execute as @a store result score @s items run execute if items entity @s container.* minecraft:carrot_on_a_stick
    execute if score .game game matches 0 if score .start settings matches 0 run execute as @a store result score @s items2 run execute if items entity @s weapon.offhand minecraft:carrot_on_a_stick
    execute if score .game game matches 0 if score .start settings matches 0 run execute as @a run scoreboard players operation @s items += @s items2
    execute if score .game game matches 0 if score .start settings matches 0 run execute as @a if score @s items matches ..2 run function cf:giveitems/give
    execute if score .game game matches 0 if score .start settings matches 0 run execute as @a if score @s items matches 4.. run clear @s



#scores
    execute if score .game game matches 1 run function cf:game/scores/bluescore
    execute if score .game game matches 1 run function cf:game/scores/redscore




#weakness for lobby players
    effect give @a[tag=!game,gamemode=adventure] weakness infinite 2 true

#Fade / tpback
    execute as @a store result score @s ylevel run data get entity @s Pos[1]
    execute as @a[scores={ylevel=..-10},tag=!fade] run function cf:tp/fade
    execute as @a[tag=lobby,scores={ylevel=..-30}] run function cf:tp/tpback
    execute as @a[tag=game,scores={ylevel=..-30}] run function cf:tp/tpbackgame
    effect give @a[tag=lobby] resistance infinite 100 true




#things that we need at the end I think
execute if score .game game matches 1 run kill @e[type=minecraft:experience_orb]
execute if score .game game = .1 map run gamemode spectator @a[tag=!game]
execute if score .game game = .1 map run function cf:game/ingame/resetshop
scoreboard players set @a carrotstick 0
scoreboard players set @a fungus 0