execute if score @s lock_id matches 0.. run function cf:lock/unlock_riding

summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["lock","new"]}

scoreboard players add .global lock_id 1
scoreboard players operation @e[type=armor_stand,tag=new] lock_id = .global lock_id
scoreboard players operation @s lock_id = .global lock_id

tag @e remove new