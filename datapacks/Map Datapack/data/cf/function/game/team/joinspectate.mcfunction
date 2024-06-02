team join spectate @s
#execute as @s at @s run function cf:game/start/notready
tellraw @a {"text":"","color":"white","extra":[{"selector":"@s"},{"text":" is now spectating"}]}
playsound minecraft:entity.chicken.death player @s