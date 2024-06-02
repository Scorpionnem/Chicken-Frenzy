team join red @s
#execute as @s[tag=!ready] at @s run function cf:game/start/notready
#execute as @s[tag=ready] at @s run function cf:game/start/notready
tellraw @a {"text":"","color":"red","extra":[{"selector":"@s"},{"text":" joined red team"}]}
#give @s carrot_on_a_stick{display:{Name:'{"text":"Ready","color":"green","bold":true,"italic":false}'},CustomModelData:1007,customTag:7} 1
playsound minecraft:entity.chicken.death player @s
item replace entity @s armor.head with minecraft:leather_helmet[dyed_color={rgb:16711680},enchantment_glint_override=false,enchantments={levels:{'minecraft:binding_curse':1},show_in_tooltip:false},unbreakable={}]