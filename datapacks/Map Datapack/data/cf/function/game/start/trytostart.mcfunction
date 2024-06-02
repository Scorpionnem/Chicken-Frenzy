function cf:game/start/playercount
execute if score .playercount playercount >= .2 playercount run function cf:game/start/enoughblue
execute if score .playercount playercount < .2 playercount run function cf:game/start/cantstart
