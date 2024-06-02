scoreboard players set @s carrotstick 0
scoreboard players set @s sneak 0
item replace entity @s[gamemode=!creative] weapon.mainhand with air
particle end_rod ~ ~1 ~ 1 1 1 0 10 normal
scoreboard players set @s timer 400
execute as @a[scores={sneak=1..},tag=!ride] run scoreboard players set @s sneak 0
summon chicken ~ ~ ~ {Tags:["ride"],Team:"ride",Invulnerable:1b}
summon wandering_trader ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"ride",Tags:["ride"],Attributes:[{Name:generic.scale,Base:0.8}],Offers:{},HandItems:[{id:"minecraft:air",count:1},{}]}
summon marker ~ ~ ~ {Tags:["ride"],Team:"ride"}
tag @e[type=chicken,sort=nearest,limit=1] add new
tag @e[type=wandering_trader,sort=nearest,limit=1] add new
tag @e[type=marker,sort=nearest,limit=1] add new
tag @s add ride
tag @s add new
scoreboard players reset @s howmanychickens
scoreboard players add .chickencount howmanychickens 1
scoreboard players operation @e[type=chicken,tag=new] howmanychickens = .chickencount howmanychickens
scoreboard players operation @e[type=wandering_trader,tag=new] howmanychickens = .chickencount howmanychickens
scoreboard players operation @e[type=marker,tag=new] howmanychickens = .chickencount howmanychickens
scoreboard players operation @e[type=player,tag=new] howmanychickens = .chickencount howmanychickens
tag @e remove new
execute as @s run attribute @e[type=chicken,sort=nearest,limit=1] minecraft:generic.scale base set 2
ride @s mount @e[type=chicken,sort=nearest,limit=1]