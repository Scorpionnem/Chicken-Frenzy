tellraw @a[team=!spectate] [{"text":"Not enough players !","color":"red"},{"text":" [Start anyways ?  ]","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"Start the game"}]},"clickEvent":{"action":"run_command","value":"/trigger startanyways"}}]
tellraw @s[team=spectate] {"text": "You are in spectator !","color": "red"}
scoreboard players enable @a[team=!spectate] startanyways
playsound block.note_block.didgeridoo player @a