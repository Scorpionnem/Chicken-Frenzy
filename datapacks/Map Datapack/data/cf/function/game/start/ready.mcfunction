tag @s remove notready
tag @s remove give
tag @s add ready
tellraw @a {"text":"","color":"green","extra":[{"selector":"@s"},{"text":" is now ready !"}]}
#playsound minecraft:block.note_block.banjo ambient @s ~ ~ ~ 2 1