execute as @s[tag=ready] run tellraw @a {"text":"","color":"red","extra":[{"selector":"@s"},{"text":" is no longer ready !"}]}
tag @s remove ready
tag @s remove give
tag @s add notready
#playsound minecraft:block.note_block.banjo ambient @s ~ ~ ~ 2 0.1