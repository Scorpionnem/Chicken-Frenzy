tag @s add processdecoy
summon marker ~ ~ ~ {Tags:["decoymarker"]}

ride @e[type=marker,tag=decoymarker,limit=1,sort=nearest] mount @e[type=chicken,sort=nearest,limit=1,tag=processdecoy]