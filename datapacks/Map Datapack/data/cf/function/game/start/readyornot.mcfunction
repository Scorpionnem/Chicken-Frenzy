
execute if score .readycount playercount >= .playercount playercount run function cf:game/start/enoughblue
execute if score .readycount playercount < .playercount playercount run function cf:game/start/cantstartready