playsound minecraft:ui.button.click ambient @s
item replace entity @e[tag=startbutton] container.0 with paper[custom_model_data=2016]
particle end_rod -27 7 12 0.2 0.2 0.2 0.1 5 normal
function cf:game/start/trytostart
schedule function cf:interaction/resetbutton 4t
