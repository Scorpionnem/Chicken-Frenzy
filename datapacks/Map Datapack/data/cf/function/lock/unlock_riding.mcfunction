scoreboard players operation .search lock_id = @s lock_id
execute as @e[type=armor_stand,tag=lock] if score @s lock_id = .search lock_id run kill @s
scoreboard players reset @s lock_id