execute if block ^ ^1 ^1 #cf:air run summon chicken ^ ^1 ^1 {Glowing:1b,Health:0.5f,Tags:["decoy"],Passengers:[{id:"minecraft:marker",Tags:["decoymarker"]}]}
execute unless block ^ ^1 ^1 #cf:air run summon chicken ~ ~ ~ {Glowing:1b,Health:0.5f,Tags:["decoy"],Passengers:[{id:"minecraft:marker",Tags:["decoymarker"]}]}
effect give @e[type=chicken,tag=decoy] slowness infinite 100 true
item replace entity @s weapon.mainhand with air
playsound entity.creeper.primed ambient @a ~ ~ ~