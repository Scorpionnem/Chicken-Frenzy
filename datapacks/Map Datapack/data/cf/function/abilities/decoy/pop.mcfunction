kill @e[type=marker,limit=1,sort=nearest,tag=decoymarker]
effect give @e[type=chicken,distance=..6] resistance 1 100 true
particle minecraft:explosion_emitter
summon creeper ~ ~ ~ {NoAI:1b,ExplosionRadius:0.1b,Fuse:0,ignited:1b,Tags:["pop"]}
